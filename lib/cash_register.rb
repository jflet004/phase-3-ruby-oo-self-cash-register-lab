require "pry"

class CashRegister
  attr_accessor :discount, :total, :items, :transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.transaction = price*quantity
    self.total += self.transaction
    quantity.times{self.items << title}
  end

  def apply_discount
    if self.discount != 0
      discount_percentage = self.discount.to_f / 100
      self.total -= (self.total.to_f * discount_percentage)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.transaction
  end


end

