class CustomerformController < ApplicationController

  def index
    render :partial => "customerform/customerform"
  end

  def new
  end

  def create
    render text: params[:customerform].inspect
  end

  def show
  end
end
