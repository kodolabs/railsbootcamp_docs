class History < ActiveRecord::Base
  belongs_to :advert

  attr_accessible []
end
