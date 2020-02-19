package com.rsvp.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_KISAANBID")
public class BidDetails {

	@Id
	@GeneratedValue
	private int bidId;
	private int bidAmount;
	private String bidStatus;
	
	@ManyToOne
	@JoinColumn(name = "bidderId")
	Bidder bidderBid;
	
	@ManyToOne
	@JoinColumn(name = "cropId")
	Crop cropBid;

	public int getBidId() {
		return bidId;
	}

	public void setBidId(int bidId) {
		this.bidId = bidId;
	}

	public int getBidAmount() {
		return bidAmount;
	}

	public void setBidAmount(int bidAmount) {
		this.bidAmount = bidAmount;
	}

	public String getBidStatus() {
		return bidStatus;
	}

	public void setBidStatus(String bidStatus) {
		this.bidStatus = bidStatus;
	}

	public Bidder getBidderBid() {
		return bidderBid;
	}

	public void setBidderBid(Bidder bidderBid) {
		this.bidderBid = bidderBid;
	}

	public Crop getCropBid() {
		return cropBid;
	}

	public void setCropBid(Crop cropBid) {
		this.cropBid = cropBid;
	}

	@Override
	public String toString() {
		return "Bid [bidId=" + bidId + ", bidAmount=" + bidAmount + ", bidStatus=" + bidStatus + ", bidderBid="
				+ bidderBid + ", cropBid=" + cropBid + "]";
	}
	
	
	
}
