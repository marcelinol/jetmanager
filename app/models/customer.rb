class Customer < ActiveRecord::Base
  after_validation :update_fields_complete
  has_many :ships, dependent: :destroy

  def update_fields_complete
    self.fields_complete = check_fields_status
  end

  private
  def check_fields_status
    complete = true
    self.attributes.each do |attr, value|
      complete = false if (value.nil? && attr != 'fields_complete')
    end
    complete
  end


end
