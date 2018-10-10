class CashRegister
  attr_accessor :add_item, :apply_discount, :void_last_transaction, :total, :last_transaction
  attr_reader :items, :discount

  def initialize(discount=nil)
    @total = 0
    if discount
      @discount = 20
    end
    @items = []
    @last_transaction = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    price *= quantity
    @total += price
    quantity.times do @items << title
    end
    @last_transaction = price
  end

  def apply_discount
    if discount
      @total = (@total * 0.8).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
