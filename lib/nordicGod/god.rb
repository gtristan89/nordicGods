class NordicGod::God

    attr_accessor :rank, :image, :name, :significance, :parent, :spouse, :offspring

    @@all_gods = []
    def initialize
    # def initialize(rank, img, name, sign, parents, spouse, offspring)
    #     @rank = rank
    #     @image = img
    #     @name = name
    #     @significance = sign
    #     @parent = parents
    #     @spouse = spouse
    #     @offspring = offspring
    #     puts 'in God class'
    # end
        @@all_gods << self
    end

    def self.all_gods
        @@all_gods 
    end
end