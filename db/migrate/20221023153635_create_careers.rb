class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.integer :industry, null: false
      t.integer :occupation, null: false
      t.integer :company_scale, null: false
      t.integer :position, null: false
      t.date :start_day, null: false
      t.date :end_day, null: false
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
