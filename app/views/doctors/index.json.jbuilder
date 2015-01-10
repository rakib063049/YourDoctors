json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :title, :degrees, :education, :specialist, :age, :email, :phone, :address, :city, :thana_id, :district_id, :country, :about_me, :type
  json.url doctor_url(doctor, format: :json)
end
