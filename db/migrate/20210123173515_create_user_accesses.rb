class CreateUserAccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_accesses do |t|
      t.string :username
      t.string :responsibility

      t.timestamps
    end
  end
end
