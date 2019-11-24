class UsersController < ApplicationController
  before_action :is_admin
  def index
  end

    def destroy
      @user = User.find(params[:id])
      Trip.where(:driver_id => @user.email).destroy_all
      TripUser.where(:PassengerID => @user.email).destroy_all

      @user.destroy
      redirect_to users_path, notice: 'User deleted.'
    end

  private
  # Use callbacks to share common setup or constraints between actions.
  def is_admin
    if !current_user.is_admin?
      redirect_to home_myaccount_path
    end
  end
end
