class Kid < ActiveRecord::Base
  has_many :purchases
  has_many :toys, through: :purchases

  def make_purchase(toy:, quantity:)
    Purchase.create(toy: toy, kid: self, quantity: quantity)
  end

  def all_purchase_info
    purchases.map(&:info)
  end

  def throw_out(toy:)
    purchases.decrement_counter(:quantity, purchases.find_by(toy: toy, kid: self).id)
  end

  def throw_all_out(toy:)
    purchases.find_by(toy: toy).destroy
  end
end