class ChangeColumnToAllowNull < ActiveRecord::Migration[6.0]
  def change
    change_column :careers, :content,:text, null: true
  end
end
