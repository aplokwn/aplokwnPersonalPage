package io.github.service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import io.github.model.Photo;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class gsonFunction {

    public List<Photo> readJSON() throws FileNotFoundException, IOException {

        JsonObject jsonObject = new JsonObject();
        jsonObject.get("photo");

        // If the file is empty, there is no bike instock,
        //return a empty list for servlet to handle page control
        if (jsonObject.isJsonNull()) {
            List<Photo> photoList = Arrays.asList();
            return photoList;
        } //Else if the file have content, create bike list for servlet to handle page control and display content
        else {
            Gson gson = new Gson();

            URL url = null;
            try {
                // Definition of the URL with the JSON-Strings
                url = new URL("https://api.jsonbin.it/bins/TIWlhGmu");

            }
            catch (MalformedURLException e) {
                e.printStackTrace();
            }


            Reader gsonReader = new InputStreamReader(url.openStream());

            Photo[] photo = gson.fromJson(gsonReader, Photo[].class);
            gsonReader.close();

            List<Photo> photoList = Arrays.asList(photo);
            return photoList;
        }

    }


    public static List<Photo> filterType(List<Photo> asList, String type) {
        List<Photo> filterList = new ArrayList();
        for (Photo each : asList) {
            if (Integer.toString(each.getType()).equals(type)) {
                filterList.add(each);
            }
        }
        return filterList;
    }

    public static List<Photo> resetList() throws FileNotFoundException, IOException {

        JsonObject jsonObject = new JsonObject();
        jsonObject.get("photo");

        // If the file is empty, there is no bike instock,
        //return a empty list for servlet to handle page control
        if (jsonObject.isJsonNull()) {
            List<Photo> photoList = Arrays.asList();
            return photoList;
        } //Else if the file have content, create bike list for servlet to handle page control and display content
        else {
            Gson gson = new Gson();

            URL url = null;
            try {
                // Definition of the URL with the JSON-Strings
                url = new URL("https://api.jsonbin.it/bins/TIWlhGmu");

            }
            catch (MalformedURLException e) {
                e.printStackTrace();
            }


            Reader gsonReader = new InputStreamReader(url.openStream());

            Photo[] photo = gson.fromJson(gsonReader, Photo[].class);
            gsonReader.close();

            List<Photo> photoList = Arrays.asList(photo);
            return photoList;
        }

    }




}
