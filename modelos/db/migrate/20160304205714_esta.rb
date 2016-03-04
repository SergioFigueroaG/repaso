class Esta < ActiveRecord::Migration
  def change
  	remove_column :Estudiantes, :part_number, :string
  end
end
