public with sharing class DebugObserver implements Observer {
    Subject sub;
    String status;

    public DebugObserver(Subject sub) {
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
