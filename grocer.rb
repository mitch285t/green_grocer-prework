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
 
 cart.each do |attribute|
   
        
end
end 
end 
end 

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
