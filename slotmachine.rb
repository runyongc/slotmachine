class SlotMachine

def initialize()
	@cash = 50
end

def slotRoll()
	slots = ["Clubs", "Diamonds", "Spades", "Hearts"]
	rollone = slots.sample
	rolltwo = slots.sample
	rollthree = slots.sample
	puts "#{rollone}" + "--" + "#{rolltwo}" + "--" + "#{rollthree}"
	winCondition(rollone,rolltwo,rollthree)
end

def winCondition(slot1, slot2, slot3)
	if slot1 == slot2 && slot2 == slot3
		puts "Congratulations! You've hit the jackpot! Winnings: #{(@bet * 3)}"
		@cash += @cash + (@bet * 3)
		return true
	elsif slot1 == slot2 || slot2 == slot3 || slot1 == slot3
		@cash += @bet
		puts "You've broke even!"
		return true
	else 
		puts "You've lost!"
		return false
	end
end
def playGame
	puts "Welcome to Grant's Casino!"
	puts "Last Bet: #{@bet} Current Cash: #{@cash}"
	puts "How much would you like to bet?"
	@bet = gets.chomp.to_i
	@cash -= @bet
	puts "Alright! Rolling the slots with a bet of #{@bet}!"
	slotRoll()
	puts "Would you like to play again? Y/N"
	playagain = gets.chomp.downcase
	if playagain == "y"
		playGame
	end
end
end
newgame = SlotMachine.new
newgame.playGame


