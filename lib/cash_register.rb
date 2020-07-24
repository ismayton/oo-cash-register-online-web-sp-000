require "pry"

class CashRegister 
  attr_accessor :total, :discount, :total, :items, :last 
  
  def initialize(discount = 0)
    @total = 0.0
    @items = []
    @last = []
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
      @last << price
    end
  end 
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      total = @total.to_f
      discount_rate = (100.to_f - @discount) / 100.to_f
      after_discount = total * discount_rate
      @total = after_discount.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items 
  end
  
  def void_last_transaction
    @items.pop()
    @total = @last.pop()
    binding.pry
    if @items.size == 0 
      @total = 0 
    end
  end
  
end
