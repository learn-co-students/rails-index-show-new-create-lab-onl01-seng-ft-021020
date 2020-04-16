class AddCouponCodeAndStoreToCoupons < ActiveRecord::Migration[5.0]
  def change
    add_column :coupons, :coupon_code, :text
    add_column :coupons, :store, :text
  end
end
