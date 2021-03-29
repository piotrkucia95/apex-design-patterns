public interface ISubject {
    void addObserver(IObserver obs);
    void deleteObserver(IObserver obs);
    void notifyObservers();
}
