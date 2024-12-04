package com.example.ex_getdatabase;

public class Level {
    private int id;
    private String nameTrinhDo;
    public Level() {}
    public Level(int id, String nameTrinhDo) {
        this.id = id;
        this.nameTrinhDo = nameTrinhDo;
    }
    public int getId() {
        return id;
    }
    public String getNameTrinhDo() {
        return nameTrinhDo;
    }
    public void setId(int id) {
        this.id = id;
    }
    public void setNameTrinhDo(String nameTrinhDo) {
        this.nameTrinhDo = nameTrinhDo;
    }
}
