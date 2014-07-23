# class AddOmniauthColumnsToUsers < ActiveRecord::Migration
#   def change
#     add_column :users, :provider, :string
#     add_column :users, :uid, :string
#     add_column :users, :name, :string
#   end
# end
class AddOmniauthColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid,      :string, null: false, default: ""
    add_column :users, :provider, :string, null: false, default: ""
    add_column :users, :name,     :string
 
    add_index :users, [:uid, :provider], unique: true
    
    remove_index :users, :email
    remove_index :users, [:uid, :provider]
    change_column :users, :email, :string
    change_column :users, :uid,   :string
    add_index :users, [:email, :uid], unique: true
  end
end
