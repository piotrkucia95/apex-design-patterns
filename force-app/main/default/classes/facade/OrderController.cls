public with sharing class OrderController {
    
    public static void processOrder() {
        OrderDetail order = new OrderDetail('IBN-abcd123', 40, 'Manchester Buckland hills');

        OrderFacade facade = new OrderFacade(order);
        facade.processOrder();
    }
}
