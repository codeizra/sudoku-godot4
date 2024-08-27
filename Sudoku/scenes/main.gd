extends Control  # This must match the type of node you're attaching it to

func _ready():
	var grid_container = $GridContainer  # Reference the GridContainer node
	
	if grid_container == null:
		print("GridContainer not found!")
		return
			
	var cell_scene = load("res://scenes/SudokuCell.tscn")  # Load the SudokuCell scene

	for i in range(81):
		var cell_instance = cell_scene.instantiate()  # Instantiate the SudokuCell
		grid_container.add_child(cell_instance)  # Add the cell to the GridContainer
