public with sharing class OrderSentStatus implements IOrderStatusChain {
    IOrderStatusChain nextInChain;

    public OrderSentStatus(IOrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void setNextChain(IOrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void getOrderStatusMessage(Order o) {
        if (o.getStatus() == 'Sent') {
            System.debug('Message generated:');
            System.debug('The order has been sent. The expected delivery date is ' + o.getEstimatedDeliveryDate());
        } else {
            System.debug('Moving on to the next element in chain...');
            nextInChain.getOrderStatusMessage(o);
        } 
    }
}