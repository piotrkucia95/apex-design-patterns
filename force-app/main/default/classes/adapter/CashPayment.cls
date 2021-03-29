public with sharing class CashPayment implements IPayment {
    
    public void pay() {
        System.debug('Payment made with cash.');
    }
}
