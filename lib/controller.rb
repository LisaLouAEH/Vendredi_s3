require 'view.rb'
require 'gossip.rb'

class Controller
    def initialize
    end
#option 1/ creer un potin
    def create_gossip
        puts "saisir votre nom ?"
        print "=> "
        @author = gets.chomp
        puts "saisir votre gossip ?"
        print "=> "
        @content = gets.chomp
#------------------------------------------------------
        gossip = Gossip.new(@author, @content)
        gossip.save
#-----------------------------------------------------
        puts "souhaitez vous enregistrer << #{gossip.content} >> ? [Y, N]"
        print "=> "
        response = gets.chomp
        if response == "Y" || response == "y"
            puts "Bravo vous avez enregistré un ragot !!"
        else
            puts "Dommage.."
        end
        puts "souhaitez vous consulter tout les gossips ? [Y, N]"
        print "=> "
        user_response = gets.chomp
        if user_response == "y" || user_response == "y"
          @view = View.new
          @params = @view.create_gossip_screen
        else
          puts "domage.."
        end
    end

#option 2/ afficher tout les potins
    def index_gossips
        # Demander au model une array qui contient toutes les potins que l'on a en base
        @array = gossip.all_gossips
        puts @array
        #demander à la view d'exéctuer la méthode index_gossips qui affichera tous les potins
    end
end
