class God

    attr_accessor :name, :significance, :parent, :spouse, :offspring

    @@all_gods = []

    def initialize#(rank, img, name, sign, parents, spouse, offspring)
        # @rank = rank
        # @image = img
        # @name = name
        # @significance = sign
        # @parent = parents
        # @spouse = spouse
        # @offspring = offspring
    #     puts 'in God class'
    # end
        @@all_gods << self
    end

    def self.all_gods
        Scraper.get_gods if @@all_gods.empty?
        @@all_gods
    end

    def self.list_gods
        @@all_gods.each.with_index { |obj, index| puts "#{index + 1}. #{obj.name}"}
    end

    def collect_data
        @significance << god_obj.significance
    end

end