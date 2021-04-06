public with sharing class OrderMessageGenerator {
    
    public static void printOrderMessages() {
        Order order1 = new Order('Pending', Date.today(), Date.today());
        Order order2 = new Order('Sent', Date.today(), Date.today());
        Order order3 = new Order('Cancelled', Date.today(), Date.today());

        IOrderStatusChain chain = new OrderAwaitingShippingStatus(
            new OrderSentStatus(
                new OrderCancelledStatus(
                    new OrderDefaultStatus())));

        System.debug('ORDER 1:');
        chain.getOrderStatusMessage(order1);
        
        System.debug('ORDER 2:');
        chain.getOrderStatusMessage(order2);
        
        System.debug('ORDER 3:');
        chain.getOrderStatusMessage(order3);
    }
}
