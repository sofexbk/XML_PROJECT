package org.example.Validators;

public class SaxException implements org.xml.sax.ErrorHandler {
    @Override
    public void warning(org.xml.sax.SAXParseException e) {
        System.out.println("Warning: " + e.getMessage());
    }

    @Override
    public void error(org.xml.sax.SAXParseException e) {
        System.out.println("Error: " + e.getMessage());
    }

    @Override
    public void fatalError(org.xml.sax.SAXParseException e) {
        System.out.println("Fatal Error: " + e.getMessage());
    }
}
