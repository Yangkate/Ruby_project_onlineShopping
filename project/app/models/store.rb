class Store < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "130x130#", :list => "200x200#", :show => "200x200#"}, :default_url => "/assets/images/missing_:style.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :ShoppingMall
  belongs_to :StoreCategory

  def self.search(query, id)
    #where(:store_name, query) #-> This would return an exact match of the query
    where('store_name iLike ? OR description iLike ?', "%#{query}%", "%#{query}%")
  end
end
