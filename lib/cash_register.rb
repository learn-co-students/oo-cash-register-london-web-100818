class CashRegister

  def initialize(num=0)
    @total = 0
    @discount = num
    @items = []
  end
  
  def discount
    @discount
  end
  
  def total=(total)
    @total = total
  end

  def total 
    @total
  end

  
  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    quantity.times do |i| 
      @items << @title 
    end
    
    self.total += price * quantity
  end 
  
  def apply_discount
    if self.discount > 0
      self.total = self.total - (self.total * self.discount / 100) 
      return  "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def items
   @items
  end
  
  def void_last_transaction 
    self.total -= @price
    
  end  
  
end