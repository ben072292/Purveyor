class CustomersController < ApplicationController

  def index
   @customer_list = Customer.find(:all)
  end

  def new
    @customer = Customer.new
  end

  def create
    #render text: params[:customerform].inspect
   @customer = Customer.new(params[:customer].permit(:name, :nameofbusiness, :contactnumber, :contactemail, :typeofbusiness, :pickuplocation))
    if @customer.save
     redirect_to @customer
   else
     render 'new'
   end
  end

  def edit
   @customer = Customer.find(params[:id])
  end

  def show
   @customer = Customer.find(params[:id])
  end
end
