class CreateUserInterests < ActiveRecord::Migration
  def change
    create_table :user_interests do |t|
      t.integer :profile_id
      t.integer :interest_id
      t.timestamps
    end
  end
end
