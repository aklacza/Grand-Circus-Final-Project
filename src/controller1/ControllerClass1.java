package controller1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import UserDAOPackage.UserDAO;
import model.hostModel;

@Controller
public class ControllerClass1 {

	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
		return new ModelAndView("welcome", "message", "Hello World");
	}
	
	@RequestMapping("/uploadpage")
	public ModelAndView uploadpage() {
		return new ModelAndView("uploadFile", "message", "Upload");
	}
	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public ModelAndView uploadFiles(@RequestParam("file") MultipartFile file) {
		System.out.println("upload: " + file.getOriginalFilename());
		
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
				  "cloud_name", "boatbuddy",
				  "api_key", "269413132897232",
				  "api_secret", "tYEn-N_-QEvQK2aIofqBu-PGOl0"));
		
		try {
			Map uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.emptyMap());
			System.out.println(uploadResult.get("url"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("uploadFile", "message", "Hello World");
	}

	@RequestMapping("/host")
	public ModelAndView hostView() {
		return new ModelAndView("host", "", "");
	}

	// @RequestMapping("/hostSubmit")
	@RequestMapping(value = "/hostSubmit", method = RequestMethod.POST)
	public ModelAndView hostViewSubmit(@RequestParam("file") MultipartFile file, @ModelAttribute hostModel hmodel, Model model) {
		String urlPic = "";
		System.out.println("upload: " + file.getOriginalFilename());
		System.out.println("hostViewSubmit" + hmodel.getFname());
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
				  "cloud_name", "boatbuddy",
				  "api_key", "269413132897232",
				  "api_secret", "tYEn-N_-QEvQK2aIofqBu-PGOl0"));
		
		try {
			Map uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.emptyMap());
			urlPic = (String) uploadResult.get("url");
			hmodel.setPictureurl(urlPic);
			System.out.println(urlPic);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		UserDAO dao = new UserDAO();
		// dao.insertUserMethod
		dao.submitHostData(hmodel);
		ArrayList<hostModel> hosts = dao.viewHostData();
		return new ModelAndView("listCaptains", "results", hosts);
	}

	@RequestMapping("/signup")
	public ModelAndView signupView() {
		return new ModelAndView("signup", "", "");
	}

	@RequestMapping("/login")
	public ModelAndView loginView() {
		return new ModelAndView("login", "", "");
	}

	@RequestMapping("/help")
	public ModelAndView helpView() {
		return new ModelAndView("help", "", "");
	}

	@RequestMapping("/listCaptains")
	public ModelAndView listCaptains() throws NamingException, SQLException {
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostData();
		
		return new ModelAndView("listCaptains", "results", hosts);
	}
	
	@RequestMapping(value="/listCaptainsBySearch", method=RequestMethod.GET)
	public ModelAndView listCaptainsBySearch
	(@RequestParam("searchInput")String searchInput, 
			@RequestParam("searchType")String searchType)	{
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostDataBySearch(searchInput, searchType);
		return new ModelAndView("listCaptains", "results", hosts);
	}
	
	@RequestMapping(value="/listCaptainsBySearch1", method=RequestMethod.GET)
	public ModelAndView listCaptainsBySearch1
	(@RequestParam("searchInput")String searchInput, 
		@RequestParam("searchType")String searchType, 
		@RequestParam("searchType")String sort)	{
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostDataBySearch1(searchInput, searchType, sort);
		return new ModelAndView("listCaptains", "results", hosts);
	}
	
	@RequestMapping(value="/listCaptainsByType", method=RequestMethod.GET)
	public ModelAndView listCaptainsByType(@RequestParam("type")String type) {
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostDataByType(type);
		return new ModelAndView("listCaptains", "results", hosts);
	}
	
	@RequestMapping(value="/listCaptainsBySort", method=RequestMethod.GET)
	public ModelAndView listCaptainsBySort(@RequestParam("sort")String sort) {
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostDataBySort(sort);
		return new ModelAndView("listCaptains", "results", hosts);
	}

	@RequestMapping("/learnMore")
	public ModelAndView learnMore() {
		return new ModelAndView("learnMore", "", "");
	}
	
	@RequestMapping("/boatGallery")
	public ModelAndView viewGallery() {
		UserDAO dao = new UserDAO();
		ArrayList<hostModel> hosts = dao.viewHostData();
		return new ModelAndView("boatGallery", "results", hosts);
	}
	
}
