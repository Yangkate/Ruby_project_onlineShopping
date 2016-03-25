class Promotion < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "130x130#", :list => "240x200#", :show => "200x200#"}, :default_url => "/assets/images/missing.png"
  validates_attachment :image, :presence => true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :Store
end
