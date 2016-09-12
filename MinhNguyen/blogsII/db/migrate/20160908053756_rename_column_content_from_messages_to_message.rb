class RenameColumnContentFromMessagesToMessage < ActiveRecord::Migration[5.0]
  def change
  	rename_column :messages, :content, :message
  end
end
