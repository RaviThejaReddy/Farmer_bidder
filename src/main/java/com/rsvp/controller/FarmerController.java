package com.rsvp.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Stream;

import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.rsvp.entity.BidDetails;
import com.rsvp.entity.Crop;
import com.rsvp.entity.DetailsFarmer;
import com.rsvp.entity.Farmer;
import com.rsvp.entity.Insurance;
import com.rsvp.entity.Login;
import com.rsvp.exception.kisaanException;
import com.rsvp.services.BidderServices;
import com.rsvp.services.FarmerServices;
import com.rsvp.services.SendMailService;
import com.sun.mail.iap.Response;

@Controller
@SessionAttributes({ "farmerInFo", "logincredentials", "listofnonactivecrop", "listofunsoldcrops" })
public class FarmerController {

	@Autowired
	private FarmerServices farmerServices;

	@Autowired
	private SendMailService sendMailService;

	@RequestMapping(path = "/loginfarmers.rsvp", method = RequestMethod.POST)
	public String loginFarmer(Login login, ModelMap model) {
		Login loginFarmer;
		try {
			loginFarmer = farmerServices.login(login.getEmail(), login.getPassword());
			Farmer farmer = farmerServices.fetchFarmerInfo(loginFarmer.getUserId());
			List<Crop> listofnonactivecrops = farmerServices.nonactivecrops(farmer.getFarmerId());
			List<Crop> listofunsoldCrops = farmerServices.UnSoldcrops(farmer.getFarmerId());
			model.put("listofnonactivecrop", listofnonactivecrops);
			model.put("listofunsoldcrops", listofunsoldCrops);
			model.put("logincredentials", loginFarmer);
			model.put("farmerInFo", farmer);
			return "farmerdashbord.jsp";
		} catch (kisaanException e) {
			model.put("invalidcredentials", "Invalid login credentials");
			return "HomePage.jsp";
		}
	}

	@RequestMapping(path = "/dashboard.rsvp")
	public String dashboardthings(ModelMap model) {
		Farmer farmer = (Farmer) model.get("farmerInFo");
		List<Crop> listofnonactivecrops = farmerServices.nonactivecrops(farmer.getFarmerId());
		List<Crop> listofunsoldCrops = farmerServices.UnSoldcrops(farmer.getFarmerId());
		model.put("listofunsoldcrops", listofunsoldCrops);
		model.put("listofnonactivecrop", listofnonactivecrops);
		return "farmerdashbord.jsp";
	}

	@RequestMapping(path = "/resetpasswordfarmer.rsvp", method = RequestMethod.POST)
	public String resetpassword(Login login) {
		farmerServices.resetpassword(login);
		return "typeofuser.jsp";

	}

	@RequestMapping(path = "/forgotpasswordgeneral.rsvp", method = RequestMethod.POST)
	public String forgotPassword(@RequestParam("email") String emial, ModelMap model) throws kisaanException {
		Login loginGeneral = farmerServices.forgotPassword(emial);
		// sendMailService.send(loginFarmer.getEmail(), "your password is
		// reterived",loginFarmer.password );

		sendMailService.send(loginGeneral.getEmail(), "your password is reterived",
				"Hi this is your password" + loginGeneral.getPassword() + "and mail id is" + loginGeneral.getEmail()
						+ "and userid is" + loginGeneral.getUserId());
		model.put("mailthings", "has been sent your Mail");
		return "gotpasswordback.jsp";
	}

