def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
  data.each do |key, value|
    
    value.each do |inner_key, inner_value|
      if organized_pigeons[inner_value] == nil
        organized_pigeons[inner_value] = {}
        organized_pigeons[inner_value][key] = []
      else
        organized_pigeons[inner_value][key] = []
      end
    end
    
  end
  
  organized_pigeons
  
end