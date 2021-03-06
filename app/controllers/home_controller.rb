class HomeController < ApplicationController

  before_action :authenticate_user!, :only => [:myaccount]


  def index
    @trips = Trip.all.take(8)


  end

  def contact

  end

  def about

  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if (email.blank? || !email.match(/\A\S+@.+\.\S+\z/))
           flash[:alert] = I18n.t('home.request_contact.no_email')
    elsif (telephone.blank? || !telephone.match(/\A[0-9\s\-]+\z/))
      flash[:alert] = I18n.t('home.request_contact.no_phone')
    elsif (message.length > 255)
      flash[:alert] = I18n.t('home.request_contact.message_length')
    else # Send an email
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end

  def contact

  end

  def myaccount

  end
end

