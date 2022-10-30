class CreateMiddles < ActiveRecord::Migration[6.0]
  def change
    create_table :middles do |t|
      t.references :experience, null: false, foreign_key: true
      t.references :purpose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
