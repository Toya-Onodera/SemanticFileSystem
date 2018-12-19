class CreateFileNames < ActiveRecord::Migration[5.2]
  def change
    create_table :file_names do |t|
      t.string :name, null: false # ファイル名
      t.binary :file, null: false # ファイルデータ
      t.text :description, null: true # ファイルについての説明

      t.timestamps
    end
  end
end
