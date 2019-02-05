class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(total = 0)
    @total = total
    @discount = total
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {|item| @items << title}
    self.last_transaction = self.price * self.quantity
  end

  def apply_discount

  end

  def void_last_transaction
    @total = total - last_transaction
  end

end
