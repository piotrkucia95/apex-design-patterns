public with sharing class OnlinePaymentAdapter implements IPayment {
    IOnlinePayment onlinePayment;

    public OnlinePaymentAdapter(IOnlinePayment onlinePayment) {
        this.onlinePayment = onlinePayment;
    }

    public void pay() {
        onlinePayment.sendPaymentRequest();
    }
}
