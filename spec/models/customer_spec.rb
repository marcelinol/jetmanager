require 'rails_helper'

describe Customer do

  describe '#update_fields_complete' do

    context 'incomplete customer' do
      !let(:customer) { FactoryGirl.create(:customer) }

      it 'set fields_complete' do
        expect(customer.fields_complete).to_not be_nil
      end

      it 'set fields_complete false' do
        expect(customer.fields_complete).to_not be
      end
    end

    context 'complete customer' do
      !let(:customer) { FactoryGirl.create(:complete_customer) }
      it 'sets fields_complete true' do
        expect(customer.fields_complete).to be
      end
    end
  end

end
