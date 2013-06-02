class Like < ActiveRecord::Base
  belongs_to :fan, :class_name => 'User'
  belongs_to :advert
  attr_accessible []
end
