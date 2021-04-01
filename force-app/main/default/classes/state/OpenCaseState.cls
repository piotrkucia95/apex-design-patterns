public with sharing class OpenCaseState implements ICaseState {
    CaseContext context;

    public OpenCaseState(CaseContext context) {
        this.context = context;
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('Calculating time spent for Open Case...');
    }

    public void validate(Case customerCase) {
        System.debug('Validating Open Case...');
    }

    public void close(Case customerCase) {
        System.debug('Closing Open Case...');
        customerCase.Status = 'Closed';
        context.setCurrentState('Closed');
    }
}
