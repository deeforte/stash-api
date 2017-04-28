class CreateYarns < ActiveRecord::Migration[5.0]
  def change
    create_table :yarns do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :quantity
      t.integer :yards
      t.string :color
      t.string :project

      t.timestamps
    end
  end
end
