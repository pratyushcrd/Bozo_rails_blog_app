class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.string :post
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
