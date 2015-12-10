class UsersController < ApplicationController
  before_action :set_store
  before_action :set_user, only: [:show, :edit, :update, :destroy]



  # GET /users
  # GET /users.json
  def index
    @users = @store.users.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
  @user = @store.users.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = @store.users.build(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to [@store, @user], notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: [@store, @user] }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to [@store, @user], notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: [@store, @user] }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to store_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Set store that user/users will be associated to
    def set_store
      @store = Store.find(params[:store_id]) 
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = @store.users.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user, :store_id).permit(:first_name, :last_name, :phone_number)
    end
end
