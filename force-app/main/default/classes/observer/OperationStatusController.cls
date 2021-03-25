public with sharing class OperationStatusController {
    
    @AuraEnabled
    public static void trackStatusChanges() {
        OperationSubject sub = new OperationSubject();

        DebugObserver debugObs = new DebugObserver(sub);
        PlatformEventObserver eventObs = new PlatformEventObserver(sub); 
        
        /* Operation starts... */
        sub.updateStatus('STARTED');

        /* Operation in progress... */
        sub.updateStatus('IN PROGRESS');

        /* Operation  finished... */
        sub.updateStatus('FINISHED');
    }
}
