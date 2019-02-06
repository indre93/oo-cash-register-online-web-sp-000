class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(total = 0)
    @total = total
    @discount = total
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {|item| @items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total - (discount.to_f / 100 * total)) - 16
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = total - last_transaction
  end

end
