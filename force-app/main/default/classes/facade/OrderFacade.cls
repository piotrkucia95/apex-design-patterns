public with sharing class OrderFacade {
    OrderDetail order;
    
    public OrderFacade(OrderDetail order) {
        this.order = order;
    }

    public void processOrder() {
        Inventory inv = new Inventory(); 
        PaymentVerification verification = new PaymentVerification(order);
        ShippingService shipping = new ShippingService(order);

        inv.updateInventory(order.productId);
        verification.verifyPayment();
        shipping.requestShipping();
        shipping.getEstimatedDeliveryDate();
    }
}
