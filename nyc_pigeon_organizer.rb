def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        if organized_pigeons[pigeon]
            if organized_pigeons[pigeon][attribute_category] == nil
              puts "successfully found a category to be created"
              organized_pigeons[pigeon][attribute_category] = []
            end
            organized_pigeons[pigeon][attribute_category].push(attribute.to_s)
            puts organized_pigeons[pigeon][attribute_category]
        else 
          organized_pigeons[pigeon] = {
            attribute_category: [attribute.to_s]
          }
        end
        
      end
    end
  end
  puts organized_pigeons
end