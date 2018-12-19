class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.column :id, 'auto_increment'
      t.string :name, null: false

      t.timestamps
    end
  end
end
