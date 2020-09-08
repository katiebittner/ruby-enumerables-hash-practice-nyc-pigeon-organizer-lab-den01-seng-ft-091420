def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  #ex color (hash)    #ex. purple (array)
  data.each do |attribute_category, attribute_list|
          
    #ex. purple - [peter theo lucky]
    attribute_list.each do |attribute, pigeons|   
      
      #ex. [theo peter lucky]     #ex theo
      pigeons.each do |pigeon|
      
        if organized_pigeons[pigeon] == nil
          organized_pigeons[pigeon] = {}
        else if organized_pigeons[pigeon] && organized_pigeons[pigeon][attribute_category] == nil
          organized_pigeons[pigeon][attribute_category] = Array.new
        end
        organized_pigeons[pigeon][attribute_category].push(attribute.to_s)
      end
    end
  end
end

end