package com.hellokoding.auth.model;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Transient;

public class Images {
	private String image_id;
	
	private byte[] image;	

	@Column(name = "image")
	public byte[] getImage() {
		return this.image;
	}

	private String base64Image;
	
	public Images() {
	}
	
	@Transient
	public String getBase64Image() {
	    base64Image = Base64.getEncoder().encodeToString(this.image);
	    return base64Image;
	}

	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}

	public String getImage_id() {
		return image_id;
	}

	public void setImage_id(String image_id) {
		this.image_id = image_id;
	}
	
	
	
}