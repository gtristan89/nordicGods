
class Scraper

    # def initialize
    #     puts 'in Scraper class'
    # end


    def self.get_gods
        
        @@doc = Nokogiri::HTML(URI.open("https://www.ranker.com/list/all-norse-gods/ranker-characters")) 

        
        @@doc.css("div.gridItem_itemData__1q79K").each do |card|
            # print card
            
            god_obj = God.new
            #img_link = card.css("img")[0]['src']
            god_obj.name = card.css("h2")[0].text
            #puts "#{god_obj.name}"
            god_obj.significance = card.css("p")[1..-1].map{|node| node.text}[0]
            #puts "#{god_obj.significance}"
            god_obj.parent = card.css("p")[1..-1].map{|node| node.text}[1]
            god_obj.spouse = card.css("p")[1..-1].map{|node| node.text}[2]
            god_obj.offspring = card.css("p")[1..-1].map{|node| node.text}[3]
            #god_obj.img = img_link
            
        end
    end

    
end

# @@doc.css("div.gridItem_main__3gWq0").each

# god_obj.name = card.css("h2")[0].text
# god_obj.significance = card.css("p")[1..-1].map{|node| node.text}[0]
# god_obj.parent = card.css("p")[1..-1].map{|node| node.text}[1]
# god_obj.spouse = card.css("p")[1..-1].map{|node| node.text}[2]
# god_obj.offspring = card.css("p")[1..-1].map{|node| node.text}[3]