package model;

import java.time.LocalDate;

public class Employee {
    private int id;
    private String name;
    private String salary;
    private LocalDate create_date;

    public Employee() {
    }

    public Employee(int id, String name, String salary, LocalDate create_date) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        this.create_date = create_date;
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

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public LocalDate getCreate_date() {
        return create_date;
    }

    public void setCreate_date(LocalDate create_date) {
        this.create_date = create_date;
    }
}
