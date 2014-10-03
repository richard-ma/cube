json.array!(@filters) do |filter|
  json.extract! filter, :id, :regex, :type
  json.url filter_url(filter, format: :json)
end
