class CreateMeanings < ActiveRecord::Migration
  def change
    create_table :meanings do |t|
      t.string :translation, null: false, unique: true
      t.string :example, null: false

      t.timestamps
    end
  end
end
