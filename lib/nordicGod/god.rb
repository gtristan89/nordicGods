class God

    attr_accessor :name, :gender, :group, :god_of

    @@all_gods = []

    def initialize
        @@all_gods << self
    end

    def self.all_gods
        Scraper.get_gods if @@all_gods.empty?
        @@all_gods
    end
end