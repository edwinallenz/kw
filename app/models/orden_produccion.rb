class OrdenProduccion < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :articulo
end
