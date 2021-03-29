public with sharing class ShippingService {
    OrderDetail order;

    public ShippingService(OrderDetail order) {
        this.order = order;
    }

    public void requestShipping() {
        System.debug('Requesting shipping...');
    }

    public void getEstimatedDeliveryDate() {
        System.debug('Estimated delivery date: ' + Date.today().addDays(3));
    }
}
