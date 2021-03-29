public with sharing class PlatformEventObserver implements IObserver {
    ISubject sub;
    String status;

    public PlatformEventObserver(ISubject sub) {
        this.sub = sub;
        sub.addObserver(this);
    }

    public void updateStatus(String status) {
        this.status = status;
        dispatchStatusEvent();
    }

    public void dispatchStatusEvent() {
        System.debug('DISPATCHING PLATFORM EVENT: ' + status);
    }
}
