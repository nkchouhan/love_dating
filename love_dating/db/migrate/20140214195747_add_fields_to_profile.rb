class AddFieldsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :country, :string
    add_column :profiles, :city, :string
    add_column :profiles, :state, :string
    add_column :profiles, :address, :string
    add_column :profiles, :about_me, :string
    add_column :profiles, :about_mymatch, :string
#    add_column :profiles, :user_interest_id, :integer
#    add_column :profiles, :user_language_id, :integer
  end
end
