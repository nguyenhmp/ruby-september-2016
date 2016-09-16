class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.string :string
      t.string :message
      t.string :text
      t.references :post, index: true

      t.timestamps
    end
  end
end
