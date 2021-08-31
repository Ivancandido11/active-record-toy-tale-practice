class Toy < ActiveRecord::Base
  has_many :purchases
  has_many :kids, through: :purchases

end