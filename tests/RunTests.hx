package ;

import xml.*;

class RunTests {

	static function main() {
		var doc = 
			new Document(
				new ProcessingInstruction('xml version="1.0" encoding="UTF-8"'),
				new DocType('note'),
				new Element('root')
					.add(new PCData('<testdata/>'))
					.add(new CData('<testdata/>'))
					.add(new Comment('comment'))
					.add(
						new Element('child')
							.setAttribute('name', 'child')
					)
					.setAttribute('name', 'parent')
			);
		
		trace(doc);
		
		doc.docType = new DocType('note2');
		doc.root = new Element('root2');
		
		trace(doc);
		
		travix.Logger.exit(0); // make sure we exit properly, which is necessary on some targets, e.g. flash & (phantom)js
	}
	
}