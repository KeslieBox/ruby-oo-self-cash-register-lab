
class CashRegister
    attr_accessor :total, :discount, :quantity, :title, :price, :items
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        self.quantity = quantity
        self.title = title
        self.price = price 
        i = 0
        while i < quantity
            self.items << title
            i += 1
        end
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        self.total -= self.total * @discount/ 100
        return "After the discount, the total comes to $#{@total}."    
    end

   def void_last_transaction
        self.total -= price * quantity
   end
end