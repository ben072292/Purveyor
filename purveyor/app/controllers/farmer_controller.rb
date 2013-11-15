class FarmerController < ApplicationController

  # GET /farmer
  def index
    @farmers = Farmer.all
  end

  # GET /farmer/1
  def show
  end

  # POST /farmer
  def create
    render text: params[ :farmer].inspect
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
  end

  #PATCH/PUT /admins/1
  def update
    if @farmer.update(params[:farmer].permit(:Bio, :Location, :Picture))
      redirect_to @farmer, notice: 'Admin was successfully updated.'
    else
      render 'edit'
    end
  end

  #DELETE /admins/1
  def destroy
    @farmer.destroy
    redirect_to farmer_path, notice: 'Admin was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions
  def set_farmer
    @farmer = Farmer.find(params[:id])
  end
  
  # Only allow a trusted parameter "white list" through
  def farmer_params
    params.require(:farmer).permit(:Bio, :Location, :Picture)
  end

end
