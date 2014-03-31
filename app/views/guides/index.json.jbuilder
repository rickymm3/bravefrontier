json.array!(@guides) do |guide|
  json.extract! guide, :id, :subject, :content, :user_id, :approved
  json.url guide_url(guide, format: :json)
end
