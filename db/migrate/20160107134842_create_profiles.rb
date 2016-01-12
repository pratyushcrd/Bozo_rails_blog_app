class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :dob
      t.string :hobbies
      t.references :user, index: true
      t.attachment :avatar

      t.timestamps
    end
  end
end
