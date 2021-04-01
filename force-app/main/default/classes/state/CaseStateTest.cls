public with sharing class CaseStateTest {
    
    public static void runCaseState() {
        Case caseRecord = new Case(Status='New'); 
        CaseContext context = new CaseContext(caseRecord.Status); 
        
        System.debug('*** New Case ***');
        context.calculateTimeSpent(caseRecord);
        context.validate(caseRecord);

        System.debug('*** Open Case ***');
        context.calculateTimeSpent(caseRecord);
        context.validate(caseRecord);
        context.close(caseRecord);

        System.debug('*** Closed Case ***');
        context.calculateTimeSpent(caseRecord);
        context.validate(caseRecord);
        context.close(caseRecord);
    }
}
