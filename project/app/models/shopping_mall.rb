class ShoppingMall < ActiveRecord::Base
  belongs_to :City
  belongs_to :Country
  has_many :stores
  has_many :reviews
end
