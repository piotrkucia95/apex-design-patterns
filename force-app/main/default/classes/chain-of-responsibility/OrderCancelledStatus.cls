public with sharing class OrderCancelledStatus implements OrderStatusChain {
    OrderStatusChain nextInChain;

    public OrderCancelledStatus(OrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void setNextChain(OrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void getOrderStatusMessage(Order o) {
        if (o.getStatus() == 'Cancelled') {
            System.debug('Message generated:');
            System.debug('The order has been cancelled.');
        } else {
            System.debug('Moving on to the next element in chain...');
            nextInChain.getOrderStatusMessage(o);
        } 
    }
}