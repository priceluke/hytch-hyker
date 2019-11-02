class UsersController < ApplicationController
  def index
  end
    def destroy
      @user = User.find(params[:id])
      Trip.where(:driver_id => @user.email).destroy_all
      TripUser.where(:PassengerID => @user.email).destroy_all

      @user.destroy
      redirect_to users_path, notice: 'User deleted.'
    end
end
