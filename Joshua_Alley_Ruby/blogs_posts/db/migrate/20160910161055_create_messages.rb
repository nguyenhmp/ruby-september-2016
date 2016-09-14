class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :post, index: true
      t.string :author
      t.string :message

      t.timestamps
    end
  end
end
