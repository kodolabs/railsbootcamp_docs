class Advert < ActiveRecord::Base
  belongs_to :user
  has_one :history, :dependent => :delete
  has_and_belongs_to_many :categories
  has_many :likes, :dependent => :delete_all
  has_many :fans, :through => :likes

  validates :headline, :description, :price_in_cents, :presence => true
  validates :headline, :length => { :minimum => 3 }
  validates :description, :length => { :minimum => 40 }
  validates_numericality_of :price_in_cents, :greater_than_or_equal => 0

  scope :free, where(:price_in_cents => 0)
  scope :current, where(:active => true)
  scope :promo, current.free
  scope :by_headline, lambda { |value| where(:headline => value) }

  attr_accessible :active, :description, :headline, :price_in_cents
end
