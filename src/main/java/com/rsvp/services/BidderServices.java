package com.rsvp.services;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rsvp.component.BidEndingTime;
import com.rsvp.entity.BidDetails;
import com.rsvp.entity.Bidder;
import com.rsvp.entity.Crop;
import com.rsvp.entity.DetailsBidder;
import com.rsvp.entity.Login;
import com.rsvp.exception.kisaanException;
import com.rsvp.repository.BidderRepository;

@Service 
public class BidderServices {

	@Autowired
	BidderRepository bidderRepository;
	
	@Autowired
	BidEndingTime bidEndingTime;

	public void saveBidder(Bidder bidder,Login login,DetailsBidder detailsBidder) {
		bidderRepository.saveBidder(bidder, login, detailsBidder);
	}

	public Login loginBidder(String email, String password) throws kisaanException {

		try {
			Login loginBidder = bidderRepository.loginBidder(email, password);
			return loginBidder;
		} catch (Exception e) {
			throw new kisaanException("Unable to Login.Please try again!!!", e);
		}

	}

	public List<Crop> fetchAllCropsForSale() {
		
		List<Crop> finalcropslist = new ArrayList<Crop>();
		LocalDate date = LocalDate.now(); 
		List<Crop> crops = bidderRepository.fetchAllCropsForSale(date);
		
		LocalTime  time = LocalTime.now();
		if(time.getHour()<bidEndingTime.getBidEndingTime().getHour()) {
			List<Crop> crops2 = bidderRepository.fetchAllCropsForSale1(date);
			crops.addAll(crops2);
		}
		return crops;
	}

	public Bidder fetchBidderInfo(int userId) throws kisaanException {
		try {
			Bidder bidder=bidderRepository.fetchBidderInfo(userId);
			return bidder;
			}catch (Exception e) {
				throw new kisaanException("invalid login credentials");
			}
	}
	public Bidder fetchBidderInf(int userId) {
		return bidderRepository.fetchBidderInf(userId);
	}

	public void addCropBiddingDeatils(BidDetails detailsOfABid, Crop crop) throws kisaanException {

		try {
			bidderRepository.addCropBiddingDetails(detailsOfABid, crop);
		} catch (Exception e) {
			throw new kisaanException("Unable to Add biiding details.Please try again for bidding", e);
		}
	}

	public Crop fetchCropById(int cropId) {

		return bidderRepository.fetchCropById(cropId);

	}

	public List<BidDetails> viewAllActiveBidsOfABidder(int bidderId) {

		return bidderRepository.viewAllActiveBidsOfABidder(bidderId);

	}

	public List<BidDetails> viewAllSuccessfulBidsOfABidder(int bidderId) {

		return bidderRepository.viewAllSuccessfulBidsOfABidder(bidderId);

	}
	
	public List<BidDetails> viewAllUnsuccessfulBidsOfABidder(int bidderId) {

		return bidderRepository.viewAllUnsuccessfulBidsOfABidder(bidderId);

	}
	public Login isEmailUnique(String email) throws kisaanException {

		try{
		Login login = bidderRepository.isEmailUnique(email);
		if(login!=null) {
		return login;
		}
		return null;
		}
		catch (Exception e) {
		throw new kisaanException("No such email present");
		}

		}

}
