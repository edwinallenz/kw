class ControlCalidad < ActiveRecord::Base
  belongs_to :participante
  belongs_to :orden_produccion
  belongs_to :articulo
  belongs_to :tecnico
end
