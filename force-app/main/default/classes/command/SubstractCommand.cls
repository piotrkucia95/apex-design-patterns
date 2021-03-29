public with sharing class SubstractCommand implements ICalculatorCommand {
    Double valueToSubstract;
    
    public SubstractCommand(Double valueToSubstract) {
        this.valueToSubstract = valueToSubstract;
    }

    public Decimal execute(Decimal currentValue) {
        return currentValue - valueToSubstract;
    }

    public Decimal undo(Decimal currentValue) {
        return currentValue + valueToSubstract;
    }
}
