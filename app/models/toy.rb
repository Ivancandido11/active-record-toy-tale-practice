class Toy < ActiveRecord::Base
  has_many :purchases
  has_many :kids, through: :purchases

  def self.most_expensive
    find_by(price: Toy.maximum(:price))
  end

  def self.most_popular
    Purchase.find_by(quantity: Purchase.maximum(:quantity)).toy
  end

  def kids_names
    kids.pluck(:name)
  end
end