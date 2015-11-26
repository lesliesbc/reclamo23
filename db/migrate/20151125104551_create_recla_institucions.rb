class CreateReclaInstitucions < ActiveRecord::Migration
  def change
    create_table :recla_institucions do |t|
      t.references :recla, index: true
      t.references :institucion, index: true

      t.timestamps
    end
  end
end
