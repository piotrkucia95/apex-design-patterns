public with sharing class MulitiplyCommand implements ICalculatorCommand {
    Double valueToMultiplyBy;
    
    public MulitiplyCommand(Double valueToMultiplyBy) {
        this.valueToMultiplyBy = valueToMultiplyBy;
    }

    public Decimal execute(Decimal currentValue) {
        return currentValue * valueToMultiplyBy;
    }

    public Decimal undo(Decimal currentValue) {
        return currentValue / valueToMultiplyBy;
    }
}
