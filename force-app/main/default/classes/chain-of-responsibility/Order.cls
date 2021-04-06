public with sharing class Order {
    String status;
    Date shippingDate;
    Date estimatedDeliveryDate;

    public Order(String status, Date shippingDate, Date estimatedDeliveryDate) {
        this.status = status;
        this.shippingDate = shippingDate;
        this.estimatedDeliveryDate = estimatedDeliveryDate;
    }
    
    public String getStatus() { return this.status; }
    public Date getShippingDate() { return this.shippingDate; }
    public Date getEstimatedDeliveryDate() { return this.estimatedDeliveryDate; }
}
