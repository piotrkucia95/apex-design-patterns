public with sharing class PlatformEventObserver implements Observer {
    Subject sub;
    String status;

    public PlatformEventObserver(Subject sub) {
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
