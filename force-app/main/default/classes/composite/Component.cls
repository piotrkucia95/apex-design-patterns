public with sharing abstract class Component {
    
    public virtual void add(Component comp) {
        throw new UnsupportedOperationException();
    }

    public virtual void remove(Component comp) {
        throw new UnsupportedOperationException();
    }

    public virtual Component getChild(Integer index) {
        throw new UnsupportedOperationException();
    }

    public virtual String getName() {
        throw new UnsupportedOperationException();
    }

    public virtual Double getAnnualRevenue() {
        throw new UnsupportedOperationException();
    }

    public class UnsupportedOperationException extends Exception {}
}
