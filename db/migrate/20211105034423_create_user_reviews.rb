class CreateUserReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :user_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: { to_table: 'users' }
      t.text :review
      t.integer :ranking

      t.timestamps
    end
  end
end
