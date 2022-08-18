package io.github.model;

public class Photo {
    private String filename;
    private String name;
    private String path;
    private int type;
    private String date;
    private String location;

    public Photo() {
    }

    public Photo(String path, String filename, String name, int type, String date, String location) {
        this.path = path;
        this.filename = filename;
        this.name = name;
        this.type = type;
        this.date = date;
        this.location = location;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFilename() {
        return filename;
    }

    public String getPath() {
        return path;
    }

    public String getName(){
        return name;
    }

    public int getType(){
        return type;
    }

    public String getDate(){
        return date;
    }

    public String getLocation(){
        return location;
    }


    public String toString() {
        return "Photo [ filename: " +filename+", photoPath: "+ path+ ", name: "+ name +
        ", Type: " + type + ", Date" +  date + ", Location: " + location + " ]";

    }
}
