class ConsultationType < ActiveRecord::Base
  attr_accessible :name, :consultation_id

  belongs_to :consultation
end
