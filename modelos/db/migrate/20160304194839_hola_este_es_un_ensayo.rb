class HolaEsteEsUnEnsayo < ActiveRecord::Migration
  def change
  	add_column :Estudiantes, :part_number, :string
  end
end
