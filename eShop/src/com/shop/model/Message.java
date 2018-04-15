package com.shop.model;

//import java.util.Base64;

import javax.persistence.*;
import java.util.Date;

/**
 * 商品的实体对象
 */
@Table(name="message")
@Entity
public class Message {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer id;
	private String buyerName;
	private String buyerProductPrice;
	private Integer buyerProductId;
	private String buyerImage;
	private Integer sellerId;
	private String sellerProductPrice;
	private Integer sellerProductId;
	private String sellerImage;

	public Integer getid() {
		return id;
	}
	public void setid(Integer id) {
		this.id = id;
	}

	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getBuyerProductPrice() {
		return buyerProductPrice;
	}
	public void setBuyerProductPrice(String buyerProductPrice) {
		this.buyerProductPrice = buyerProductPrice;
	}

	public Integer getBuyerProductId() {
		return buyerProductId;
	}
	public void setBuyerProductId (Integer buyerProductId) {
		this.buyerProductId = buyerProductId;
	}

	public String getBuyerImage() {
		return buyerImage;
	}
	public void setBuyerImage(String buyerImage) {
		this.buyerImage = buyerImage;
	}

	public String getSellerImage() {
		return sellerImage;
	}
	public void setSellerImage(String sellerImage) {
		this.sellerImage = sellerImage;
	}

	public Integer getSellerId() {
		return sellerId;
	}
	public void setSellerId(Integer sellerId) {
		this.sellerId = sellerId;
	}

	public String getSellerProductPrice() {
		return sellerProductPrice;
	}
	public void setSellerProductPrice(String sellerProductPrice) {
		this.sellerProductPrice = sellerProductPrice;
	}

	public Integer getSellerProductId() {
		return sellerProductId;
	}
	public void setSellerProductId (Integer sellerProductId) {
		this.sellerProductId = sellerProductId;
	}
//	@Override
//	public String toString() {
//		return "Message [id=" + id + ", buyerName=" + buyerName + ", productName=" + buyerProductName + ", productId="
//				+ productId + ", productId=" + productId + ", sellerId=" + sellerId + "]";
//	}
}
