json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :cellphone, :phone, :address, :rg, :rg_date, :cpf, :mother
  json.url customer_url(customer, format: :json)
end
