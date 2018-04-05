def SlotRoll()
	slots = ["Clubs", "Diamonds", "Spades", "Hearts"]
	rollone = slots.sample
	rolltwo = slots.sample
	rollthree = slots.sample
	puts "#{RollOne}" + "--" + "#{RollTwo}" + "--" + "RollThree"
	WinCondition(rollone,rolltwo,rollthree)
end

def WinCondition(slot1, slot2, slot3)
	if slot1 == slot2 && slot2 == slot3
		puts "Congratulations! You've hit the jackpot!"
		return true
	elsif slot1 == slot2 || slot2 == slot3 || slot1 == slot3
		puts "You've broke even!"
		return true
	else 
		return false
	end
end
