class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      ## カラム追加
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.boolean :is_active, null: false, default: true #登録直後はtrue

      t.timestamps
    end
  end
end
