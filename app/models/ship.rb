class Ship < ActiveRecord::Base

  belongs_to :customer, :company

end
