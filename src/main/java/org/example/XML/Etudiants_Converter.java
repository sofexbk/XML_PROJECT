package org.example.XML;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.dom.DOMSource;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DecimalFormat;

public class Etudiants_Converter {
    public static void main(String[] args) {
        String excelFilePath = "src/Excel_Csv/Etudiants.xlsx";
        String xmlFilePath = "src/XML/Etudiants.xml";

        try {
            convertExcelToXml(excelFilePath, xmlFilePath);
            System.out.println("Conversion terminée avec succès.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void convertExcelToXml(String excelFilePath, String xmlFilePath) throws Exception {
        Workbook workbook = new XSSFWorkbook(new File(excelFilePath));
        Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();

        Element rootElement = document.createElement("Etudiants");
        document.appendChild(rootElement);

        Sheet sheet = workbook.getSheetAt(0);

        for (int rowIndex = 1; rowIndex <= sheet.getLastRowNum()-1; rowIndex++) {
            Row row = sheet.getRow(rowIndex);

            Element etudiantElement = document.createElement("Etudiant");
            rootElement.appendChild(etudiantElement);

            Element cneElement = document.createElement("CodeApogee");
            cneElement.appendChild(document.createTextNode(getCellValueAsString(row.getCell(0))));
            etudiantElement.appendChild(cneElement);

            Element nomElement = document.createElement("nom");
            nomElement.appendChild(document.createTextNode(getCellValueAsString(row.getCell(1))));
            etudiantElement.appendChild(nomElement);

            Element prenomElement = document.createElement("prénom");
            prenomElement.appendChild(document.createTextNode(getCellValueAsString(row.getCell(2))));
            etudiantElement.appendChild(prenomElement);
        }

        Transformer transformer = TransformerFactory.newInstance().newTransformer();
        transformer.setOutputProperty(javax.xml.transform.OutputKeys.INDENT, "yes");

        // Créer un objet DOMSource à partir du document XML
        DOMSource source = new DOMSource(document);

        // Créer un objet StreamResult pour le fichier de sortie XML
        StreamResult result = new StreamResult(new FileOutputStream(xmlFilePath));

        // Appliquer la transformation et écrire le fichier XML
        transformer.transform(source, result);

    }

    private static String getCellValueAsString(Cell cell) {
        if (cell == null) {
            return "";
        }
        switch (cell.getCellType()) {
            case STRING:
                return cell.getStringCellValue();
            case NUMERIC:
                DecimalFormat df = new DecimalFormat("#");
                return df.format(cell.getNumericCellValue());
            default:
                return "";
        }
    }
}