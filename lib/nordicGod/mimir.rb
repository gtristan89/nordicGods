
class Scraper

    # def initialize
    #     puts 'in Scraper class'
    # end


    def self.get_gods
        @@doc = Nokogiri::HTML(URI.open("https://historylists.org/other/list-of-norse-gods-and-goddesses.html"))

        @@doc.css("table tbody tr").each do |card|
            god_obj = God.new
            #binding.pry
            god_obj.name = card.css("td")[0].text
            god_obj.gender = card.css("td")[1].text
            god_obj.group = card.css("td")[2].text
            god_obj.god_of = card.css("td")[3].text
        end
        
        #@@doc = Nokogiri::HTML(URI.open("https://www.ranker.com/list/all-norse-gods/ranker-characters")) 
#
        #
        #@@doc.css("div.gridItem_itemData__1q79K").each do |card|
        #    # print card
        #    binding.pry
#
        #    god_obj = God.new
        #    #img_link = card.css("img")[0]['src']
        #    god_obj.name = card.css("h2")[0].text
        #    
        #    @@doc.css("div.gridItem_itemDescription__2YMhn.gridItem_blather__1_Z2Q").each do |subcard|
        #    #    # god_obj = God.new
        #       #binding.pry
        #    #
        #       god_obj.significance = subcard.css("p span")[0].text
        #       #binding.pry
#
        #    #    #puts "#{god_obj.significance}"
        #        god_obj.parent = subcard.css("p span")[1]
        #        god_obj.spouse = subcard.css("p span")[2]
        #        god_obj.offspring = subcard.css("p span")[3]
        #        #god_obj.img = img_link
        #    end
        #    #binding.pry
        #    #puts "#{god_obj.name}"
        #end

        #@get_gods_info

        #@@doc.css("div.gridItem_itemDescription__2YMhn.gridItem_blather__1_Z2Q").each do |card|
        #    # binding.pry
        #    god_obj = God.new

        #    god_obj.significance = card.css("p")[0].text
        #    #puts "#{god_obj.significance}"
        #    god_obj.parent = card.css("p")[1].text
        #    god_obj.spouse = card.css("p")[2].text
        #    god_obj.offspring = card.css("p")[3].text
        #    #god_obj.img = img_link
        #end
    end

    #def self.get_gods_info
    #    @@doc = Nokogiri::HTML(URI.open("https://www.ranker.com/list/all-norse-gods/ranker-characters"))
#
    #    @@doc.css("div.gridItem_itemDescription__2YMhn.gridItem_blather__1_Z2Q").each do |card|
    #        # binding.pry
    #        god_obj = God.new
    #        
    #        god_obj.significance = card.css("p")[0].text
    #        #puts "#{god_obj.significance}"
    #        god_obj.parent = card.css("p")[1].text
    #        god_obj.spouse = card.css("p")[2].text
    #        god_obj.offspring = card.css("p")[3].text
    #        #god_obj.img = img_link
    #    end
    #end

    
end


#div.gridItem_itemData__1q79K
# @@doc.css("div.gridItem_main__3gWq0").each

# god_obj.name = card.css("h2")[0].text
# god_obj.significance = card.css("p")[1..-1].map{|node| node.text}[0]
# god_obj.parent = card.css("p")[1..-1].map{|node| node.text}[1]
# god_obj.spouse = card.css("p")[1..-1].map{|node| node.text}[2]
# god_obj.offspring = card.css("p")[1..-1].map{|node| node.text}[3]