json.array!(@rates) do |rate|
  json.extract! rate, :id, :new_patient, :old_patient, :doctor_id
  json.url rate_url(rate, format: :json)
end
