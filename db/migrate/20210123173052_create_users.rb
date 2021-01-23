class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :superadmin_role, default: false
      t.boolean :supervisor_role, default: false
      t.boolean :user_role, default: true
      t.date :end_date
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
