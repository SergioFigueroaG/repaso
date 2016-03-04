class Facturaventum < ActiveRecord::Base
	validates :nombre_cliente, :nombre_producto, :cedula, :subtotal, :total, :direccion, :iva, :fecha, :telefono, presence: true
  
  validates :telefono, length: { minimum: 7 }
  validates :cedula, uniqueness: true
  validates :telefono, numericality: { only_integer: true }
  validates :total, :subtotal, :iva, numericality: { greater_than: 0}
end
