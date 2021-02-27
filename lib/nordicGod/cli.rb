class NordicGod::CLI
    def call
        puts "\nWelcome mortal! I am but a meer remnant of the Aesir God Mimir!\n"
        # sleep 2
        # puts "I am the God of knowledge and wisdom, the wisest God of all the Aesir."
        # sleep 3
        # puts "Long ago I was sent as a hostage during the Aesir Vanir  War. which is where I was beheaded. and then my head was sent back to Asgard."
        # sleep 6
        # puts "Odin carried my head for many centuries as I would recite secret knowledge and counsel to him."
        get_listed_gods
        get_god
        get_info_for
        # display_info
    end

    def get_listed_gods
        # will be scraped
        @gods = ['Thor', 'Odin', 'Fenrir', 'Ymir']
    end

    def get_god
        #list gods
        puts "And now I offer my knowledge to you mortal. Select a God you wish to learn of... kunnskap er makt "
        @gods.each_with_index { |god, index|
        
        puts "#{index + 1}. #{god}"
        }
    end

    def get_info_for
        chosen_god = gets.strip
        binding.pry
        if valid_selection(chosen_god.to_i, @gods)
        end

    end

    def valid_selection(selection, data)
        selection.to_i <= data.length &&  selection.to_i > 0
    end
end