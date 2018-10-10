require 'pry'

class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = nil)
    @items = []
    @discount = discount
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    while quantity > 0
      @items << item
      quantity -= 1
    end
    @last_transaction = price
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
