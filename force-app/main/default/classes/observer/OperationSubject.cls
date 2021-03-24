public with sharing class OperationSubject implements Subject {
    List<Observer> observers;
    String status;

    public OperationSubject() {
        this.observers = new List<Observer>();
    }
    
    public void addObserver(Observer obs) {
        this.observers.add(obs);
    }

    public void deleteObserver(Observer obs) {
        Integer index = this.observers.indexOf(obs);
        this.observers.remove(index);
    }

    public void notifyObservers() {
        for (Observer obs : this.observers) {
            obs.updateStatus(status);
        }    
    }

    public void updateStatus(String status) {
        this.status = status;
        this.notifyObservers();
    }

}
