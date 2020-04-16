class CouponsController < ApplicationController

    def new
        @coupon = Coupon.new 
    end

    def index
        @coupons = Coupon.all 
    end

    def create
        @coupon = Coupon.create(coupon_params)
        if @coupon.save
            redirect_to coupon_path(@coupon)
        else
            render :new 
        end
    end

    def show
        set_coupon
    end

    def edit
        set_coupon
    end

    def update 
        set_coupon
        if @coupon.update(coupon_params)
            redirect_to coupon_path(@coupon)
        else
            render :edit 
        end
    end

    def destroy
        set_coupon
        @coupon.destroy
        redirect_to coupons_path 
    end

    private

        def set_coupon
            @coupon = Coupon.find_by_id(params[:id])
            if !@coupon
                redirect_to coupons_path
            end
        end

        def coupon_params
            params.require(:coupon).permit(:coupon_code, :store)
        end
end

