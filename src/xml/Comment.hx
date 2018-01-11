package xml;

@:forward
abstract Comment(TextNode) to Node to Xml {
	public inline function new(value) {
		this = new TextNode(Comment, value);
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}