class CustomersController < ApplicationController
  before_filter :is_admin?
  skip_before_filter :is_admin?, only: [:show, :index, :new, :edit, :create] 

  def index
   @customer_list = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
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

  def update
    @customer = Customer.find(params[:id])
    
    if @customer.update(params[:customer].permit(:name, :nameofbusiness, :contactnumber, :contactemail, :typeofbusiness, :pickuplocation))
      redirect_to @customer
    else
      render 'edit'
    end
  end

  def show
   @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path
  end
end
