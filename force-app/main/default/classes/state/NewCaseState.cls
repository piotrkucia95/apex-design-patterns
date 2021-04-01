public with sharing class NewCaseState implements ICaseState {
    CaseContext context;

    public NewCaseState(CaseContext context) {
        this.context = context;
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('Error - calculating time spent not available for new Case!');
    }

    public void validate(Case customerCase) {
        System.debug('Validating New Case...');
        customerCase.Status = 'Open';
        context.setCurrentState('Open');
    }

    public void close(Case customerCase) {
        System.debug('Closing New Case...');
        customerCase.Status = 'Closed';
        context.setCurrentState('Closed');
    }
}
