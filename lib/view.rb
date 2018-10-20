$:.unshift File.expand_path("./../db", __FILE__)

class View

    def initialize
        create_gossip_screen
    end

    def create_gossip_screen
        CSV.foreach("db/gossip.csv") do |row|
            print row
          end
    end
end
