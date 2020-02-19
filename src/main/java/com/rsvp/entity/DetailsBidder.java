package com.rsvp.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_KISAANDETAILSBIDDER")
public class DetailsBidder {

	@Id
	@GeneratedValue
	private int bidderDetailsId;
	private String bidderAddressLine1;
	private String bidderAddressLine2;
	private String bidderCity;
	private String bidderState;
	private int bidderPinCode;
	private int bidderAccountNo;
	private String bidderIFSCCode;
	private String bidderAadhaar;
	private String bidderPan;
	private String bidderTraderLicense;
	
	@OneToOne
	@JoinColumn(name = "bidderId")
	Bidder bidderDetails;

	public int getBidderDetailsId() {
		return bidderDetailsId;
	}

	public void setBidderDetailsId(int bidderDetailsId) {
		this.bidderDetailsId = bidderDetailsId;
	}

	public String getBidderAddressLine1() {
		return bidderAddressLine1;
	}

	public void setBidderAddressLine1(String bidderAddressLine1) {
		this.bidderAddressLine1 = bidderAddressLine1;
	}

	public String getBidderAddressLine2() {
		return bidderAddressLine2;
	}

	public void setBidderAddressLine2(String bidderAddressLine2) {
		this.bidderAddressLine2 = bidderAddressLine2;
	}

	public String getBidderCity() {
		return bidderCity;
	}

	public void setBidderCity(String bidderCity) {
		this.bidderCity = bidderCity;
	}

	public String getBidderState() {
		return bidderState;
	}

	public void setBidderState(String bidderState) {
		this.bidderState = bidderState;
	}

	public int getBidderPinCode() {
		return bidderPinCode;
	}

	public void setBidderPinCode(int bidderPinCode) {
		this.bidderPinCode = bidderPinCode;
	}

	public int getBidderAccountNo() {
		return bidderAccountNo;
	}

	public void setBidderAccountNo(int bidderAccountNo) {
		this.bidderAccountNo = bidderAccountNo;
	}

	public String getBidderIFSCCode() {
		return bidderIFSCCode;
	}

	public void setBidderIFSCCode(String bidderIFSCCode) {
		this.bidderIFSCCode = bidderIFSCCode;
	}

	public String getBidderAadhaar() {
		return bidderAadhaar;
	}

	public void setBidderAadhaar(String bidderAadhaar) {
		this.bidderAadhaar = bidderAadhaar;
	}

	public String getBidderPan() {
		return bidderPan;
	}

	public void setBidderPan(String bidderPan) {
		this.bidderPan = bidderPan;
	}

	public String getBidderTraderLicense() {
		return bidderTraderLicense;
	}

	public void setBidderTraderLicense(String bidderTraderLicense) {
		this.bidderTraderLicense = bidderTraderLicense;
	}

	public Bidder getBidderDetails() {
		return bidderDetails;
	}

	public void setBidderDetails(Bidder bidderDetails) {
		this.bidderDetails = bidderDetails;
	}

	@Override
	public String toString() {
		return "DetailsBidder [bidderDetailsId=" + bidderDetailsId + ", bidderAddressLine1=" + bidderAddressLine1
				+ ", bidderAddressLine2=" + bidderAddressLine2 + ", bidderCity=" + bidderCity + ", bidderState="
				+ bidderState + ", bidderPinCode=" + bidderPinCode + ", bidderAccountNo=" + bidderAccountNo
				+ ", bidderIFSCCode=" + bidderIFSCCode + ", bidderAadhaar=" + bidderAadhaar + ", bidderPan=" + bidderPan
				+ ", bidderTraderLicense=" + bidderTraderLicense + ", bidderDetails=" + bidderDetails + "]";
	}
	
	
}
