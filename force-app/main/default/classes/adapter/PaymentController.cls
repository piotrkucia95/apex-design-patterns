public with sharing class PaymentController {
    
    public static void makePayments() {
        PaymentService payService = new PaymentService();

        /* Utilizing standard interface (CashPayment) */
        payService.setPaymentMethod(new CashPayment());
        payService.makePayment();

        /* Using OnlinePaymentAdapter to adapt IOnlinePayment to PaymentService */
        payService.setPaymentMethod(new OnlinePaymentAdapter(new GooglePayPayment()));
        payService.makePayment();
    }
}
