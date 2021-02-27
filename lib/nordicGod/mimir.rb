class Scraper

    # def initialize
    #     puts 'in Scraper class'
    # end


    def self.get_gods
        @@doc = Nokogiri::HTML(open("https://www.ranker.com/list/all-norse-gods/ranker-characters")) 

        @@doc.css("li.gridItem_main__3gWq0").each do |card|
            god_obj = God.new
        end
    end

    
end