class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :dob, :contactNumber, :vehicleCapacity, :postcode, :numberPlate)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}

  end

  def is_admin
    if current_user.nil?
      redirect_to root_path

    elsif !current_user.is_admin?
      redirect_to home_myaccount_path
    end
  end
end
# t.string "email", default: "", null: false
#t.string "encrypted_password", default: "", null: false
#t.string "reset_password_token"
#t.datetime "reset_password_sent_at"
#t.datetime "remember_created_at"
#t.datetime "created_at", null: false
#t.datetime "updated_at", null: false
#t.integer "UserID"
#t.string "name"
#t.datetime "dob"
#t.string "contactNumber"
#t.integer "vehicleCapacity"
#t.string "postcode"
#t.string "numberPlate"
#t.boolean "is_admin"