json.array!(@what_optional_to_dos) do |what_optional_to_do|
  json.extract! what_optional_to_do, :id, :title, :description, :funtionalities
  json.url what_optional_to_do_url(what_optional_to_do, format: :json)
end
