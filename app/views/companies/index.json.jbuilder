json.array!(@companies) do |company|
  json.extract! company, :id, :name, :email, :phone, :address, :cnpj
  json.url company_url(company, format: :json)
end
