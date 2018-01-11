package xml;

class Document {
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
	
	public inline function toString()
		return toXml().toString();
}