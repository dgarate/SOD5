class CreateUserResponsibilities < ActiveRecord::Migration[6.0]
  def change
    create_table :user_responsibilities do |t|
      t.references :user_access, null: false, foreign_key: true
      t.references :responsibility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
