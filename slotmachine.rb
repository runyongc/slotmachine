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
	winCondition(rollone,rollone,rollone)
end

def winCondition(slot1, slot2, slot3)
	if slot1 == slot2 && slot2 == slot3
		puts "Congratulations! You've hit the jackpot!"
		@cash += @cash + (@bet * 3)
		return true
	elsif slot1 == slot2 || slot2 == slot3 || slot1 == slot3
		@cash += @cash + @bet
		puts "You've broke even!"
		return true
	else 
		@cash += @cash
		puts "You've lost!"
		return false
	end
end
def playGame
	puts "Welcome to Grant's Casino!"
	puts "How much would you like to bet? Current Cash:#{@cash}"
	@bet = gets.chomp.to_i
	@cash -= @bet
	puts "Cash remaining after bet: #{@cash}"
	puts "Alright! Rolling the slots with a bet of #{@bet}!"
	slotRoll()
	puts "Would you like to play again? Y/N"
	if gets.chomp == "Y"
		playGame
	end
end
end
newgame = SlotMachine.new
newgame.playGame


