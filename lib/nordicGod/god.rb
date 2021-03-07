class God

    attr_accessor :name, :gender, :group, :god_of#:significance, :parent, :spouse, :offspring

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

    #def self.data_of_gods
    #    selection = CLI.valid_selection
#
    #    if selection = 1
    #        god.name = "Odin",
    #        god.significance = "The god of wisdom, healing, death, royalty, the gallows, knowledge, battle, sorcery, poetry, frenzy, and the runic alphabet.",
    #        god.parent = "Bor and Bestla",
    #        god.spouse = "Frigg",
    #        god.offspring = "Thor, Baldr, Víðarr, and Váli"
    #    elsif selection = 2
    #        god.name = "Thor",
    #        god.significance = "The god of thunder, lightning, storms, oak trees, strength, and the protection of mankind.",
    #        god.parents = "Odin",
    #        god.spouse = "Sif"​,
    #        god.offspring = "Þrúðr, Móði, and Magni"
    #    end
    #end

end