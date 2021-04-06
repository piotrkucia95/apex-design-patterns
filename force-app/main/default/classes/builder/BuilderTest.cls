public with sharing class BuilderTest {
   
    public static void runAccountBuilder() {
        Account acc1 = new AccountBuilder()
            .withName('Test Account 1')
            .withPhone('1231231231')
            .withRating('Hot')
            .save()
            .getRecord();
            
        System.debug(acc1.Name + ' created and inserted!');
        
        Account acc2 = new AccountBuilder()
            .withName('Test Account 2')
            .withPhone('3213213213')
            .getRecord();

        System.debug(acc2.Name + ' created!');
    }
}
