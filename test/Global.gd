extends Node

var node_creation_parent = null

func instance_node(node, location, paremt):
	var node_instance = node.instance()
	paremt.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
