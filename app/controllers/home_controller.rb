class HomeController < ApplicationController

    def index
      @trips = Trip.all

      if !current_user.nil?
        @user = current_user.email
        @userid = current_user.__id__
      end
    end

  def contact

  end
  def about

  end
  end

