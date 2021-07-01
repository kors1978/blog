class AddImageToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :image, :string
  end
end
