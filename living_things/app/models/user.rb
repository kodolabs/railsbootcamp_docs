class User < ActiveRecord::Base
  has_many :adverts, :dependent => :destroy
  has_many :likes, :foreign_key => :fan_id, :dependent => :delete_all
  has_many :favorite_adverts, :through => :likes, :source => :advert

  attr_accessible :email, :name
end
