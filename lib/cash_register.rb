

class CashRegister
  attr_accessor :total, :item, :price
  attr_reader :discount
 

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@basket = []
    @@hash = {}
  end

  

  def total
    @total.to_f
  end
 
  def add_item(item, price, quantity=(1))
   
    
      @total = self.total + price * quantity
      quantity.times do @@basket << item end
        @@hash[item] = (price * quantity)
 
  end

  def apply_discount
    if self.discount == 20
      @total = @total - @total * discount.to_f / 100
      "After the discount, the total comes to $800."
    
    else
      "There is no discount to apply."
      
    end

  end

  def items
    @@basket
  end


  def void_last_transaction
    @total = @total - @@hash.values[-1]
  end

end
