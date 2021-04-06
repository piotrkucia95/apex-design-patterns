public with sharing class OrderAwaitingShippingStatus implements IOrderStatusChain {
    IOrderStatusChain nextInChain;

    public OrderAwaitingShippingStatus(IOrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void setNextChain(IOrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void getOrderStatusMessage(Order o) {
        if (o.getStatus() == 'Pending' && o.getShippingDate() >= Date.today()) {
            System.debug('Message generated:');
            System.debug('The order is awaiting shipping. We\'re planning to ship it on ' + o.getShippingDate());
        } else {
            System.debug('Moving on to the next element in chain...');
            nextInChain.getOrderStatusMessage(o);
        } 
    }
}
