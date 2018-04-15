package com.shop.model;

//import java.util.Base64;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.persistence.*;

/**
 * 商品的实体对象
 */
@Table(name="product")
@Entity
public class Product {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer pid;
	private String pname;
	private Float org_price;
	private Float cur_price;
	private Integer inventory;
	private String image;
	private String pdesc;
	private Integer is_hot;
	private Date pdate;
	private String userId;
	private String userName;
	
	// 二级分类的外键:使用二级分类的对象.
	@JoinColumn(name="csid")
	@ManyToOne
	private CategorySecond categorySecond;
	
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
//		String goodName = pname;
//		if(pname.contains("="))
//			goodName = new String(Base64.getDecoder().decode(pname.getBytes()));
		return pname;
	}
	public void setPname(String pname) {
//		String goodName = pname;
//		if(pname.contains("#")){//在加入前已经进行加密并在结尾加入#,取出#后直接加入数据库
//			pname = pname.replace("#", "");
//			goodName = pname;
//		}else if(pname.matches("\\w+"))//匹配英文,进行解密
//			goodName = new String(Base64.getDecoder().decode(pname.getBytes()));
		this.pname = pname;
	}
	public Float getorg_price() {
		return org_price;
	}
	public void setorg_price(Float org_price) {
		this.org_price = org_price;
	}
	public Float getcur_price() {
		return cur_price;
	}
	public void setcur_price(Float cur_price) {
		this.cur_price = cur_price;
	}
	public Integer getInventory() {
		return inventory;
	}
	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPdesc() {
		
		
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date date) {
		this.pdate = date;
	}
	public CategorySecond getCategorySecond() {
		return categorySecond;
	}
	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", org_price=" + org_price + ", cur_price="
				+ cur_price + ", image=" + image + ", pdesc=" + pdesc + ", is_hot=" + is_hot + ", pdate=" + pdate
				+ ", categorySecond=" + categorySecond +", user_name=" + userName + "]";
	}
}
