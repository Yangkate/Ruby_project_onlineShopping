class Review < ActiveRecord::Base
  belongs_to :ShoppingMall
  belongs_to :User
end
