class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(total = 0)
    @total = total
    @discount = total
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.each {|item| @items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount

  end

  def void_last_transaction
    self.total = total - last_transaction
  end

end
