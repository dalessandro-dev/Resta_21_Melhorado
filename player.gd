class_name Player

var nickname: String
var hand: Array = []
var score: int = 0

func _init(nickname) -> void:
	self.nickname = nickname
	self.hand = []
	self.score = 0
	
func take_card( deck ):
	self.hand.append(deck[0])
	self.score += deck[0].score
	deck.remove_at(0)
	
func reset():
	self.hand = []
	self.score = 0
