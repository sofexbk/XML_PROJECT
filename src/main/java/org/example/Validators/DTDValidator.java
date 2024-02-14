package org.example.Validators;

import org.w3c.dom.Document;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.io.FileInputStream;

public class DTDValidator  {
    public static void main(String[] args) {
        String xmlFilePath = "src/XML/Etudiants(1).xml";
        String dtdFilePath = "src/Validation/Etudiants.dtd";
        if (validateXMLAgainstDTD(xmlFilePath, dtdFilePath)) {
            System.out.println("Le fichier XML est valide par rapport à la DTD.");
        } else {
            System.out.println("Le fichier XML n'est pas valide par rapport à la DTD.");
        }
    }
    public static boolean validateXMLAgainstDTD(String xmlFilePath, String dtdFilePath) {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            factory.setValidating(true);
            factory.setNamespaceAware(true);
            DocumentBuilder builder = factory.newDocumentBuilder();
            builder.setErrorHandler(new SaxException()); // Add a simple error handler
            Document document = builder.parse(new FileInputStream(new File(xmlFilePath)));
            return true; // If parsing succeeds, consider it valid
        } catch (Exception e) {
            System.out.println("Erreur de validation : " + e.getMessage());
            return false;
        }
    }
}
