json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :address, :city, :thana_id, :district_id, :country
  json.url hospital_url(hospital, format: :json)
end
