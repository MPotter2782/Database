json.array!(@part_kinds) do |part_kind|
  json.extract! part_kind, :id, :kind
  json.url part_kind_url(part_kind, format: :json)
end
