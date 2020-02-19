package com.rsvp.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_KISAANINSURANCE")
public class Insurance {

	@Id
	@GeneratedValue
	private int insuranceId;
	
	@GeneratedValue
	private int policyNo;
	
	private String Season;
	private LocalDate year;
	private String cropName;
	private int sumInsured;
	private int area;
	private String insuranceCompany;
	private String nameOfInsuree;
	private String causeOfLoss;
	private LocalDate dateOfLoss;
	private String claimStatus;
	
	@ManyToOne
	@JoinColumn(name = "farmerId")
	Farmer farmers;

	public int getInsuranceId() {
		return insuranceId;
	}

	public void setInsuranceId(int insuranceId) {
		this.insuranceId = insuranceId;
	}

	public int getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(int policyNo) {
		this.policyNo = policyNo;
	}

	public String getSeason() {
		return Season;
	}

	public void setSeason(String season) {
		Season = season;
	}

	public LocalDate getYear() {
		return year;
	}

	public void setYear(LocalDate year) {
		this.year = year;
	}

	public String getCropName() {
		return cropName;
	}

	public void setCropName(String cropName) {
		this.cropName = cropName;
	}

	public int getSumInsured() {
		return sumInsured;
	}

	public void setSumInsured(int sumInsured) {
		this.sumInsured = sumInsured;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public String getInsuranceCompany() {
		return insuranceCompany;
	}

	public void setInsuranceCompany(String insuranceCompany) {
		this.insuranceCompany = insuranceCompany;
	}

	public String getNameOfInsuree() {
		return nameOfInsuree;
	}

	public void setNameOfInsuree(String nameOfInsuree) {
		this.nameOfInsuree = nameOfInsuree;
	}

	public String getCauseOfLoss() {
		return causeOfLoss;
	}

	public void setCauseOfLoss(String causeOfLoss) {
		this.causeOfLoss = causeOfLoss;
	}

	public LocalDate getDateOfLoss() {
		return dateOfLoss;
	}

	public void setDateOfLoss(LocalDate dateOfLoss) {
		this.dateOfLoss = dateOfLoss;
	}

	public String getClaimStatus() {
		return claimStatus;
	}

	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}

	public Farmer getFarmers() {
		return farmers;
	}

	public void setFarmers(Farmer farmers) {
		this.farmers = farmers;
	}

	@Override
	public String toString() {
		return "Insurance [insuranceId=" + insuranceId + ", policyNo=" + policyNo + ", Season=" + Season + ", year="
				+ year + ", cropName=" + cropName + ", sumInsured=" + sumInsured + ", area=" + area
				+ ", insuranceCompany=" + insuranceCompany + ", nameOfInsuree=" + nameOfInsuree + ", causeOfLoss="
				+ causeOfLoss + ", dateOfLoss=" + dateOfLoss + ", claimStatus=" + claimStatus + ", farmers=" + farmers
				+ "]";
	}

}
