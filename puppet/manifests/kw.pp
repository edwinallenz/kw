$user = 'vagrant'
$port = 3000
$application = 'kw'
$app_dir     = 'kw'
$procfile    = 'Profile'
$gemfile_path      = "/home//vagrant/accounts/Gemfile"
$gem_path          = "/home/${user}/.gem"
$db_name = 'kw_database'
$db_user = 'vagrant'
$gems_path = '~/.gem'
$working_dir  = '/vagrant'

Exec {
    path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
  }

  exec { "apt-get update" :
    command => "apt-get update"
  }


  package {['beanstalkd',
            'build-essential',
            'tmux',
            'tig',
            'libpq-dev',
            'emacs']:
    ensure => installed,
  }

  class { 'bluekite_ruby':
    }->  # use 2.0

    exec { 'update-ruby-gems':
      command       => 'gem update --system',
      logoutput => true,
  }->
  package {'bundler':
    ensure   => installed,
    provider => gem,
  }

  package {['postgresql-9.1', 'postgresql-9.2']:
    ensure => 'purged'
  }->

  class { 'postgresql::globals':
    manage_package_repo => true,
    version             => '9.3',
    encoding            => 'UTF8',
    locale              => 'en_US.utf8'
  }->

  class { 'postgresql::server':
    encoding           => 'UTF8',
    locale             => 'en_US.utf8',
    postgres_password  => $db_user,
  }->

  postgresql::server::role { $user:
    password_hash => postgresql_password($user,$user),
    createrole    => true,
    superuser     => true
  }->

   exec { 'fix-psql-encoding':
    cwd       => "/vagrant/puppet/scripts",
    command   => 'sh utf.sh',
    logoutput => true,
    user      => $user,
    require   => Class['postgresql::server'],
    unless    => "psql template1 -c 'SHOW SERVER_ENCODING' | grep -q UTF8"
  }->

   # for rake db:create
  postgresql::server::database_grant { 'postgres':
    privilege => 'ALL',
    db        => 'postgres',
    role      => $user,
  }->

  postgresql::server::db { $db_name:
    user     => $user,
    password => postgresql_password( $db_user, $db_user )
  }

  file { 'application-environment':
      path    => '/etc/environment',
      content => inline_template( "RAILS_ENV=${environment}\nRAILS_PID=tmp/pids/${pid}\nPORT=${port}" )
    }->

    exec { 'kw-bundle-install':
      command     => "bundle install --path ${gems_path}",
      cwd         => $working_dir,
      unless      => 'bundle check',
      user        => $user,
      group       => $user,
      logoutput   => true,
      timeout     => 1800,
      environment => "HOME=/home/${user}"
      }
