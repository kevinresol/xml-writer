package xml;

@:forward
abstract ContainerNode(Node) to Node to Xml {
	public inline function new(type)
		this = new Node(type);	
	
	public inline function add(node:Node):ContainerNode {
		this.xml.addChild(node);
		return cast this;
	}
	
	public inline function insert(node:Node, index:Int):ContainerNode {
		this.xml.insertChild(node, index);
		return cast this;
	}
	
	public inline function remove(node:Node)
		return this.xml.removeChild(node);
	
	public inline function iterator()
		// return this.xml.iterator();
		return @:privateAccess this.xml.children.iterator();
		
	@:to
	public inline function toString():String
		return this.toString();
}