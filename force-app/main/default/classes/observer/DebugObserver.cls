public with sharing class DebugObserver implements IObserver {
    ISubject sub;
    String status;

    public DebugObserver(ISubject sub) {
        this.sub = sub;
        sub.addObserver(this);
    }

    public void updateStatus(String status) {
        this.status = status;
        logCurrentStatus();
    }

    public void logCurrentStatus() {
        System.debug(status);
    }
}
