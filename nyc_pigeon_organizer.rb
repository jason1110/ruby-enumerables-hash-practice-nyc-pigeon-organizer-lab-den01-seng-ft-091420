require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
reorganized_hash = {}
data.each_with_object({}) do |(key, value), new_hash|
#binding.pry
  value.each do |k1, v1|
    v1.each do |name_value|
      if !new_hash[name_value]
       new_hash[name_value] = {}
      end
      if !new_hash[name_value][key]
        new_hash[name_value][key] = []
      end
      reorganized_hash =   new_hash[name_value][key].push(k1.to_s)
    end
  end
end
p reorganized_hash
end
   
nyc_pigeon_organizer(pigeon_data)
