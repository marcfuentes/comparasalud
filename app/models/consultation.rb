class Consultation < ActiveRecord::Base
  attr_accessible :address, :bond, :pay_price, :phone, :provider, :total_price, :logo, :comune_id

  mount_uploader :logo, LogoUploader

  has_many :consultation_types 

  belongs_to :comune
end
