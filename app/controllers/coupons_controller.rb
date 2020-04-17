require 'pry'
class CouponsController < ApplicationController
 
 def index
   @coupons = Coupon.all
 end
 
 def show
   @coupon = Coupon.find(params[:id])
 end
 
 def new 
  # @coupon = Coupon.new(params)
 end
 
 def create 
 
  #binding.pry
      @coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
        redirect_to coupon_path(@coupon)
 end
 
 
 
  
end