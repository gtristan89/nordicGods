class CLI
    def self.call
        Scraper.get_gods
        # puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
        # sleep 2
        # puts "I am the God of knowledge and wisdom, the wisest God of all the Aesir."
        # sleep 3
        # puts "Long ago I was sent as a hostage during the Aesir Vanir  War. which is where I was beheaded. and then my head was sent back to Asgard."
        # sleep 6
        # puts "Odin carried my head for many centuries as I would recite secret knowledge and counsel to him."
        # sleep 5
        #get_listed_gods
        #get_info_for
        user_begin
    end

    def self.user_begin
        puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
        God.list_gods
        get_info_for
        
    end


    #def _gods
    #    # will be scraped
#
    #    #@gods = NordicGod::God.all_gods
    #    
    #    NordicGod::God.get_god
    #    
    #end

    def self.get_info_for
        chosen_god = gets.strip.to_i
        if valid_selection(chosen_god.to_i, @gods)
            display_info_for(chosen_god)
        end    
    end    

    def self.valid_selection(selection, data)
        selection.to_i <= 24 &&  selection.to_i > 0
    end    

    def self.display_info_for(selection)
        
        god = God.all_gods[selection - 1]
        puts "#{god.name}"
        #puts "#{name}"
        puts "#{god.significance}"
        puts "#{god.parent}"
        puts "#{god.offspring}"
    end
end