public with sharing class ClosedCaseState implements ICaseState {
    CaseContext context;

    public ClosedCaseState(CaseContext context) {
        this.context = context;
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('Calculating time spent for Closed Case...');
    }

    public void validate(Case customerCase) {
        System.debug('Error - Validating not available for Closed Case!');
    }
    
    public void close(Case customerCase) {
        System.debug('Error - Case already Closed!');
    }
}
