json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :age, :email, :phone, :address, :city, :thana_id, :district_id, :country
  json.url patient_url(patient, format: :json)
end
