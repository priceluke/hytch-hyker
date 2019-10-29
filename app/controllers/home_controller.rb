class HomeController < ApplicationController

    def index
      @trips = Trip.all

      if !current_user.nil?
        @user = current_user.name
        @userid = current_user.email
      end
    end

  def contact

  end
  def about

  end
  end

