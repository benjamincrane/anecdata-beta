json.array!(@answers) do |answer|
  json.extract! answer, :id, :number
  json.url answer_url(answer, format: :json)
end
