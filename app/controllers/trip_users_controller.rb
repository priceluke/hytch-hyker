class TripUsersController < ApplicationController
  before_action only: [:destroy]

  def destroy

    @trip_user = TripUser.find(params[:id])

    @trip_user.destroy
    respond_to do |format|
      format.html { redirect_to home_myaccount_path, notice: 'Trip user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  before_action :set_trip_user, only: [:show, :edit, :update]

  # GET /trip_users
  # GET /trip_users.json


  # GET /trip_users/1
  # GET /trip_users/1.json
  def show
    before_action :is_admin

  end

  # GET /trip_users/new
  def new
    before_action :is_admin
    @trip_user = TripUser.new
  end

  # GET /trip_users/1/edit
  def edit
  end

  # POST /trip_users
  # POST /trip_users.json
  def create
    @trip_user = TripUser.new(trip_user_params)
    respond_to do |format|
      if @trip_user.save
        format.html { redirect_to edit_trip_user_path(@trip_user), notice: 'Trip user was successfully created.' }
        format.json { render :show, status: :created, location: @trip_user }
      else
        format.html { render :new }
        format.json { render json: @trip_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_users/1
  # PATCH/PUT /trip_users/1.json
  def update
    respond_to do |format|
      if @trip_user.update(trip_user_params)
        format.html { redirect_to home_myaccount_path, notice: 'Trip user was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_user }
      else
        format.html { render :edit }
        format.json { render json: @trip_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_users/1
  # DELETE /trip_users/1.json
  before_action :is_admin
  def index

    @trip_users = TripUser.all

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_user
      @trip_user = TripUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_user_params
      params.permit(:TripID, :PassengerID, :message)
    end


end
