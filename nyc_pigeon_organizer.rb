def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
                #ex. color  - hash    #ex. list of colors and names - hash
  data.each do |attribute_category, attribute_list|
          
                 #ex. purple - hash  #ex. theo peter jr lucky - array
    attribute_list.each do |attribute, pigeon|   
      
      if organized_pigeons[pigeon] == nil 
        organized_pigeons[pigeon] = {}
        organized_pigeons[pigeon][attribute_category] = []
      else
        organized_pigeons[pigeon][attribute_category] = []
      end
    
    end
    
  end

  organized_pigeons
  
end