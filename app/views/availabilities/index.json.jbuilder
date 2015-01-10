json.array!(@availabilities) do |availability|
  json.extract! availability, :id, :hospital_id, :start_at, :end_at, :day_off, :doctor_id
  json.url availability_url(availability, format: :json)
end
