public with sharing class FactoryMethodTest {
    
    @AuraEnabled
    public static void printRecordWrapperJSONs(){
        Account businessAccount = new Account(Name='Test Business', NumberOfEmployees=10);
        Account personAccount = new Account(Name='Test Person', Phone='1231231231');

        RecordWrapperFactory factory = new AccountWrapperFactory();
        
        RecordWrapper wrapper1 = factory.createRecordWrapper(businessAccount, 'Business Account');
        System.debug(wrapper1.getJSON());

        RecordWrapper wrapper2 = factory.createRecordWrapper(personAccount, 'Person Account');
        System.debug(wrapper2.getJSON());
    }
}
