require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  setup do
    #@user = (:one)
    @user = users(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
  end
  include Devise::Test::IntegrationHelpers

  test "login and view myaccount" do
    sign_in users(:one)

    get '/home/myaccount'
    assert_response :success
  end




  test "no access to myaccount if not logged in" do
    get home_myaccount_url
    assert_response :redirect
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select'title', 'HytchHyker'
    assert_select'h1', 'Send us a Message'
    assert_select'p', "Having some trouble getting HytchHyker working? Send us a quick message below and we'll get back to you within 23 seconds."
  end
  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect

    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end
  test "should post request contact" do
    post request_contact_url, params:{name: "Elliot", email: "Elliot@allsafe.com",telephone: "1234567890", message: "Please respond as soon as possible, im having trouble adding trips."}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
  test "should return contact email" do
    mail = ContactMailer.contact_email("Elliot@allsafe.com","Elliot Alderson", "1234567890", @message = "Please respond as soon as possible, im having trouble adding trips.")
    assert_equal ['help@pricel.uk'], mail.to
    assert_equal ['contact@form.ac.uk'], mail.from
  end

end

