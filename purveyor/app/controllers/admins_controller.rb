class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, only: [:new, :create]

  # GET /admins
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  def create
    @admin = Admin.new(admin_params)  
    if @admin.save
      sign_in @admin
      redirect_to @admin, notice: 'Account created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /admins/1
  def update
      if @admin.update(params[:admin].permit(:username, :password))
      redirect_to @admin, notice: 'Account updated.'
    else
      render 'edit'
    end
  end

  # DELETE /admins/1
  def destroy
    @admin.destroy
    redirect_to admins_path, notice: 'Account destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_params
      params.require(:admin).permit(:username, :password, :password_confirmation, :usertype)
    end
end
