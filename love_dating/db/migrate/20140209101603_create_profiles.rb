class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :gender
      t.string :looking_for
      t.date :date_of_birth 
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end