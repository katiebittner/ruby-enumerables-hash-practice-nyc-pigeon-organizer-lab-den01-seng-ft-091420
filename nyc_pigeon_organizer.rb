def nyc_pigeon_organizer(data)
  
  organized_pigeons = {}
  
                #ex. color          #ex. list of colors and pigeon names
  data.each do |attribute_category, attribute_list|
          
                            #ex. purple   #ex. theo peter jr lucky
    attribute_list.each do |attribute, pigeon|    
      if organized_pigeons[pigeon] == nil 
        organized_pigeons[pigeon] = {}
        organized_pigeons[pigeon][attribute] = []
      else
        organized_pigeons[pigeon][attribute] = []
    
    end
    
  end

  organized_pigeons
  
end