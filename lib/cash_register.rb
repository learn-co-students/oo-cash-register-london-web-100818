class CashRegister

    attr_reader :discount, :items
    attr_accessor :total

    def initialize(discount=nil)
        @total = 0
        @items = []
        @discount = discount
    end

    def add_item(item, amount, quantity=1)
        self.total += amount * quantity
        (1..quantity).each do |num|
            @items << item
        end
        @last_item_amount = amount
    end

    def apply_discount
        if(self.discount == nil)
            "There is no discount to apply."
        else
            decimal = 1 - (self.discount.to_f / 100)
            self.total = (self.total * decimal).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= @last_item_amount
    end






end
