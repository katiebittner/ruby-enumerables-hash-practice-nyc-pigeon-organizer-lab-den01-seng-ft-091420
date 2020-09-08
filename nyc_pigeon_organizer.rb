def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      if organized_pigeons[inner_value]
        
      else
        organized_pigeons[inner_value] = inner_key
      end
    end
  end
  
  
  
end



if shipping_manifest["top hat"]
  shipping_manifest["top hat"] += 1
else
  shipping_manifest["top hat"] = 1
end