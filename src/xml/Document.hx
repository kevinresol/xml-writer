package xml;

@:forward
abstract Document(DocumentBase) {
	public inline function new(?processingInstruction:ProcessingInstruction, ?docType:DocType, root:Element)
		this = new DocumentBase(processingInstruction, docType, root);
	
	@:to
	public inline function toNode():Node
		return this.toXml();
		
	@:to
	public inline function toXml():Xml
		return this.toXml();
	
	@:to
	public inline function toString():String
		return this.toXml().toString();
}

class DocumentBase {
	public var processingInstruction:ProcessingInstruction;
	public var docType:DocType;
	public var root:Element;
	
	public function new(?processingInstruction:ProcessingInstruction, ?docType:DocType, root:Element) {
		this.processingInstruction = processingInstruction;
		this.docType = docType;
		this.root = root;
	}
	
	public function toXml() {
		var doc = Xml.createDocument();
		if(processingInstruction != null) doc.addChild(processingInstruction);
		if(docType != null) doc.addChild(docType);
		doc.addChild(root);
		return doc;
	}
}