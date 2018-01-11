package xml;

@:forward
abstract DocType(TextNode) to Node to Xml {
	public inline function new(value) {
		this = new TextNode(DocType, value);
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}