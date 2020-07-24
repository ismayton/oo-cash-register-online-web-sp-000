class CashRegister 
  attr_accessor :total, :discount, :total, :items
  @items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def total 
    @total 
  end 
  
  def add_item(item, price, quantity = 1)
    while quantity > 0 do
      @items << item
      quantity -= 1
      @total += price
    end
  end 
  
  def apply_discount
    if @discount = 0 
      return "There is no discount to apply."
    else
      @total = @total.float * (@discount/100)
    end
  end

  def items
    @items 
  end
  
  def void_last_transaction
    @items.pop()
  end
  
end

