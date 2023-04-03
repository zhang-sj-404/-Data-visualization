package com.czu.zsj.pojo;

public class NewStudent {
    private int id;
    private String name;
    private int score;
    private int subject;
    private int teacheridl;

    @Override
    public String toString() {
        return "NewStudent{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", score=" + score +
                ", subject=" + subject +
                ", teacheridl=" + teacheridl +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getSubject() {
        return subject;
    }

    public void setSubject(int subject) {
        this.subject = subject;
    }

    public int getTeacheridl() {
        return teacheridl;
    }

    public void setTeacheridl(int teacheridl) {
        this.teacheridl = teacheridl;
    }
}
