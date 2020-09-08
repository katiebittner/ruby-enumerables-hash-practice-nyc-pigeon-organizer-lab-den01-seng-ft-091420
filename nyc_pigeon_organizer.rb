def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        if organized_pigeons[pigeon] == nil
          organized_pigeons[pigeon] = {
            "#{attribute_category}": [attribute.to_s]
          }
        else
          organized_pigeons[pigeon]
          
      end
    end
  end
end
puts organized_pigeons
organized_pigeons
end