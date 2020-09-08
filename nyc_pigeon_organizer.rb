def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
                #ex. color  - hash    #ex. list of colors and names - hash
  data.each do |attribute_category, attribute_list|
          
                 #ex. purple - hash  #ex. theo peter jr lucky - array
    attribute_list.each do |attribute, pigeons|   
      
      pigeons.each do |pigeon|
      
      if organized_pigeons[pigeon] 
        organized_pigeons[pigeon][attribute_category] = [attribute]
      else
        organized_pigeons[pigeon] = {}
        organized_pigeons[pigeon][attribute_category] = [attribute]
      end
    
  end
    end
    
  end

  organized_pigeons
  
end