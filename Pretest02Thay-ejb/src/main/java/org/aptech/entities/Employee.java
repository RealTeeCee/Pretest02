package org.aptech.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "Employee")
public class Employee implements Serializable {

    public Employee() {
    }

    @Id
    @Column(name = "EmployeeId", columnDefinition = "vachar(10)")
    private String employeeId;

    @Column(name = "EmployeeName", columnDefinition = "varchar(50)")
    private String employeeName;

    //Set de khi Insert ko trung neu co hashcode.equal
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "Employee_Company",
            joinColumns = @JoinColumn(name="employee_id"),
            inverseJoinColumns = @JoinColumn(name = "company_id")
    )

    private Set<Company> companies;

    @OneToMany(mappedBy = "employee", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Course> courses;

    public Set<Course> getCourses() {
        return courses;
    }

    public void setCourses(Set<Course> courses) {
        this.courses = courses;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Set<Company> getCompanies() {
        return companies;
    }

    public void setCompanies(Set<Company> companies) {
        this.companies = companies;
    }
}
