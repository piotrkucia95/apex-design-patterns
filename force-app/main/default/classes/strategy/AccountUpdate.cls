public with sharing class AccountUpdate implements UpdateStrategy {
    
    Account acc = new Account();

    public void doUpdate(Id recordId, String name1, String name2) {
        acc.Id = recordId;
        acc.Name = name1 + ' ' + name2;
        upsert acc;
    }
}
