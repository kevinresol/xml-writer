package xml;

@:forward
abstract PCData(TextNode) to Node to Xml {
	public inline function new(value) {
		this = new TextNode(PCData, value);
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}