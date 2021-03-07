
class Scraper
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
    end
end