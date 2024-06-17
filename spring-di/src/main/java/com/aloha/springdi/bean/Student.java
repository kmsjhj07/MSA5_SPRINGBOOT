package com.aloha.springdi.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Student extends Person {
    
    private int StudentId;
    private String grade;
    // ctrl + . : quick fix
    public Student() {
        super();
        this.StudentId = 1001;
        this.grade = "1";
    }

    @Override
    public String toString() {
        return "Student [StudentId=" + StudentId + ", grade=" + grade + ", getAge()=" + getAge() + ", getName()="
                + getName() + "]";
    }

    
}
