public with sharing class CaseContext {
    ICaseState newCaseState;
    ICaseState openCaseState;
    ICaseState closedCaseState;
    
    ICaseState currentState;

    public CaseContext(String caseStatus){ 
        newCaseState = new NewCaseState(this);
        openCaseState = new OpenCaseState(this);
        closedCaseState = new ClosedCaseState(this);

        setCurrentState(caseStatus);
    } 
     
    public void close(Case customerCase){ 
        currentState.close(customerCase); 
    } 
     
    public void calculateTimeSpent(Case customerCase){ 
        currentState.calculateTimeSpent(customerCase); 
    } 
     
    public void validate(Case customerCase){ 
        currentState.validate(customerCase); 
    }

    public void setCurrentState(String caseStatus) {
        if(caseStatus == 'New'){ 
            currentState = newCaseState;  
        } else if(caseStatus == 'Open'){ 
            currentState = openCaseState;
        } else if(caseStatus == 'Closed'){ 
            currentState = closedCaseState;     
        }
    }
}
