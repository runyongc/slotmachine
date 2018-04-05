require "minitest/autorun"
require_relative "slotmachine.rb"

class SlotTest < MiniTest::Test
	
	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end
	def test_player_is_winner
		assert_equal(true,WinCondition("test","test","test"))
	end
	def test_player_is_loser
		assert_equal(false,WinCondition("test1","test2","test3"))
	end
	def test_player_is_even
		assert_equal("even",WinCondition("test1","test2","test1"))
	end
end