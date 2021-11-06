class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :gallery
      t.references :user, null: false, foreign_key: true
      t.integer :estimated_hours
      t.integer :acomplished_hours

      t.timestamps
    end
  end
end
