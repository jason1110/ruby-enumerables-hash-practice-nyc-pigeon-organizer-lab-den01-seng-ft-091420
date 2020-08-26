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

data.each_with_object({}) do |(key, value), a1|
    a1[value] = "hello"
binding.pry
end

def pull_keys(data)
 get_keys = []
 data.each_with_object({}) do |(key, value), a1| 
    a1[value] = get_keys << key
 end 
 get_keys
end

def pull_values(data)
  get_values = []
  
  data.each_with_object({}) do |(key, value), a1|
   a1[value] = value.each_with_object({}) {|(k1, v1), a2|  get_values << a2[v1] = k1} 
end
 get_values.to_s
end

#combine all three compents into the new hash {name: => {:color => [], :gender => [], :lives => []}}

new_hash = [pull_names(data)][pull_keys(data)][pull_values(data).push]
p new_hash

# pull_names(data)
# pull_keys(data)
# pull_values(data)
end
binding.pry   
nyc_pigeon_organizer(pigeon_data)
