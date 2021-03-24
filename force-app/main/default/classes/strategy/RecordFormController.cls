public with sharing class RecordFormController {
    
    private static RecordData record = new RecordData();

    @AuraEnabled
    public static void updateRecord(Boolean isAccount, Id recordId, String name1, String name2) {
        
        if (isAccount) {
            record.setUpdateStrategy(new AccountUpdate());
        } else {
            record.setUpdateStrategy(new ContactUpdate());
        }
        
        record.runDoUpdate(recordId, name1, name2);
    }
}
