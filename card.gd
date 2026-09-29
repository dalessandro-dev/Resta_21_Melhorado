class_name Card

var value : int
var naipe : String

var title : String
var score : int

# Construtor
func _init(value, naipe):
	self.value = value
	self.naipe = naipe
	
	if(value > 1 and value < 11):
		self.score = value
		self.title = str(value) + ' de ' + naipe 
	elif( value == 1 ):
		self.score = 11
		self.title = 'Às de ' + naipe
	else:
		self.score = 10
		if(value == 11):
			self.title = 'Valete de ' + naipe
		elif(value == 12):
			self.title = 'Rainha de ' + naipe
		elif(value == 13):
			self.title = 'Rei de ' + naipe
