class CLI
    
    def self.call
        Scraper.new.get_gods
        puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
        sleep 2
        puts "I am the God of knowledge and wisdom, the wisest God of all the Aesir."
        sleep 3
        puts "Long ago I was sent as a hostage during the Aesir Vanir  War. which is where I was beheaded. and then my head was sent back to Asgard."
        sleep 6
        puts "Odin carried my head for many centuries as I would recite secret knowledge and counsel to him."
        sleep 5
        puts "Now I offer my knowledge to you mortal."
        sleep 3
        user_begin
    end

    def self.user_begin
        
        self.list_gods
        puts "Please select a god with their corresponding number."
        get_info_for
        
    end

    def self.list_gods
        puts ' '
        God.all_gods.each.with_index { |obj, index| puts "#{index + 1}. #{obj.name}"}
    end



    def self.get_info_for
        chosen_god = gets.strip.to_i
        if valid_selection(chosen_god.to_i)
            display_info_for(chosen_god)
        else 
            puts "\nAh you are unwise to reach beyond your means mortal, please selecct from what I offer\n"
            sleep 2
            user_begin
            get_info_for
        end    
    end    

    def self.valid_selection(selection)
        selection.to_i <= 64 &&  selection.to_i > 0
    end    

    def self.display_info_for(selection)
        puts ''
        god = God.all_gods[selection - 1]
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
        sleep 1
        get_option
    end

    def exit
        exit
    end

    def self.get_option
        puts "\nWould you like to see the other Gods? [y/n]\n"
        input = gets.strip.downcase
        
        if input == "y"
            puts "\nyou must be trying to take my job mortal, haha\n"
            sleep 2
            user_begin
        elsif input == "n" || input == "exit"
            puts "\nThank you for keeping me company mortal, return anytime.\n"
            sleep 2
            puts "kunnusterr makt, ok makt er hvatvetna"
            sleep 1
            "KNOWLEDGE IS POWER, AND POWER IS EVERYTHING".each_char {|c| putc c ; sleep 0.15; $stdout.flush }
            sleep 2
            puts " "
            exit
        else
            puts "\nMortal it is unwise to stray from the path I have layed for you, please be more careful.\n"
            sleep 1
            get_option
        end
    end
end