package xml;

@:forward
abstract Document(ContainerNode) to Node to Xml  {
	public inline function new(?processingInstruction:ProcessingInstruction, ?docType:DocType) {
		this = new ContainerNode(Document);
		if(processingInstruction != null) this.add(processingInstruction);
		if(docType != null) this.add(docType);
	}
		
	public inline function add(node:Node):Document {
		this.xml.addChild(node);
		return cast this;
	}
	
	@:to
	public inline function toString():String
		return this.toString();
}