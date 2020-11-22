

class CashRegister

    attr_accessor :total, :discount, :price, :items
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end
  
    def add_item(item, price, quantity = 1)
      @price = price * quantity
      @total += @price 
      if quantity > 1
        counter = 0
        while counter < quantity
          @items.push(item)
          counter += 1
        end
      else
        @items.push(item)
      end
    end
  
    def apply_discount
      if @discount > 0
        @off = (price * discount)/100
        @total -= @off
        "After the discount, the total comes to $#{total}."
      else
         "There is no discount to apply."
      end
    end
  
    def void_last_transaction
    @total -= @price 
    return @total
  
    end
  
  end
  