package com.et59.cus.domain.entity;

public class TDepartmentWithBLOBs extends TDepartment {
    /**
     * This field was generated by Apache iBATIS ibator.
     * This field corresponds to the database column t_department.departmentIntroduction
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    private String departmentintroduction;

    /**
     * This field was generated by Apache iBATIS ibator.
     * This field corresponds to the database column t_department.departmentDirection
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    private String departmentdirection;

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method returns the value of the database column t_department.departmentIntroduction
     *
     * @return the value of t_department.departmentIntroduction
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    public String getDepartmentintroduction() {
        return departmentintroduction;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method sets the value of the database column t_department.departmentIntroduction
     *
     * @param departmentintroduction the value for t_department.departmentIntroduction
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    public void setDepartmentintroduction(String departmentintroduction) {
        this.departmentintroduction = departmentintroduction;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method returns the value of the database column t_department.departmentDirection
     *
     * @return the value of t_department.departmentDirection
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    public String getDepartmentdirection() {
        return departmentdirection;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method sets the value of the database column t_department.departmentDirection
     *
     * @param departmentdirection the value for t_department.departmentDirection
     *
     * @ibatorgenerated Tue Mar 24 14:56:05 CST 2015
     */
    public void setDepartmentdirection(String departmentdirection) {
        this.departmentdirection = departmentdirection;
    }
}