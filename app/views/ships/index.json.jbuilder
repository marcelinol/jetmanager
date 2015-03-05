json.array!(@ships) do |ship|
  json.extract! ship, :id, :name, :kind, :registration_number, :insurance_due_date, :registration_due_date
  json.url ship_url(ship, format: :json)
end
