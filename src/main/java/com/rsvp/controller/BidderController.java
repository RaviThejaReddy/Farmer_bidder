package com.rsvp.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.rsvp.entity.BidDetails;
import com.rsvp.entity.Bidder;
import com.rsvp.entity.Crop;
import com.rsvp.entity.DetailsBidder;
import com.rsvp.entity.Login;
import com.rsvp.exception.kisaanException;
import com.rsvp.services.BidderServices;
import com.rsvp.services.SendMailService;

@Controller
@SessionAttributes({ "loggedBidder", "activeBidDetails", "unsuccessfulBidDetails", "successfulBidDetails",
		"biddername" })
public class BidderController {

	@Autowired
	BidderServices bidderServices;

	@Autowired
	private SendMailService sendMailService;

//	@RequestMapping(path = "/addFarmer.rsvp", method = RequestMethod.POST)
//	public String addFarmer(Bidder bidder, ModelMap model) {
//
//		try {
//			Bidder bidder1 = bidderServices.addFarmer(bidder);
//			model.put("bidder1", bidder1);
//			return "successfulregistration.jsp";
//		} catch (kisaanException e) {
//			return "bidderregistration.jsp";
//
//		}
//
//	}
	@SuppressWarnings("finally")
	@RequestMapping(path = "/registerbidder.rsvp")
	public String saveBidder(Bidder bidder, Login login, DetailsBidder detailsBidder,
			@RequestParam("bidderAadhaarfile") MultipartFile bidderAadhaarfile,
			@RequestParam("bidderCertificatefile") MultipartFile bidderCertificatefile,
			@RequestParam("bidderPanfile") MultipartFile bidderPanfile, ModelMap model)
			throws kisaanException, Exception {
		try {
			Login login2 = bidderServices.isEmailUnique(login.getEmail());
			if (login2 != null) {
				model.put("err", "you already have an account try login");
				return "bidderregistration.jsp";
			} else {
				String pathAadhar = "d:/uploads/aadhar/";
				String pathCertificate = "d:/uploads/cartificate/";
				String pathPan = "d:/uploads/pan/";
				String Aadhar = pathAadhar + bidder.getBidderFullName() + bidderAadhaarfile.getOriginalFilename();
				String Certificate = pathCertificate + bidder.getBidderFullName()
						+ bidderCertificatefile.getOriginalFilename();
				String Pan = pathPan + bidder.getBidderFullName() + bidderPanfile.getOriginalFilename();
				try {
					bidderAadhaarfile.transferTo(new File(Aadhar));
					bidderCertificatefile.transferTo(new File(Certificate));
					bidderPanfile.transferTo(new File(Pan));
				} catch (IOException e) {
					e.printStackTrace();
				}
				detailsBidder.setBidderPan(bidder.getBidderFullName() + bidderAadhaarfile.getOriginalFilename());
				detailsBidder
						.setBidderAadhaar(bidder.getBidderFullName() + bidderCertificatefile.getOriginalFilename());
				detailsBidder.setBidderTraderLicense(bidder.getBidderFullName() + bidderPanfile.getOriginalFilename());
				bidderServices.saveBidder(bidder, login, detailsBidder);
				try {
					sendMailService.send(bidder.getLogin().getEmail(), "wellcome to kisaan humari jaan",
							"Thanxs for registering with kisaanRSVP");
					model.put("success", "you got registred successfully");
					return "displaysusscess.jsp";
				} catch (Exception e) {
					model.put("successs", "you got registred successfully");
					model.put("success", "couldnt send mail");
					return "displaysusscess.jsp";
				}
			}
		} catch (Exception eq) {
			String pathAadhar = "d:/uploads/aadhar/";
			String pathCertificate = "d:/uploads/cartificate/";
			String pathPan = "d:/uploads/pan/";
			String Aadhar = pathAadhar + bidder.getBidderFullName() + bidderAadhaarfile.getOriginalFilename();
			String Certificate = pathCertificate + bidder.getBidderFullName()
					+ bidderCertificatefile.getOriginalFilename();
			String Pan = pathPan + bidder.getBidderFullName() + bidderPanfile.getOriginalFilename();
			try {
				bidderAadhaarfile.transferTo(new File(Aadhar));
				bidderCertificatefile.transferTo(new File(Certificate));
				bidderPanfile.transferTo(new File(Pan));
			} catch (IOException e) {
			}
			detailsBidder.setBidderPan(bidder.getBidderFullName() + bidderAadhaarfile.getOriginalFilename());
			detailsBidder.setBidderAadhaar(bidder.getBidderFullName() + bidderCertificatefile.getOriginalFilename());
			detailsBidder.setBidderTraderLicense(bidder.getBidderFullName() + bidderPanfile.getOriginalFilename());
			bidderServices.saveBidder(bidder, login, detailsBidder);
			try {
				sendMailService.send(bidder.getLogin().getEmail(), "wellcome to kisaan humari jaan",
						"Thanxs for registering with kisaanRSVP");
				model.put("success", "you got registred successfully");
				return "displaysusscess.jsp";
			} catch (Exception e) {
				model.put("successs", "you got registred successfully");
				model.put("success", "couldnt send mail");
				return "displaysusscess.jsp";
			}
		}
	}

