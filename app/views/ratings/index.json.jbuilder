json.array!(@ratings) do |rating|
  json.extract! rating, :id, :doctor_id, :patient_id, :number, :comments
  json.url rating_url(rating, format: :json)
end
