class CreateSynonyms < ActiveRecord::Migration
  def change
    create_table :synonym do |t|
      t.string :translation, null: false, unique: true
      t.text :description

      t.timestamps
    end
  end
end
