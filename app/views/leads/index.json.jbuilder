json.array!(@leads) do |lead|
  json.extract! lead, :email, :name, :phone
  json.url lead_url(lead, format: :json)
end
