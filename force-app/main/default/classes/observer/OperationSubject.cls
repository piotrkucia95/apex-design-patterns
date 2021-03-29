public with sharing class OperationSubject implements ISubject {
    List<IObserver> observers;
    String status;

    public OperationSubject() {
        this.observers = new List<IObserver>();
    }
    
    public void addObserver(IObserver obs) {
        this.observers.add(obs);
    }

    public void deleteObserver(IObserver obs) {
        Integer index = this.observers.indexOf(obs);
        this.observers.remove(index);
    }

    public void notifyObservers() {
        for (IObserver obs : this.observers) {
            obs.updateStatus(status);
        }    
    }

    public void updateStatus(String status) {
        this.status = status;
        this.notifyObservers();
    }

}
