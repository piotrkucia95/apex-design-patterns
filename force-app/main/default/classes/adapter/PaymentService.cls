public with sharing class PaymentService {
    IPayment paymentMethod;

    public void setPaymentMethod(IPayment paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public void makePayment() {
        paymentMethod.pay();
    }
}
