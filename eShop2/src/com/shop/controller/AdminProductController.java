package com.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.Admin;
import com.shop.model.Cart;
import com.shop.model.CartItem;
import com.shop.model.Category;
import com.shop.model.CategorySecond;
import com.shop.model.Message;
import com.shop.model.Product;
import com.shop.model.Ticket;
import com.shop.model.User;
import com.shop.service.AdminCategorySecondService;
import com.shop.service.AdminProductService;
import com.shop.service.AdminService;
import com.shop.service.AdminCategorySecondService;
import com.shop.service.AdminProductService;
import com.shop.service.AdminService;
import com.shop.service.ProductService;
import com.shop.service.UserService;
import com.sun.org.apache.regexp.internal.recompile;
import com.shop.service.MessageService;
@Controller
public class AdminProductController {

	@Resource
	private AdminProductService adminProductService;
	@Resource
	private AdminCategorySecondService adminCategorySecondService;
	@Resource
	private UserService userService;
	@Resource
	private ProductService productService;
	@Resource
	private AdminService adminService;
	@Resource
	private MessageService messageservice;
	//������Ʒ
	@RequestMapping(value="/updateProduct")
	public ModelAndView updateProduct(@ModelAttribute("product") Product product
			,@RequestParam("upload")  CommonsMultipartFile upload,HttpServletRequest request,Integer csid){
		ServletContext servletContext = request.getSession().getServletContext();
		//��ѯ����Ʒ
		Product oldProduct = adminProductService.findProduct(product.getPid());
		//���ַ����س���ͼƬ������
		int begin = oldProduct.getImage().lastIndexOf("/");
		String filename = oldProduct.getImage().substring(begin+1,oldProduct.getImage().length());
		System.out.println(filename);
		//��ȡ�ļ�������
		String uploadFilename = upload.getOriginalFilename();
		//����ϴ���ͼƬ�����ƺ;ɵ���Ƭ��һ��
		if(filename != uploadFilename && !"".equals(uploadFilename)){
			//��ȡ�ļ�����Ŀ¼
			String path = servletContext.getRealPath("/products/3");
			try {
				FileUtils.writeByteArrayToFile(new File(path,uploadFilename), upload.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
			//���������ļ���·��
			product.setImage("products/3/"+uploadFilename);
			//������Ʒ��ʱ��
			product.setPdate(new Date());
			//ɾ���ɵ���ƷͼƬ
			path = request.getSession().getServletContext().getRealPath("/"+oldProduct.getImage());
			File file = new File(path);
			file.delete();
		}else{
			product.setPdate(new Date());
		}
		//������Ʒ
		if(csid != null){
			//����Ʒ�����Ķ�������
			CategorySecond categorySecond = adminCategorySecondService.findCategorySecond(csid);
			product.setCategorySecond(categorySecond);
		}
		adminProductService.updateProduct(product);
		ModelAndView modelAndView = new ModelAndView("redirect:/listProduct/1");
		return modelAndView;
	}

	//�޸���Ʒ
	@RequestMapping(value="/editProduct/{pid}")
	public ModelAndView editProduct(@PathVariable("pid") Integer pid){
		//ModelAndView modelAndView = new ModelAndView("admin/product/edit");
		ModelAndView modelAndView = new ModelAndView("product_edit");
		//��ȡ����Ա��Ϣ
		Admin admin=adminService.findAdminByAid(1);
		//��ѯ���ж�������ļ���
		List<CategorySecond> categorySeconds = adminCategorySecondService.listCategorySecond();
		modelAndView.addObject("categorySeconds", categorySeconds);
		//��ѯ��Ʒ
		Product product = adminProductService.findProduct(pid);                  modelAndView.addObject("admin",admin);
		modelAndView.addObject("product", product);
		return modelAndView;
	}

	//ɾ����Ʒ
	@RequestMapping(value="/deleteProduct/{pid}")
	public ModelAndView deleteProduct(@PathVariable("pid") Integer pid,HttpServletRequest request){
		//��ȡ����Ʒ�Ķ���
		Product product = adminProductService.findProduct(pid);
		//��ȡ�ļ�����Ŀ¼
		String path = request.getSession().getServletContext().getRealPath("/" + product.getImage());
		File file = new File(path);
		// ɾ����Ʒ�������ϵ�ͼƬ:
		file.delete();
		//ɾ����Ʒ�����ݿ��еļ�¼
		adminProductService.deleteProduct(product);
		ModelAndView modelAndView = new ModelAndView("redirect:/listProduct/1");
		return modelAndView;
	}

	//�ϴ���Ʒ
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("product") Product product,													
								   @RequestParam("upload")  CommonsMultipartFile upload,HttpServletRequest request, Integer csid,HttpSession session){
		//TODO 加用户信息
		User user = (User) session.getAttribute("user");
		//��ȡ�ļ�����Ŀ¼
		ServletContext servletContext = request.getSession().getServletContext();
		String path = servletContext.getRealPath("/products/3");
		//��ȡ�ļ�������
		String filename = upload.getOriginalFilename();
		try {
			FileUtils.writeByteArrayToFile(new File(path,filename), upload.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//�����ļ���·��
		product.setImage("products/3/"+filename);
		product.setUserId(user.getUid().toString());
		product.setUserName(user.getUsername());
		
		
		//�����ϴ���ʱ��
		product.setPdate(new Date());
		//����Ʒ�����Ķ�������
		CategorySecond categorySecond = adminCategorySecondService.findCategorySecond(csid);
		product.setCategorySecond(categorySecond);
		//������Ʒ
		adminProductService.saveProduct(product);
		ModelAndView modelAndView = new ModelAndView("redirect:/listProduct/1");
		return modelAndView;
	}

	//��ת�������Ʒ
	@RequestMapping(value="/gotoAddProduct")
	public ModelAndView gotoAddProduct(){
		//ModelAndView modelAndView = new ModelAndView("admin/product/add");
		ModelAndView modelAndView = new ModelAndView("product_add");
		//��ѯ���ж�������ļ���
		List<CategorySecond> categorySeconds = adminCategorySecondService.listCategorySecond();
		modelAndView.addObject("categorySeconds", categorySeconds);
		return modelAndView;
	}

	//��ҳ��ѯ���е���Ʒ
	@RequestMapping(value="/listProduct/{page}")
	public String listProduct(@PathVariable("page") Integer page,Map<String,Object> map,HttpSession session){
		User user = (User) session.getAttribute("user");
		String name=user.getUsername();
		//��ҳ��ѯ��Ʒ
		List<Product> products = adminProductService.listProductByUser(name, page);
		//��ѯ��Ʒ��ҳ��
		Integer count = adminProductService.countProduct();
		map.put("products",products);
		map.put("page", page);
		map.put("count", count);
		//return "admin/product/list";
		return "product_list";
	}
	
	//置顶会员商品
	@RequestMapping(value="/topVipProduct/{pid}")
	public ModelAndView topVipProduct(@PathVariable("pid") Integer pid){
		adminProductService.topProduct(pid);
		ModelAndView modelAndView = new ModelAndView("redirect:/listProduct/1");
		return modelAndView;
	}
	
	//商品列表
	@RequestMapping(value="/myProduct/{page}/{pId}")
	public String myProduct(@PathVariable("page") Integer page,@PathVariable("pId") Integer pId,Map<String,Object> map,HttpSession session) {
		User user = (User) session.getAttribute("user");
		String name = user.getUsername();
		//��ҳ��ѯ��Ʒ
		List<Product> products = adminProductService.listProductByUser(name, page);
		//��ѯ��Ʒ��ҳ��
		Integer count = adminProductService.countProduct();
		map.put("products", products);
		map.put("page", page);
		map.put("count", count);
		map.put("pId", pId);
		//return "admin/product/list";
		return "myProduct";
	}

	//添加换购信息
	@RequestMapping(value="/message/{pid}/{pId}")
	public String message(@PathVariable("pid") Integer pid,@PathVariable("pId") Integer pId,Map<String,Object> map,HttpSession session) {
		User buyer = (User) session.getAttribute("user");
		User seller = userService.findByPId(pId);
		Message message = new Message();
		message.setBuyerName(buyer.getName());
		message.setBuyerProductId(pid);
		message.setSellerProductId(pId);
		Product buyerProduct = productService.findByPid(pid);
		Product sellerProduct = productService.findByPid(pId);
		message.setBuyerProductPrice(buyerProduct.getcur_price().toString());
		message.setBuyerImage(buyerProduct.getImage());
		message.setSellerProductPrice(sellerProduct.getcur_price().toString());
		message.setSellerImage(sellerProduct.getImage());
		message.setSellerId(seller.getUid());
		messageservice.add(message);
		Product products = productService.findByPid(pId);
		map.put("product", products);
		return "product";
	}

	//信息列表
	@RequestMapping(value="/messageList")
	public String messageList(Map<String,Object> map,HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Message> messages = messageservice.getMessageList(user.getUid());
		map.put("message",messages);
		return "message";
	}
	
	//添加到购物车
    @RequestMapping(value = "/exchangeOrder/{pid}/{price}/{pId}")
    public String addCart(@PathVariable("pid") Integer pid,@PathVariable("pId") Integer pId,@PathVariable("price") String price, HttpSession session, Map<String, Object> map) {
        Product product = productService.findByPid(pid);
        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setCount(1);
        cartItem.setPrice(Float.valueOf(price));
        Cart cart = new Cart();
        cart.addCart(cartItem);
        session.setAttribute("cart", cart);
        Product sellerProduct = productService.findByPid(pId);
        map.put("product", sellerProduct);
        return "exchangeChart";
    }
//	@RequestMapping(value="/exchangeOrder/{pid}/{price}")
//	public String exchangeOrder(){
//		CartItem cartItem = new CartItem();
//        cartItem.setProduct(product);
//        cartItem.setPrice(finalPrice);
//
//        Cart cart = (Cart) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new Cart();
//            session.setAttribute("cart", cart);
//        }
//        // 将购物项添加到购物车.
//        cart.addCart(cartItem);
//        return "cart";
//		return "order2";
//	}
}
