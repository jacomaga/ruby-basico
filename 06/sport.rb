class Sportman
    def compete
        puts "Participating in a competition"
    end
end

class SoccerPlayer < Sportman

    def run
        puts "Running to the ball"
    end

end

class Maratonist < Sportman

  def run
    puts "Running  the circuit"
  end

end

soccerPlayer = SoccerPlayer.new()
maratonist = Maratonist.new()

maratonist.run
maratonist.compete

soccerPlayer.run
soccerPlayer.compete
