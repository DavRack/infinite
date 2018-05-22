/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.*;
import java.io.*;

/**
 *
 * @author David
 */
public class txt {

    public static LinkedList<String> lineas = new LinkedList<>();

    public static void read_txt() {
        //solo se pueden leer los archivos que estan en 
        // 

        String filePath = "test.txt";
        File inFile = new File("c:/users/david/desktop/datos.txt");

        String fname = filePath;
        String line = null;
        try {
            FileReader fileReader = new FileReader(fname);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while ((line = bufferedReader.readLine()) != null) {
                lineas.add(line);
            }
            bufferedReader.close();
        } catch (IOException ex) {
            System.out.println("Error reading file named '" + fname + "'");
        }

    }

    public static void cargar_datos() {
        read_txt();
        int l = lineas.size();
        for (int i = 0; i < l; i++) {
            String[] separados = lineas.get(i).split(";");
            switch (separados[0]) {
                case "user":
                    models.user u = new models.admin(separados[1], separados[2], separados[3], separados[4], separados[5], separados[6], Double.parseDouble(separados[7]));
                case "admin":
                    models.admin a = new models.admin(separados[1], separados[2], separados[3], separados[4], separados[5], separados[6], Double.parseDouble(separados[7]));
                case "seller":
                    models.admin c = new models.admin(separados[1], separados[2], separados[3], separados[4], separados[5], separados[6], Double.parseDouble(separados[7]));
            }
        }

    }

}
