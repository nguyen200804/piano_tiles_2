package com.mopub.mobileads.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class XmlUtils {

    public interface NodeProcessor<T> {
        T process(Node node);
    }

    private XmlUtils() {
    }

    public static Node getFirstMatchingChildNode(Node node, String nodeName) {
        return getFirstMatchingChildNode(node, nodeName, null, null);
    }

    public static Node getFirstMatchingChildNode(Node node, String nodeName, String attributeName, List<String> attributeValues) {
        List<Node> matchingChildNodes;
        if (node == null || nodeName == null || (matchingChildNodes = getMatchingChildNodes(node, nodeName, attributeName, attributeValues)) == null || matchingChildNodes.isEmpty()) {
            return null;
        }
        return matchingChildNodes.get(0);
    }

    public static List<Node> getMatchingChildNodes(Node node, String nodeName) {
        return getMatchingChildNodes(node, nodeName, null, null);
    }

    public static List<Node> getMatchingChildNodes(Node node, String nodeName, String attributeName, List<String> attributeValues) {
        if (node == null || nodeName == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeName().equals(nodeName) && nodeMatchesAttributeFilter(item, attributeName, attributeValues)) {
                arrayList.add(item);
            }
        }
        return arrayList;
    }

    public static boolean nodeMatchesAttributeFilter(Node node, String attributeName, List<String> attributeValues) {
        Node namedItem;
        if (attributeName == null || attributeValues == null) {
            return true;
        }
        NamedNodeMap attributes = node.getAttributes();
        return (attributes == null || (namedItem = attributes.getNamedItem(attributeName)) == null || !attributeValues.contains(namedItem.getNodeValue())) ? false : true;
    }

    public static String getNodeValue(Node node) {
        if (node == null || node.getFirstChild() == null || node.getFirstChild().getNodeValue() == null) {
            return null;
        }
        return node.getFirstChild().getNodeValue().trim();
    }

    public static Integer getAttributeValueAsInt(Node node, String attributeName) {
        if (node == null || attributeName == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(getAttributeValue(node, attributeName)));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static String getAttributeValue(Node node, String attributeName) {
        Node namedItem;
        if (node == null || attributeName == null || (namedItem = node.getAttributes().getNamedItem(attributeName)) == null) {
            return null;
        }
        return namedItem.getNodeValue();
    }

    public static <T> List<T> getListFromDocument(Document vastDoc, String elementName, String attributeName, String attributeValue, NodeProcessor<T> nodeProcessor) {
        NodeList elementsByTagName;
        T process;
        ArrayList arrayList = new ArrayList();
        if (vastDoc != null && (elementsByTagName = vastDoc.getElementsByTagName(elementName)) != null) {
            List asList = attributeValue == null ? null : Arrays.asList(attributeValue);
            for (int i = 0; i < elementsByTagName.getLength(); i++) {
                Node item = elementsByTagName.item(i);
                if (item != null && nodeMatchesAttributeFilter(item, attributeName, asList) && (process = nodeProcessor.process(item)) != null) {
                    arrayList.add(process);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    public static <T> T getFirstMatchFromDocument(Document vastDoc, String elementName, String attributeName, String attributeValue, NodeProcessor<T> nodeProcessor) {
        NodeList elementsByTagName;
        T process;
        if (vastDoc == null || (elementsByTagName = vastDoc.getElementsByTagName(elementName)) == null) {
            return null;
        }
        List asList = attributeValue == null ? null : Arrays.asList(attributeValue);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Node item = elementsByTagName.item(i);
            if (item != null && nodeMatchesAttributeFilter(item, attributeName, asList) && (process = nodeProcessor.process(item)) != null) {
                return process;
            }
        }
        return null;
    }

    public static String getFirstMatchingStringData(Document vastDoc, String elementName) {
        return getFirstMatchingStringData(vastDoc, elementName, null, null);
    }

    public static String getFirstMatchingStringData(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return (String) getFirstMatchFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<String>() { // from class: com.mopub.mobileads.util.XmlUtils.1
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public String process(Node node) {
                return XmlUtils.getNodeValue(node);
            }
        });
    }

    public static List<String> getStringDataAsList(Document vastDoc, String elementName) {
        return getStringDataAsList(vastDoc, elementName, null, null);
    }

    public static List<String> getStringDataAsList(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return getListFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<String>() { // from class: com.mopub.mobileads.util.XmlUtils.2
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public String process(Node node) {
                return XmlUtils.getNodeValue(node);
            }
        });
    }

    public static List<Node> getNodesWithElementAndAttribute(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return getListFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<Node>() { // from class: com.mopub.mobileads.util.XmlUtils.3
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public Node process(Node node) {
                return node;
            }
        });
    }
}
