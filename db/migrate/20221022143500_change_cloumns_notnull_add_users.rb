class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :name, :string, null: false
    change_column :users, :gender, :integer, null: false
    change_column :users, :birthday, :date, null: false
  end
end
