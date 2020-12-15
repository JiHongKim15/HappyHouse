package com.ssafy.HappyHouse.dto;

public class CommercialDTO {
	private int no; 
	private String shopname;
	private String localname;
	private String code1;
	private String codename1;
	private String code2;
	private String codename2;
	private String code3;
	private String codename3;
	private String code4;
	private String codename4;
	private int citycode;
	private String city;
	private int gucode;
	private String gu;
	private int dongcode;
	private String dong;
	private String jibuaddress;
	private String address;
	private int oldpostcode;
	private int postcode;
	private String lng;
	private String lat;
	
	public CommercialDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public CommercialDTO(int no, String shopname, String localname, String code1, String codename1, String code2,
			String codename2, String code3, String codename3, String code4, String codename4, int citycode, String city,
			int gucode, String gu, int dongcode, String dong, String jibuaddress, String address, int oldpostcode,
			int postcode, String lng, String lat) {
		super();
		this.no = no;
		this.shopname = shopname;
		this.localname = localname;
		this.code1 = code1;
		this.codename1 = codename1;
		this.code2 = code2;
		this.codename2 = codename2;
		this.code3 = code3;
		this.codename3 = codename3;
		this.code4 = code4;
		this.codename4 = codename4;
		this.citycode = citycode;
		this.city = city;
		this.gucode = gucode;
		this.gu = gu;
		this.dongcode = dongcode;
		this.dong = dong;
		this.jibuaddress = jibuaddress;
		this.address = address;
		this.oldpostcode = oldpostcode;
		this.postcode = postcode;
		this.lng = lng;
		this.lat = lat;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getShopname() {
		return shopname;
	}


	public void setShopname(String shopname) {
		this.shopname = shopname;
	}


	public String getLocalname() {
		return localname;
	}


	public void setLocalname(String localname) {
		this.localname = localname;
	}


	public String getCode1() {
		return code1;
	}


	public void setCode1(String code1) {
		this.code1 = code1;
	}


	public String getCodename1() {
		return codename1;
	}


	public void setCodename1(String codename1) {
		this.codename1 = codename1;
	}


	public String getCode2() {
		return code2;
	}


	public void setCode2(String code2) {
		this.code2 = code2;
	}


	public String getCodename2() {
		return codename2;
	}


	public void setCodename2(String codename2) {
		this.codename2 = codename2;
	}


	public String getCode3() {
		return code3;
	}


	public void setCode3(String code3) {
		this.code3 = code3;
	}


	public String getCodename3() {
		return codename3;
	}


	public void setCodename3(String codename3) {
		this.codename3 = codename3;
	}


	public String getCode4() {
		return code4;
	}


	public void setCode4(String code4) {
		this.code4 = code4;
	}


	public String getCodename4() {
		return codename4;
	}


	public void setCodename4(String codename4) {
		this.codename4 = codename4;
	}


	public int getCitycode() {
		return citycode;
	}


	public void setCitycode(int citycode) {
		this.citycode = citycode;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public int getGucode() {
		return gucode;
	}


	public void setGucode(int gucode) {
		this.gucode = gucode;
	}


	public String getGu() {
		return gu;
	}


	public void setGu(String gu) {
		this.gu = gu;
	}


	public int getDongcode() {
		return dongcode;
	}


	public void setDongcode(int dongcode) {
		this.dongcode = dongcode;
	}


	public String getDong() {
		return dong;
	}


	public void setDong(String dong) {
		this.dong = dong;
	}


	public String getJibuaddress() {
		return jibuaddress;
	}


	public void setJibuaddress(String jibuaddress) {
		this.jibuaddress = jibuaddress;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getOldpostcode() {
		return oldpostcode;
	}


	public void setOldpostcode(int oldpostcode) {
		this.oldpostcode = oldpostcode;
	}


	public int getPostcode() {
		return postcode;
	}


	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}


	public String getLng() {
		return lng;
	}


	public void setLng(String lng) {
		this.lng = lng;
	}


	public String getLat() {
		return lat;
	}


	public void setLat(String lat) {
		this.lat = lat;
	}


	@Override
	public String toString() {
		return "CommercialDTO [no=" + no + ", shopname=" + shopname + ", localname=" + localname + ", code1=" + code1
				+ ", codename1=" + codename1 + ", code2=" + code2 + ", codename2=" + codename2 + ", code3=" + code3
				+ ", codename3=" + codename3 + ", code4=" + code4 + ", codename4=" + codename4 + ", citycode="
				+ citycode + ", city=" + city + ", gucode=" + gucode + ", gu=" + gu + ", dongcode=" + dongcode
				+ ", dong=" + dong + ", jibuaddress=" + jibuaddress + ", address=" + address + ", oldpostcode="
				+ oldpostcode + ", postcode=" + postcode + ", lng=" + lng + ", lat=" + lat + "]";
	}
	
}
