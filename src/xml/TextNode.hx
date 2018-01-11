package xml;

@:forward
abstract TextNode(Node) to Node to Xml {
	
	public var value(get, set):String;
	
	public inline function new(type, value) {
		this = new Node(type);
		set_value(value);
	}
	
	public inline function get_value()
		return this.xml.nodeValue;
	
	public inline function set_value(v)
		return this.xml.nodeValue = v;
		
	@:to
	public inline function toString():String
		return this.toString();
}