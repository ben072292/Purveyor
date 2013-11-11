class CustomerformController < ApplicationController

  def index
    render :partial => "customerform/customerform"
  end

  def list
    @customer = Customer.find(:all)
  end

  def new
    @customer = Customer.new
  end

  def create
    #render text: params[:customerform].inspect
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
