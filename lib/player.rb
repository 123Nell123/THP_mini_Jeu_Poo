class Player
    attr_accessor :name, :life_points
    @@alive = true

 
    def show_state
    puts "il  reste  #{@life_points} à #{@name} points de vie"  
    end

    def gets_damage(point)
    @life_points -= point
         if (@life_points <= 0 )
            then 
                puts "#{@name} a perdu tout ses points"
                puts "game over"
                
        end
    end


    def attacks(player)
        puts "#{@name} va attaquer  #{player} "
        damage = compute_damage
        puts "il lui inflige #{damage} points de dommages"
        return damage
    end


    def compute_damage
        damage = rand(1..6)
        puts "damage: #{damage} "
        return damage
    end
   
end


class HumanPlayer  < Player


end
