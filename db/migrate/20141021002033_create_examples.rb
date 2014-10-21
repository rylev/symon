class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.text :text, null: false
      t.text :translation, null: false
      t.references :word, null: false, index: true
      t.references :synonym, null: false, index: true

      t.timestamps
    end
  end
end
