$:.unshift File.expand_path("./../db", __FILE__)

class Gossip
    attr_reader :author, :content
    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        
        CSV.open("db/gossip.csv", "wb") do |csv|
            csv << ["content", "author"]
            csv << [@author, @content]
          end
    end
end
