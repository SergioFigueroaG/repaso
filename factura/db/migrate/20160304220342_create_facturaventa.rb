class CreateFacturaventa < ActiveRecord::Migration
  def change
    create_table :facturaventa do |t|
      t.string :nombre_cliente
      t.string :nombre_producto
      t.integer :nit
      t.integer :cedula
      t.float :subtotal
      t.float :total
      t.string :direccion
      t.float :iva
      t.datetime :fecha
      t.string :telefono

      t.timestamps null: false
    end
  end
end
