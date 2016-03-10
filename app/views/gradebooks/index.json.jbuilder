json.array!(@gradebooks) do |gradebook|
  json.extract! gradebook, :id, :student_id, :assignment_name, :grade, :date
  json.url gradebook_url(gradebook, format: :json)
end
