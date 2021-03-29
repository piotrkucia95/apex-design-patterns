public with sharing class DivideCommand implements ICalculatorCommand {
    Double valueToDivideBy;
    
    public DivideCommand(Double valueToDivideBy) {
        this.valueToDivideBy = valueToDivideBy;
    }

    public Decimal execute(Decimal currentValue) {
        return currentValue / valueToDivideBy;
    }

    public Decimal undo(Decimal currentValue) {
        return currentValue * valueToDivideBy;
    }
}
