class RemoveAuthorFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :author, :string
  end
end
