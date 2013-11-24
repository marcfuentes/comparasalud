class Comune < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region

  has_many :consultations
end
