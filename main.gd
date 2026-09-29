extends Node2D

@onready
var board = get_node("board")

func generate_deck():
	var naipes = ["Copas", "Espadas", "Ouro", "Paus"]
	var cards = []
	
	# for iterador in objeto_iterado
	for naipe in naipes:
		for num in range(1, 14):
			cards.append( Card.new( num, naipe ) )
	return cards
	

func _ready():
	board.text = ""
	var deck = generate_deck()
	for card in deck:
		board.text += card.title + ': ' + str(card.score) + '\n'
		print(card.title + ': ' + str(card.score))


func _on_btn_pull_button_up() -> void:
	board.text = "O botão funciona! Ebaaa!!!!!"
