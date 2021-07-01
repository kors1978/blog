class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :text
      t.references :page, index: true
      t.timestamps 
    end
  end
end
