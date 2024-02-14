package org.example.XML;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;


public class Convertor_Modules {
    static void converter(){

        try {
            File myObj = new File("src/Excel_Csv/Modules_Ginf2.csv");
            File myWriter = new File("src/XML/Modules_Ginf2.xml");
            myWriter.createNewFile();
            FileWriter output = new FileWriter("src/XML/Modules_Ginf2.xml");
            output.write("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?> \n");
            output.write("<Modules>\n");
            Scanner scanner = new Scanner(myObj);

            int i = 0;
            while (scanner.hasNextLine()){
                i++;
                String line = scanner.nextLine();
                String [] elements = line.split(",");
                if (i == 1) continue;
                output.write("\t<Module CodeModule=\"" + elements[0] + "\">\n");
                output.write("\t\t<NomModule>" + elements[1] + "</NomModule>\n");
                output.write("\t\t<ElementModule>" + elements[2] + "</ElementModule>\n");
                output.write("\t\t<ElementModule>" + elements[3] + "</ElementModule>\n");
                output.write("\t\t<ElementModule>" + elements[4] + "</ElementModule>\n");
                output.write("\t\t<Dept_Attachement>" + elements[5] + "</Dept_Attachement>\n");
                output.write("\t</Module>\n");


            }
            output.write("</Modules>\n");
            System.out.println("Géneration faite avec succès");
            output.close();
        } catch (IOException e){
            System.out.println("An error occurred");
            e.printStackTrace();
        }
    }

    public static void main(String... args){ converter();}

}