json.array!(@brave_bursts) do |brave_burst|
  json.extract! brave_burst, :id, :name, :num_hits, :element
  json.url brave_burst_url(brave_burst, format: :json)
end
