class AddPeriodToUserAccess < ActiveRecord::Migration[6.0]
  def change
    add_column :user_accesses, :period, :date, null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
