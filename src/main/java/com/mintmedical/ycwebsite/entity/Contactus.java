package com.mintmedical.ycwebsite.entity;

public class Contactus {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contactus.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contactus.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contactus.email
     *
     * @mbggenerated
     */
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contactus.text
     *
     * @mbggenerated
     */
    private String text;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contactus.id
     *
     * @return the value of contactus.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contactus.id
     *
     * @param id the value for contactus.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contactus.name
     *
     * @return the value of contactus.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contactus.name
     *
     * @param name the value for contactus.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contactus.email
     *
     * @return the value of contactus.email
     *
     * @mbggenerated
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contactus.email
     *
     * @param email the value for contactus.email
     *
     * @mbggenerated
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contactus.text
     *
     * @return the value of contactus.text
     *
     * @mbggenerated
     */
    public String getText() {
        return text;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contactus.text
     *
     * @param text the value for contactus.text
     *
     * @mbggenerated
     */
    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }
}