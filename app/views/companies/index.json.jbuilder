json.array!(@companies) do |company|
  json.extract! company, :id, :name, :emailÇstring, :phone, :address, :cnpj
  json.url company_url(company, format: :json)
end