	@RequestMapping(path = "/registrationFarmer.rsvp", method = RequestMethod.POST)
	public String saveAFarmer(Farmer farmer, Login login, DetailsFarmer detailsFarmer,
			@RequestParam("farmerAadhaarfile") MultipartFile farmerAadhaarfile,
			@RequestParam("farmerCertificatefile") MultipartFile farmerCertificatefile,
			@RequestParam("farmerPanfile") MultipartFile farmerPanfile, ModelMap model)
			throws kisaanException, Exception {
		
		try {
			Login login2 = farmerServices.isEmailUnique(login.getEmail());
			if (login2 != null) {
				model.put("err", "you already have an account try login");
				return "FarmerRegistration.jsp";
			} else {
				String pathAadhar = "d:/uploads/aadhar/";
				String pathCertificate = "d:/uploads/cartificate/";
				String pathPan = "d:/uploads/pan/";
				String Aadhar = pathAadhar + farmer.getFarmerFullName() + farmerAadhaarfile.getOriginalFilename();
				String Certificate = pathCertificate + farmer.getFarmerFullName()
						+ farmerCertificatefile.getOriginalFilename();
				String Pan = pathPan + farmer.getFarmerFullName() + farmerPanfile.getOriginalFilename();
				try {
					farmerAadhaarfile.transferTo(new File(Aadhar));
					farmerCertificatefile.transferTo(new File(Certificate));
					farmerPanfile.transferTo(new File(Pan));
				} catch (IOException e) {
					e.printStackTrace();
				}
				detailsFarmer.setFarmerPan(farmer.getFarmerFullName() + farmerAadhaarfile.getOriginalFilename());
				detailsFarmer
						.setFarmerAadhaar(farmer.getFarmerFullName() + farmerCertificatefile.getOriginalFilename());
				detailsFarmer.setFarmerCertificate(farmer.getFarmerFullName() + farmerPanfile.getOriginalFilename());
				farmerServices.saveFarmer(farmer, login, detailsFarmer);
				try {
					sendMailService.send(farmer.getLogin().getEmail(), "wellcome to kisaan humari jaan",
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
			String Aadhar = pathAadhar + farmer.getFarmerFullName() + farmerAadhaarfile.getOriginalFilename();
			String Certificate = pathCertificate + farmer.getFarmerFullName()
					+ farmerCertificatefile.getOriginalFilename();
			String Pan = pathPan + farmer.getFarmerFullName() + farmerPanfile.getOriginalFilename();
			try {
				farmerAadhaarfile.transferTo(new File(Aadhar));
				farmerCertificatefile.transferTo(new File(Certificate));
				farmerPanfile.transferTo(new File(Pan));
			} catch (IOException e) {
				e.printStackTrace();
			}
			detailsFarmer.setFarmerPan(farmer.getFarmerFullName() + farmerAadhaarfile.getOriginalFilename());
			detailsFarmer.setFarmerAadhaar(farmer.getFarmerFullName() + farmerCertificatefile.getOriginalFilename());
			detailsFarmer.setFarmerCertificate(farmer.getFarmerFullName() + farmerPanfile.getOriginalFilename());
			farmerServices.saveFarmer(farmer, login, detailsFarmer);
			try {
				sendMailService.send(farmer.getLogin().getEmail(), "wellcome to kisaan humari jaan",
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

	@RequestMapping(path = "/sellyourcrop.rsvp", method = RequestMethod.POST)
	public String sellYourCrop(Login login, Crop crop, ModelMap model,
			@RequestParam("soilphcertificateFile") MultipartFile cropSoilPHCertificate) throws kisaanException {
		String pathSoilPHCertificate = "d:/uploads/SoilPHCertificate/";
		String SoilPHCertificate = pathSoilPHCertificate + login.getEmail()
				+ cropSoilPHCertificate.getOriginalFilename();
		try {
			cropSoilPHCertificate.transferTo(new File(pathSoilPHCertificate));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Farmer farmer = (Farmer) model.get("farmerInFo");
		crop.setCropSoilPHCertificate(login.getEmail() + cropSoilPHCertificate.getOriginalFilename());
		farmerServices.placeSellRequest(crop, farmer.getFarmerId());
		return "redirect:/dashboard.rsvp";
	}

	@RequestMapping(path = "/viewsoldcrophistory.rsvp")
	public String viewSoldCropHistory(ModelMap model) throws kisaanException {
		Farmer farmer = (Farmer) model.get("farmerInFo");
		List<Crop> list = farmerServices.viewSoldCropHistory(farmer.getFarmerId());
		model.put("ListOfCrops", list);
		return "viewsoldcrophistory.jsp";
	}

	@RequestMapping(path = "/viewmarketplace.rsvp")
	public String viewMarketPlaceByFarmerId(ModelMap model) {
		Farmer farmer = (Farmer) model.get("farmerInFo");
		List<Crop> cropsByFarmerId;
		try {
			cropsByFarmerId = farmerServices.viewMarketPlaceByFarmerId(farmer.getFarmerId());
			model.put("listofcropsbyfarmerid", cropsByFarmerId);
			return "viewmarketplace.jsp";
		} catch (kisaanException e) {
			model.put("errortab", "nothing found for this farmer");
			return "viewmarketplace.jsp";
		}
	}

	@RequestMapping(path = "/view.rsvp")
	public String viewMarketPlaceForCropId(@RequestParam("cropId") int cropid, ModelMap model) {
		Crop cropbyCropId;
		int maxBid;
		try {
			cropbyCropId = farmerServices.viewMarketPlaceByCropId(cropid);
			List<BidDetails> bidDetailsForCropId = farmerServices.viewMarketPlaceby(cropid);
			List<Integer> amount = new ArrayList<Integer>();
			for (BidDetails bid : bidDetailsForCropId) {
				amount.add(bid.getBidAmount());
			}
			try {
				maxBid = Collections.max(amount);
				cropbyCropId.setCropCurrentBid(maxBid);
				cropbyCropId.setCropActiveStatus("yes");
				Farmer farmer = (Farmer) model.get("farmerInFo");
				LocalDate currentdate = LocalDate.now();
				if (currentdate.compareTo(cropbyCropId.getCropLastDateForBid()) > 0) {
					cropbyCropId.setCropSoldPrice(maxBid);
					cropbyCropId.setCropSoldStatus("yes");
					cropbyCropId.setCropActiveStatus("null");
					// logic for setting bid.setBidStatus("soldtoyou"); and others as
					// bid.setBidStatus("unactive");
					// first get the position of the max value from the amount list,
					// based on that set sold to you to that position
					// and unactive to other places
				}
				farmerServices.updateCurrentbidRequest(cropbyCropId, farmer.getFarmerId());
				model.put("cropbycropid", cropbyCropId);
				model.put("bidDetailsbycropid", bidDetailsForCropId);
				model.put("currentbidamount", maxBid);
				return "viewcropmarketplace.jsp";
			} catch (Exception e) {
				maxBid = 0;
				model.put("cropbycropid", cropbyCropId);
				model.put("bidDetailsbycropid", bidDetailsForCropId);
				model.put("currentbidamount", maxBid);
				return "viewcropmarketplace.jsp";
			}

		} catch (kisaanException e) {
			model.put("errort", "nothing found for this crop");
			return "viewcropmarketplace.jsp";
		}

	}

	@RequestMapping(path = "/applyforinsurance.rsvp")
	public String applyinsurance(Insurance insurance, ModelMap model) {
		try {
			farmerServices.applyInsurance(insurance);
			model.put("ins", "you have applied it");
			return "farmerdashbord.jsp";
		} catch (kisaanException e) {
			model.put("ins", "failed to apply");
			return "farmerdashbord.jsp";
		}
	}

	@RequestMapping(path = "/claiminsurance.rsvp")
	public String claiminsurance(Insurance insurance, ModelMap model) {
		return "";
	}

}
