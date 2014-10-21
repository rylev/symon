class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :text, null: false, index: true
      t.references :meaning, null: false

      t.timestamps
    end
  end
end
