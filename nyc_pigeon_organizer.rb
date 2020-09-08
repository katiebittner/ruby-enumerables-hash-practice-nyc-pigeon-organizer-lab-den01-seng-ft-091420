def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        if organized_pigeons[pigeon]
          if organized_pigeons[pigeon][attribute_category]
            organized_pigeons[pigeon][attribute_category].push(attribute)
          else 
            organized_pigeons[pigeon][attribute_category] = [attribute]
          end
        else 
          organized_pigeon[pigeon] = {
            attribute_category: attribute
          }
        end
        
      end
    end
  end
  organized_pigeons
end