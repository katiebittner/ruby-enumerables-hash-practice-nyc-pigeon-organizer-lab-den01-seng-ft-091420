def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      

        organized_pigeons[pigeon] = {}
        if organized_pigeons[pigeon] && organized_pigeons[pigeon][attribute_category] == nil
          puts "Creating new array for " + attribute_category.to_s
          organized_pigeons[pigeon][attribute_category] = Array.new
        end
        organized_pigeons[pigeon][attribute_category].push(attribute.to_s)
      end
    end
  end
puts organized_pigeons
organized_pigeons
end