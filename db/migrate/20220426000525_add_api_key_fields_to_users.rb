class AddApiKeyFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :access_token, :string
  end
end