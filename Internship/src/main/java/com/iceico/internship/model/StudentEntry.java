/**
 * 
 */
package com.iceico.internship.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.iceico.internship.audit.Auditable;

/**
 * @author SAMEER KADGAYE
 * @version 0.1
 * 
 *          Created Date : 27/12/2019
 *
 */

@Entity
@Table(name = "tab_student_entry")
@EntityListeners(AuditingEntityListener.class)
public class StudentEntry extends Auditable<String> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1841127238736191159L;

	/**
	 * 
	 */
	public StudentEntry() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_entry_id")
	private Long studentEntryId;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "middle_name")
	private String middleName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "fees")
	private Float feesAmount;

	@Column(name = "discount")
	private Float discount;

	@Column(name = "extension")
	private String extension;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "date")
	private Date date;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "internDurId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private InternshipDuration internshipDuration;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "sessionId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private InternshipSession internshipSession;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "internTypeId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private InternshipType internshipType;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "financialYearId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private FinancialYear financialYear;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "collegeId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private College college;

	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "departmentId", insertable = true, nullable = true, updatable = true)
	@JsonIgnore
	private Department department;

	@JsonIgnore
	@OneToMany(mappedBy = "studentEntry", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Fees> fees;

	/**
	 * @param studentEntryId
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param feesAmount
	 * @param discount
	 * @param extension
	 * @param date
	 * @param internshipDuration
	 * @param internshipSession
	 * @param internshipType
	 * @param financialYear
	 * @param college
	 * @param department
	 * @param fees
	 */
	public StudentEntry(Long studentEntryId, String firstName, String middleName, String lastName, Float feesAmount,
			Float discount, String extension, Date date, InternshipDuration internshipDuration,
			InternshipSession internshipSession, InternshipType internshipType, FinancialYear financialYear,
			College college, Department department, List<Fees> fees) {
		super();
		this.studentEntryId = studentEntryId;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.feesAmount = feesAmount;
		this.discount = discount;
		this.extension = extension;
		this.date = date;
		this.internshipDuration = internshipDuration;
		this.internshipSession = internshipSession;
		this.internshipType = internshipType;
		this.financialYear = financialYear;
		this.college = college;
		this.department = department;
		this.fees = fees;
	}

	/**
	 * @return the studentEntryId
	 */
	public Long getStudentEntryId() {
		return studentEntryId;
	}

	/**
	 * @param studentEntryId the studentEntryId to set
	 */
	public void setStudentEntryId(Long studentEntryId) {
		this.studentEntryId = studentEntryId;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the feesAmount
	 */
	public Float getFeesAmount() {
		return feesAmount;
	}

	/**
	 * @param feesAmount the feesAmount to set
	 */
	public void setFeesAmount(Float feesAmount) {
		this.feesAmount = feesAmount;
	}

	/**
	 * @return the discount
	 */
	public Float getDiscount() {
		return discount;
	}

	/**
	 * @param discount the discount to set
	 */
	public void setDiscount(Float discount) {
		this.discount = discount;
	}

	/**
	 * @return the extension
	 */
	public String getExtension() {
		return extension;
	}

	/**
	 * @param extension the extension to set
	 */
	public void setExtension(String extension) {
		this.extension = extension;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	/**
	 * @return the internshipDuration
	 */
	public InternshipDuration getInternshipDuration() {
		return internshipDuration;
	}

	/**
	 * @param internshipDuration the internshipDuration to set
	 */
	public void setInternshipDuration(InternshipDuration internshipDuration) {
		this.internshipDuration = internshipDuration;
	}

	/**
	 * @return the internshipSession
	 */
	public InternshipSession getInternshipSession() {
		return internshipSession;
	}

	/**
	 * @param internshipSession the internshipSession to set
	 */
	public void setInternshipSession(InternshipSession internshipSession) {
		this.internshipSession = internshipSession;
	}

	/**
	 * @return the internshipType
	 */
	public InternshipType getInternshipType() {
		return internshipType;
	}

	/**
	 * @param internshipType the internshipType to set
	 */
	public void setInternshipType(InternshipType internshipType) {
		this.internshipType = internshipType;
	}

	/**
	 * @return the financialYear
	 */
	public FinancialYear getFinancialYear() {
		return financialYear;
	}

	/**
	 * @param financialYear the financialYear to set
	 */
	public void setFinancialYear(FinancialYear financialYear) {
		this.financialYear = financialYear;
	}

	/**
	 * @return the college
	 */
	public College getCollege() {
		return college;
	}

	/**
	 * @param college the college to set
	 */
	public void setCollege(College college) {
		this.college = college;
	}

	/**
	 * @return the department
	 */
	public Department getDepartment() {
		return department;
	}

	/**
	 * @param department the department to set
	 */
	public void setDepartment(Department department) {
		this.department = department;
	}

	/**
	 * @return the fees
	 */
	public List<Fees> getFees() {
		return fees;
	}

	/**
	 * @param fees the fees to set
	 */
	public void setFees(List<Fees> fees) {
		this.fees = fees;
	}

}
