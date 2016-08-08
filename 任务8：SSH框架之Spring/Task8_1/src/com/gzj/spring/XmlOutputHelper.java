/**
 * 
 */
package com.gzj.spring;

import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Xml格式输出
 *
 */
public class XmlOutputHelper implements IOutputHelper {

	@Override
	public void outPut(List<employee> list) {

		try {
			// DOM
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document document = builder.newDocument();
			Element root = document.createElement("Employees");
						
			Iterator<employee> iter = list.iterator();
			while (iter.hasNext()) {
				employee em = iter.next();
				Element el = document.createElement("employee");
				el.setAttribute("workno", em.getWorkno());
								
				Element name = document.createElement("name");
				name.setTextContent(em.getName());
				Element age = document.createElement("age");
				age.setTextContent(String.valueOf(em.getAge()));
				Element dept = document.createElement("department");
				dept.setTextContent(em.getDepartment());

				el.appendChild(name);
				el.appendChild(age);
				el.appendChild(dept);

				root.appendChild(el);
			}
			
			document.appendChild(root);
			
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty("encoding", "UTF-8");
			
			StringWriter writer = new StringWriter();
			transformer.transform(new DOMSource(document), new StreamResult(writer));
			System.out.println(writer.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
