class AddImagetwoToPages < ActiveRecord::Migration[6.1]
  def change
  	add_column :pages, :imagetwo, :string
  end
end
