json.array!(@beetles) do |beetle|
  json.extract! beetle, :id, :nickname, :zip, :type, :year, :color, :engine, :interior, :picture
  json.url beetle_url(beetle, format: :json)
end
