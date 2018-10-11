require 'pry'

class CashRegister

  attr_accessor :discount, :total, :price, :quantity, :last_transation
  attr_writer :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity

    self.total += price * quantity

    quantity.times do
      @items << title
    end

    self.last_transation = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - ((@discount / 100.0) * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transation
  end

end
