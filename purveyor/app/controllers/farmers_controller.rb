class FarmersController < ApplicationController
  before_filter :is_admin?
  skip_before_filter :is_admin?, only: [:show]

  # GET /farmer
  def index
    @farmers = Farmer.all
  end

  # GET /farmer/1
  def show
   set_farmer
  end

  # POST /farmer
  def create
    @farmer = Farmer.new(farmer_params)

    if @farmer.save
      redirect_to @farmer, notice: 'Farmer was successfully created'
    else
      render action: 'new'
    end
  end

  # GET /farmer/new
  def new
    @farmer = Farmer.new
  end

  # GET /farmer/1/edit
  def edit
  set_farmer
  end

  #PATCH/PUT /admins/1
  def update
    set_farmer
    if @farmer.update(params[:farmer].permit(:name, :nameofbusiness, :contactnumber, :contactemail,:bio, :location, :picture))
      redirect_to @farmer, notice: 'Admin was successfully updated.'
    else
      render 'edit'
    end
  end

  #DELETE /admins/1
  def destroy
    set_farmer
    @farmer.destroy
    redirect_to farmers_path, notice: 'Admin was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions
  def set_farmer
    @farmer = Farmer.find(params[:id])
  end
  
  # Only allow a trusted parameter "white list" through
  def farmer_params
    params.require(:farmer).permit(:bio, :location, :picture, :name, :nameofbusiness, :contactnumber, :contactemail)
  end

end
