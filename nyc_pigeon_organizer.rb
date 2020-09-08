def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        #if theo is already in the list, adds a category and its value as in color: purple
        if organized_pigeons[pigeon][attribute_category] 
          organized_pigeons[pigeon][attribute_category].push(attribute)
        else if organized_pigeons[pigeon]
          organized_pigeons[pigeon] = {}
          organized_pigeons[pigeon][attribute_category] = [attribute]
        end
    
      end
      
    end
    
  end

  organized_pigeons
  
end