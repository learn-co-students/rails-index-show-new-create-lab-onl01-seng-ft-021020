class Coupon < ActiveRecord::Base
    def index
        @coupons = Coupon.all
    end
end