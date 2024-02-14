package org.example.XML;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Notes_Converter {
    public static void converter() {
        try {
            File myObj = new File("src/Excel_Csv/notes-ginf2.csv");
            File myWriter = new File("src/XML/Notes.xml");
            myWriter.createNewFile();
            FileWriter output = new FileWriter("src/XML/Notes.xml");
            output.write("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?> \n");
            output.write("<Notes>\n");
            Scanner scanner = new Scanner(myObj);

            if (scanner.hasNextLine()) {
                String first = scanner.nextLine();
                String[] Modules = first.split(",");
                if (scanner.hasNextLine()) {
                    String Second = scanner.nextLine();
                    String[] elements = Second.split(",");

                    while (scanner.hasNextLine()) {
                        String line = scanner.nextLine();
                        String[] Valeurs = line.split(",");
                        if (Valeurs.length >= 3) {
                            output.write("\t<Etudiant>\n");

                            output.write("\t\t<CodeApogee>" + Valeurs[0] + "</CodeApogee>\n");
                            output.write("\t\t<NOM>" + Valeurs[1] + "</NOM>\n");
                            output.write("\t\t<PRENOM>" + Valeurs[2] + "</PRENOM>\n");

                            int moduleIndex = 3;
                            int elementIndex = 3;

                            while (moduleIndex < Modules.length && elementIndex < elements.length) {
                                // Add module
                                if (moduleIndex + 1 < Modules.length) {
                                    output.write("\t\t<Module Code=\"" + Modules[moduleIndex + 1] + "\" Designation=\"" + Modules[moduleIndex] + "\" >\n");
                                }
                                // Add elements
                                output.write("\t\t\t<Matières>\n");
                                for (int j = elementIndex; j < elementIndex + 3 && j < elements.length; j++) {
                                    if (!elements[j].isEmpty()) {
                                        if (j < Valeurs.length) {
                                            output.write("\t\t\t\t<Matière Designation=\"" + elements[j] + "\" >" + Valeurs[j] + "</Matière>\n");
                                        }
                                    }
                                }
                                output.write("\t\t\t</Matières>\n");
                                // Add Moyenne
                                if (elementIndex + 3 < Valeurs.length) {
                                    output.write("\t\t\t<Moyenne>" + Valeurs[elementIndex + 3] + "</Moyenne>\n");
                                }
                                output.write("\t\t</Module>\n");

                                moduleIndex += 4; // Move to the next module
                                elementIndex += 4; // Move to the next set of elements
                            }
                            output.write("\t\t<MoyenneGénérale>" + Valeurs[51] + "</MoyenneGénérale>\n");


                            output.write("\t</Etudiant>\n");
                        }
                    }
                }
            }

            output.write("</Notes>\n");
            output.close();
            System.out.println("Conversion succeded");
        } catch (IOException e) {
            System.out.println("An error occurred");
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        converter();
    }
}