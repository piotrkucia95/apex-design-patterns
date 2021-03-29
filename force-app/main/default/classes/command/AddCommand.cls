public with sharing class AddCommand implements ICalculatorCommand {
    Double valueToAdd;
    
    public AddCommand(Double valueToAdd) {
        this.valueToAdd = valueToAdd;
    }

    public Decimal execute(Decimal currentValue) {
        return currentValue + valueToAdd;
    }

    public Decimal undo(Decimal currentValue) {
        return currentValue - valueToAdd;
    }
}
