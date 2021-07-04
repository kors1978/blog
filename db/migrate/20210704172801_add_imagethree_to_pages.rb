class AddImagethreeToPages < ActiveRecord::Migration[6.1]
  def change
  	add_column :pages, :imagethree, :string
  end
end
