class CreateCycles < ActiveRecord::Migration[6.0]
  def change
    create_table :cycles do |t|
      t.string :name
      t.text :description
      t.date :end_date

      t.timestamps
    end
  end
end
