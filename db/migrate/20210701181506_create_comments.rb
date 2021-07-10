class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.references :page, index: true
      t.timestamps
    end
  end
end
