class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :ocupation, :string
    add_column :users, :age, :integer
    add_column :users, :username, :string
    add_column :users, :city, :string
    add_column :users, :last_schoolar_level, :string
    add_column :users, :about_me, :text
    add_column :users, :profile_photo, :string
  end
end
