class CreateReclas < ActiveRecord::Migration
  def change
    create_table :reclas do |t|
      t.string :reclamo
      t.string :tienda
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
