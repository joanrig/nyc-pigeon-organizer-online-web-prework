require "pry"

def nyc_pigeon_organizer(data)
  pigeons_list = {}

  #attrib_key = label: color, gender or lives
  #attrib_val = ie: purple or male or subway
  #array = array of pigeon names
  #name = pigeon name
  
  data.each do |attrib_key, attrib_hash|
    attrib_hash.each do |attrib_val, array|
      array.each do |pigeon|
      
  #gives new hash 7 keys, each with pigeon name    
        if !pigeons_list.has_key?(pigeon)
          pigeons_list[pigeon] = {} 
          
  #adds attrib_ keys & vals to existing pigeons, but still captures only one color per pigeon.
        else 
          pigeons_list[pigeon][attrib_key] = attrib_val.to_s
        end
      end
    end
  end
  pigeons_list
  binding.pry
end
  