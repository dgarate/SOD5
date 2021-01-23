class CreateConflicts < ActiveRecord::Migration[6.0]
  def change
    create_table :conflicts do |t|
      t.string :name
      t.text :description
      t.date :end_date
      t.references :cycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
