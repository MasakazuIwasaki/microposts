class AddColumnUserProfile < ActiveRecord::Migration[5.2]
  
  def up
    add_column :users, :profile_message, :string #テーブル名、カラム名、型
    add_column :users, :area, :string
  end
  
  def down
  end
  
end
