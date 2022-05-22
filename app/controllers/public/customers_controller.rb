class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer.params)
      redirect_to customer_path(@customer.id), notice: 'You have updated item succcessfully.'
    else
      render :edit, notice: 'error! Please Try again.'
    end
  end

  def unsubscribe
  end
  
  private

  def customer_params
    params.permit(:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:telephone_number,:email)
  end

end
