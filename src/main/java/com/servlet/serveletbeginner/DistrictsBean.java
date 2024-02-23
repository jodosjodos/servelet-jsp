package com.servlet.serveletbeginner;

public class DistrictsBean {
    public  String name;
 public  String mayor ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMayor() {
        return mayor;
    }

    public void setMayor(String mayor) {
        this.mayor = mayor;
    }

    @Override
    public String toString() {
        return "DistrictsBean{" +
                "name='" + name + '\'' +
                ", mayor='" + mayor + '\'' +
                '}';
    }
}
