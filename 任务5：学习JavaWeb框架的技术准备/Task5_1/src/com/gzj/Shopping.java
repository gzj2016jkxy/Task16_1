package com.gzj;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Shopping {
	public static void main(String[] args) {
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			//读取shopping.xml
			Document document = builder.parse(new File("shopping.xml"));
			Element root = document.getDocumentElement();
			NodeList list = root.getElementsByTagName("goods");

			double total = 0, ctotal = 0;
			int sums = 0, csums = 0;

			for (int i = 0; i < list.getLength(); i++) {
				Element goods = (Element) list.item(i);

				NodeList clist = goods.getChildNodes();
				for (int j = 0; j < clist.getLength(); j++) {
					Node c = clist.item(j);
					if (c instanceof Element) {
						if (c.getNodeName() == "number") {
							csums = Integer.valueOf(c.getTextContent());
						}
						if (c.getNodeName() == "price") {
							ctotal = Double.valueOf(c.getTextContent());
						}
					}
				}
				sums += csums;
				total += ctotal * csums;
			}

			System.out.println("总价：" + sums);
			System.out.println("总数量：" + total);

			//创建order.xml
			Document doc = builder.newDocument();
			Element croot = doc.createElement("order");
			//总价节点
			Element stotal = doc.createElement("total");
			stotal.setTextContent(String.valueOf(total));
			//总数量节点
			Element ssums = doc.createElement("sums");		
			ssums.setTextContent(String.valueOf(sums));
			
			croot.appendChild(stotal);
			croot.appendChild(ssums);
			doc.appendChild(croot);

			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty("encoding", "UTF-8");

			StringWriter writer = new StringWriter();
			transformer.transform(new DOMSource(doc), new StreamResult(writer));
			System.out.println(writer.toString());

			transformer.transform(new DOMSource(doc), new StreamResult(new File("order.xml")));

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}

	}
}
