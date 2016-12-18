json.extract! fud_entry, :id, :fud, :anonymous, :created_at, :updated_at
json.url fud_entry_url(fud_entry, format: :json)