package com.achieve.subjectTable;

public class SubjectTable {
    private String subject;
    private String subjectTeacher;
    private String clazz;
    private int id;
    private String name;
    public SubjectTable() {
    }

    public SubjectTable(String subject, String subjectTeacher, String clazz, int id, String name) {
        this.subject = subject;
        this.subjectTeacher = subjectTeacher;
        this.clazz = clazz;
        this.id = id;
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSubjectTeacher() {
        return subjectTeacher;
    }

    public void setSubjectTeacher(String subjectTeacher) {
        this.subjectTeacher = subjectTeacher;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
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

}
