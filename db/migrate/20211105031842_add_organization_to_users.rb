class AddOrganizationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :organization, :boolean
  end
end
