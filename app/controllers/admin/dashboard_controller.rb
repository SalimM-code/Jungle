class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]


  def show
    @products = Product.all.count
    @category = Category.all.length
  end
end
