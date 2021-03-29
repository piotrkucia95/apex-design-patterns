public with sharing class PaymentVerification {
    OrderDetail order;

    public PaymentVerification(OrderDetail order) {
        this.order = order;
    }

    public void verifyPayment() {
        System.debug('Verifying payment...');
    }
}
