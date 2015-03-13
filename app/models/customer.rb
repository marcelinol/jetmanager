class Customer < ActiveRecord::Base

  has_many :ships, dependent: :destroy

  def update_fields_complete
    self.fields_complete = self.attributes.values.include?(nil)
  end

  private
  def self.check_fields_status
    complete = self.fields_complete
    self.attributes.each do |attr, value|
      return false if (value.nil? && attr != 'fields_complete')
    end
    complete
  end


end
