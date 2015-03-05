class Customer < ActiveRecord::Base

  has_many :ships, dependent: :destroy

end
