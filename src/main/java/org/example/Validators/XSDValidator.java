package org.example.Validators;

import org.xml.sax.SAXException;

import javax.xml.XMLConstants;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import java.io.File;

public class XSDValidator {
            public static void main(String[] args) {
                String xmlFilePath = "src/XML/Notes.xml";
                String xsdFilePath = "src/Validation/Notes.xsd";
                if (validateXML(xmlFilePath, xsdFilePath)) {
                    System.out.println("Le fichier XML est valide par rapport au schéma.");
                } else {
                    System.out.println("Le fichier XML n'est pas valide par rapport au schéma.");
                }
            }
            public static boolean validateXML(String xmlFilePath, String xsdFilePath) {
                try {
                    SchemaFactory factory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
                    Schema schema = factory.newSchema(new File(xsdFilePath));
                    javax.xml.validation.Validator validator = schema.newValidator();
                    validator.validate(new StreamSource(new File(xmlFilePath)));
                    return true;
                } catch (SAXException e) {
                    System.out.println("Erreur de validation : " + e.getMessage());
                    return false;
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
            }
}

