class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(total = 0)
    @total = total
    @discount = total
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

  end

  def apply_discount

  end

  def items
    @items
  end

  def void_last_transaction

  end

end
