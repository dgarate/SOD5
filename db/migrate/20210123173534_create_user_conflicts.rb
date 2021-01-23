class CreateUserConflicts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_conflicts do |t|
      t.references :user_access, null: false, foreign_key: true
      t.references :conflict, null: false, foreign_key: true

      t.timestamps
    end
  end
end
