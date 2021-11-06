class CreateProjectReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :project_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.text :review

      t.timestamps
    end
  end
end
