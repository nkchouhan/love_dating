class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def edit
    @profile = current_user.profile
    #@profile.interests.build
  end

  def update
    binding.pry
    puts "test"
  end

  def show
  end

  private
    def profile_params
      #http://stackoverflow.com/questions/20366637/accepts-nested-attributes-for-join-table-of-a-has-many-through-relationship
      #http://stackoverflow.com/questions/18436777/how-should-i-use-rails-and-simple-form-for-nested-resources
      params.require(:profile).permit(:first_name, :last_name, :date_of_birth, user_interests_attributes: [:profile_id, :interest_id])
    end

end
