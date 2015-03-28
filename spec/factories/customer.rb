FactoryGirl.define do

  factory :customer do
    name 'first customer'
    email 'first@customer.com'

    factory :complete_customer do
      name 'complete customer'
      email 'complete@customer.com'
      cellphone '00000000'
      phone '11111111'
      address 'Rua do valo'
      rg '4000600'
      rg_date "2015-03-14 00:19:52"
      cpf '123'
      mother 'mama'
      created_at "2015-03-14 00:19:52"
      updated_at "2015-03-14 00:19:52"
    end
  end

end
