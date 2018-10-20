require 'view'
require 'gossip.rb'

class Controller
    def initialize
    end

    def create_gossip
        puts "saisir votre nom ?"
        print "=> "
        @author = gets.chomp
        puts "saisir votre gossip ?"
        print "=> "
        @content = gets.chomp
        gossip = Gossip.new(@author, @content)
        gossip.save
        puts "souhaitez vous enregistrer << #{gossip.content} >> ? [Y, N]"
        print "=> "
        response = gets.chomp
        if response == "Y" || response == "y"
            puts "Bravo vous avez enregistré un ragot !!"
        else
            puts "Dommage.."
        end
    end
end
