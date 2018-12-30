"require pry"

def nyc_pigeon_organizer(data)
  pigeons_list = {}

  #attrib_key = color or gender or lives
  #attrib_val = ie: purple or male or subway
  #array = array of pigeon names
  #name = pigeon name
  
  data.each do |attrib_key, attrib_hash|
    attrib_hash.each do |attrib_val, array|
      array.each do |pigeon|
      
  #gives new hash 7 keys, each with pigeon name    
        if !pigeons_list.has_key?(pigeon)
          pigeons_list[pigeon] = {}
        end
        
  #gives each pigeon 3 attrib_keys, color, gender, lives
        if !pigeons_list.has_key?(attrib_key)
          pigeons_list[pigeon][attrib_key] = []
        end
        
  #tries to populate each attrib key with attrib values, entering values as strings .. BUT -- ? -- if pigeon has 2 colors, only one is captured.
  
        if !pigeons_list.has_key?(attrib_val)
          pigeons_list[pigeon][attrib_key]<< attrib_val.to_s
        end
        
          
      end
    end
  end
  pigeons_list
  #binding.pry
end
  