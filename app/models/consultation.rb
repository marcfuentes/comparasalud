class Consultation < ActiveRecord::Base
  attr_accessible :address, :bond, :pay_price, :phone, :provider, :total_price
end
