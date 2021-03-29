public with sharing class Calculator {
    Double value;
    List<ICalculatorCommand> commandHistory;
    
    public Calculator() {
        this.value = 0;
        this.commandHistory = new List<ICalculatorCommand>();
    }

    public void executeCommand(ICalculatorCommand command) {
        value = command.execute(value);
        commandHistory.add(command);
    }

    public void undoCommand() {
        ICalculatorCommand command = commandHistory.remove(commandHistory.size() - 1);
        value = command.undo(value);
    }

    public void printValue() {
        System.debug('Current value: ' + value);
    }
}
