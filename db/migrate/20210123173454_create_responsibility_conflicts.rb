class CreateResponsibilityConflicts < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibility_conflicts do |t|
      t.references :responsibility, null: false, foreign_key: true
      t.references :conflict, null: false, foreign_key: true

      t.timestamps
    end
  end
end
