package com.et59.cus.domain.entity;

public class TTeacherWithBLOBs extends TTeacher {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database column t_teacher.content
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	private String content;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database column t_teacher.introduction
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	private String introduction;

	/**
	 * This method was generated by Apache iBATIS ibator. This method returns the value of the database column t_teacher.content
	 * @return  the value of t_teacher.content
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	public String getContent() {
		return content;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method sets the value of the database column t_teacher.content
	 * @param content  the value for t_teacher.content
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method returns the value of the database column t_teacher.introduction
	 * @return  the value of t_teacher.introduction
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	public String getIntroduction() {
		return introduction;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method sets the value of the database column t_teacher.introduction
	 * @param introduction  the value for t_teacher.introduction
	 * @ibatorgenerated  Thu Apr 09 13:51:52 CST 2015
	 */
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
}