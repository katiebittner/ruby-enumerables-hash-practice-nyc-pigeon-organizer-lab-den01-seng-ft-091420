def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        #if theo is already in the list and has a color category, adds an additional color
        if organized_pigeons[pigeon][attribute_category] 
          organized_pigeons[pigeon][attribute_category].push(attribute)
        #if theo is in the list but does not have color category, add the key and adds a value
        else if organized_pigeons[pigeon]
          organized_pigeons[pigeon][attribute_category] = [attribute]
        end
    
      end
      
    end
    
  end

  organized_pigeons
  
end
end