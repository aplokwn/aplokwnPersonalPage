package io.github.service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import io.github.model.Photo;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Jsonloader {

    public void getwebJson() throws IOException {
        String webPage = "http://time.jsontest.com";
        try (InputStream is = new URL(webPage).openStream();
             Reader reader = new InputStreamReader(is, StandardCharsets.UTF_8)) {

            Gson gson = new Gson();
            Photo td = gson.fromJson(reader, Photo.class);

            System.out.println(td);
        }

    }


    public List<Photo> getJsonFile(){


        JsonObject jsonObject = new JsonObject();
        jsonObject.get("photo");

        Gson gson = new Gson();
        List<Photo> photoList = new ArrayList();

        try {
            // Definition of the local file with the JSON-Strings
            Reader gsonReader = Files.newBufferedReader(Paths.get("C:\\Users\\aphks\\general\\aplokwn\\src\\main\\webapp\\resource\\photo.json"));
            Photo[] photo = gson.fromJson(gsonReader, Photo[].class);
            gsonReader.close();

            photoList = Arrays.asList(photo);

        }
        catch (IOException e) {
            e.printStackTrace();
        }

        //Test in local json file

        return photoList;
    }



}
