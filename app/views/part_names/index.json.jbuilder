json.array!(@part_names) do |part_name|
  json.extract! part_name, :id, :name, :part_kinds_id
  json.url part_name_url(part_name, format: :json)
end
