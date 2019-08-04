def consolidate_cart(cart)
new_hash = {}
cart.each do |item_hash|
  item_hash.each do |key, value|
   if  new_hash.key?(key)
     new_hash[key][:count] += 1 
   else 
     new_hash[key] = value 
     new_hash[key][:count] = 1 
     end 
   end 
 end 
     new_hash
     end
     
     
     
     
     
def apply_coupons(cart, coupons)
 
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        new_name = "#{coupon[:item]} W/COUPON"
        if cart[new_name]
          cart[new_name][:count] += coupon[:num]
        else
          cart[new_name] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count] -= coupon[:num]
      end
    end
  end
  cart
end	


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
