package xml;

@:forward
abstract CData(TextNode) to Node to Xml {
	public inline function new(value) {
		this = new TextNode(CData, value);
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}