class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title, null: false
      t.integer :industry, null: false
      t.integer :occupation, null: false
      t.integer :study_method, null: false
      t.date :learn_age, null: false
      t.integer :learn_hour, null: false
      t.text :trigger, null: false
      t.text :ingenuity, null: false
      t.text :result, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