	@RequestMapping(path = "/loginbidder.rsvp", method = RequestMethod.POST)
	public String loginBidder(Login login, ModelMap model, HttpServletRequest request) throws kisaanException {
		try {
			Login loginBidder = bidderServices.loginBidder(login.getEmail(), login.getPassword());
			Bidder bidder = bidderServices.fetchBidderInfo(loginBidder.getUserId());
			model.put("loggedBidder", bidder);
			model.put("biddername", bidder.getBidderFullName());
			return "bidderdashboard.jsp";
		} catch (Exception e) {
			// setHeaderToRefreshAfter5secondsand reason is invalid bidder credentials
			model.put("invalidcredentials", "failed to login");
			return "HomePage.jsp";
		}
	}

	@RequestMapping(path = "/reloadbidderdashboard.rsvp")
	public String reloaddashboard(ModelMap model) {
		Bidder loginBidder = (Bidder) model.get("loggedBidder");
		Bidder bidder = bidderServices.fetchBidderInf(loginBidder.getBidderId());
		model.put("loggedBidder", bidder);
		model.put("biddername", bidder.getBidderFullName());
		return "bidderdashboard.jsp";
	}

	@RequestMapping(path = "/fetchallcrops.rsvp")
	public String fetchAllCropsForSale(ModelMap model) {
		List<Crop> crops;
		try {
			crops = bidderServices.fetchAllCropsForSale();
			model.put("cropsList", crops);
			return "bidcropsNew.jsp";
		} catch (Exception e) {
			model.put("nocrops", "No Crops Available Currently For Bid");
			return "bidcropsNew.jsp";
		}
	}

	@RequestMapping(path = "/bidding.rsvp")
	public String addCropBiddingDeatils(@RequestParam("bidthiscrop") int cropId,
			@RequestParam("bidamount") int bidAmount, ModelMap model) throws kisaanException {

		Crop crop = bidderServices.fetchCropById(cropId);
		BidDetails detailsOfABid = new BidDetails();
		detailsOfABid.setBidAmount(bidAmount);
		detailsOfABid.setBidStatus("active");
		Bidder bidder = (Bidder) model.get("loggedBidder");
		detailsOfABid.setBidderBid(bidder);

		detailsOfABid.setCropBid(crop);
		bidderServices.addCropBiddingDeatils(detailsOfABid, crop);
		model.put("successfullbidmsg", " Bid successfully placed ");

		List<Crop> crops = bidderServices.fetchAllCropsForSale();
		model.put("cropsList", crops);
		return "bidcropsNew.jsp";

	}

	@RequestMapping("/activebids.rsvp")
	public String viewAllActiveBidsOfABidder(ModelMap model) {

		Bidder bidder = (Bidder) model.get("loggedBidder");

		List<BidDetails> bidDetails = bidderServices.viewAllActiveBidsOfABidder(bidder.getBidderId());
		model.put("activeBidDetails", bidDetails);
		System.out.println(bidDetails.size());
		return "redirect:/unsuccessfulbids.rsvp";

	}

	@RequestMapping("/unsuccessfulbids.rsvp")
	public String viewAllUnsuccessfulBidsOfABidder(ModelMap model) {

		Bidder bidder = (Bidder) model.get("loggedBidder");
		List<BidDetails> bidDetails = bidderServices.viewAllUnsuccessfulBidsOfABidder(bidder.getBidderId());
		model.put("unsuccessfulBidDetails", bidDetails);
		return "redirect:/successfulbids.rsvp";
	}

	@RequestMapping("/successfulbids.rsvp")
	public String viewAllSuccessfulBidsOfABidder(ModelMap model) {
		Bidder bidder = (Bidder) model.get("loggedBidder");
		List<BidDetails> bidDetails = bidderServices.viewAllSuccessfulBidsOfABidder(bidder.getBidderId());
		model.put("successfulBidDetails", bidDetails);
		return "viewyourbids.jsp";
	}

	@RequestMapping(path = "logoutGeneral.rsvp")
	public String logoutBidder(HttpSession session, ModelMap model) {
		session.invalidate();
		model.put("logoutmsg", "logged out successfully");
		return "HomePage.jsp";
	}
}
