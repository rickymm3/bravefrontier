json.array!(@tools) do |tool|
  json.extract! tool, :id
  json.url tool_url(tool, format: :json)
end
