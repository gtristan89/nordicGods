class CLI
    @@continue_exit = ["Continue", "Exit"]
    def self.call
        Scraper.get_gods
        puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
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
        #puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
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
        else 
            puts "Ah you are unwise to reach beyond your means mortal please selecct from what I offer"
            God.list_gods
            get_info_for
        end    
    end    

    def self.valid_selection(selection, data)
        selection.to_i <= 64 &&  selection.to_i > 0
    end    

    def self.display_info_for(selection)
        #puts "Ah yes #{god.name}, a fascinating choice"
        #binding.pry
        god = God.all_gods[selection - 1]
        #binding.pry
        if selection.odd?
            puts "Ah yes #{god.name}, a fascinating choice"
            puts "Gender: #{god.gender}"
            puts "Group: #{god.group}"
            puts "God of: #{god.god_of}"
        else
            puts "Terrific choice mortal"
            puts "Name: #{god.name}"
            puts "Gender: #{god.gender}"
            puts "Group: #{god.group}"
            puts "God of: #{god.god_of}"
        end
        self.list_options
        #puts "#{god.name}"
        #puts "Gender: #{god.gender}"
        #puts "Group: #{god.group}"
        #puts "God of: #{god.god_of}"
        #puts "#{name}"
        #puts "#{god.significance}"
        #puts "#{god.parent}"
        #puts "#{god.spouse}"
        #puts "#{god.offspring}"
    end

    def self.list_options
        #continue_exit = ["Continue", "Exit"]
        #puts "would you like to continue?"
        @@continue_exit.each.with_index { |chosen_path, index| puts "#{index + 1}. #{chosen_path}"}
        #chosen_path = gets.strip.to_i
        #if chosen_path = "1"
        #    puts "yes"
        #    user_begin
        #end
        #exit 1
        #elsif chosen_path = 2
        #    puts "goodbye"
        #    exit 1()
        #end

    end

    def self.get_option
        chosen_path = gets.strip.to_i
        if valid_option = 1
            "hi"
        elsif valid_option = 2
            "goodbye"
        else
            "oh mortal youseem to be mistaken"
            list_options
        end

    end

    def self.valid_option(path)
        path.to_i <= 2 && path.to_i > 0
    end
        
        

end