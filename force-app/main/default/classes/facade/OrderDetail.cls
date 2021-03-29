public with sharing class OrderDetail {
    public String productId;
    public Decimal price;
    public String address;
        
    public OrderDetail(String productId, Decimal price, String address ){ 
        this.productId = productId; 
        this.price = price; 
        this.address = address;  
    }
}
