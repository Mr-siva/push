class AddColumnToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :email, :string, null: false, default: ""
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
