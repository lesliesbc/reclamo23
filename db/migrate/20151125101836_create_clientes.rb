class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.integer :correo

      t.timestamps
    end
  end
end
