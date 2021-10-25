package com.mypack;

public class Addproduct 
{
	private int id;
  public String productname;
  public String manufacturer;
  public int selectqty;
  public String productdesc;
  public int price;
public Addproduct() {
	super();
	
}
public Addproduct(int id, String productname, String manufacturer, int selectqty, String productdesc, int price) {
	super();
	this.id = id;
	this.productname = productname;
	this.manufacturer = manufacturer;
	this.selectqty = selectqty;
	this.productdesc = productdesc;
	this.price = price;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getManufacturer() {
	return manufacturer;
}
public void setManufacturer(String manufacturer) {
	this.manufacturer = manufacturer;
}
public int getSelectqty() {
	return selectqty;
}
public void setSelectqty(int selectqty) {
	this.selectqty = selectqty;
}
public String getProductdesc() {
	return productdesc;
}
public void setProductdesc(String productdesc) {
	this.productdesc = productdesc;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}

  
  }
