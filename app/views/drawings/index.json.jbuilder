json.array!(@drawings) do |drawing|
  json.extract! drawing, :description
  json.url drawing_url(drawing, format: :json)
end
