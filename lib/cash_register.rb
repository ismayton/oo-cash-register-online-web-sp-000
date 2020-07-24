class CashRegister 
  attr_accessor :total, :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def total 
    @total 
  end 
  
  def add_item(item, quantity = 1)
    quantity.times do
      @items << item
    end
  end 
  
  def apply_discount
    puts "Success!"
  end

  def items
    @items 
  end
  
end

