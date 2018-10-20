$:.unshift File.expand_path("./../db", __FILE__)

class Gossip
    attr_reader :author, :content, :all_gossips
    def initialize(author, content)
        @author = author
        @content = content
        puts "saisir votre nom ?"
        print "=> "
        @author = gets.chomp
        puts "saisir votre gossip ?"
        print "=> "
        @content = gets.chomp
    end

    def save 
        CSV.open("db/gossip.csv", "ab") do |csv|
            csv << [@author, @content]
          end
    end
    
    def self.all
        @all_gossips = []
        CSV.foreach("db/gossip.csv") do |ligne|
            provisoire = Gossip.new(ligne)
            @all_gossips << provisoire
        end
        return @all_gossips
    end
end
