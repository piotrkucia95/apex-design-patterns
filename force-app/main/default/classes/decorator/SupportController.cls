public with sharing class SupportController {
    
    @AuraEnabled
    public static void calculateSupportCost() {

        Support support1 = new AdminSupport();
        System.debug(String.join(support1.getDescription(), ', ') + ': ' + support1.getCost());

        Support support2 = new PhoneSupport(new DeveloperSupport());
        System.debug(String.join(support2.getDescription(), ', ') + ': ' + support2.getCost());

        Support support3 = new InPersonSupport(new PhoneSupport(new InternetSupport(new AdminSupport())));
        System.debug(String.join(support3.getDescription(), ', ') + ': ' + support3.getCost());
    }
}
