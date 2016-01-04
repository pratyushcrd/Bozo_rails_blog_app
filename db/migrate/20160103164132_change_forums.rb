class ChangeForums < ActiveRecord::Migration
  def change
  	change_column :forums, :post, :text
  end
end
