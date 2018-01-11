package xml;

@:forward
abstract ProcessingInstruction(TextNode) to Node to Xml {
	public inline function new(value) {
		this = new TextNode(ProcessingInstruction, value);
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}