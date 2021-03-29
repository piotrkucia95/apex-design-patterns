public with sharing class CommandTest {
    
    public static void printCalculations() {
        Calculator calc = new Calculator();
        
        /* Starting with value 10 - should print 10 */
        calc.executeCommand(new AddCommand(10));
        calc.printValue();

        /* Adding 20 and undoing - should print 10 */
        calc.executeCommand(new AddCommand(20));
        calc.undoCommand();
        calc.printValue();

        /* Substracting 2 - should print 8 */
        calc.executeCommand(new SubstractCommand(2));
        calc.printValue();
        
        /* Multiplying by 3 - should print 24 */
        calc.executeCommand(new MulitiplyCommand(3));
        calc.printValue();

        /* Dividing by 6 - should print 4 */
        calc.executeCommand(new DivideCommand(6));
        calc.printValue();

        /* Dividing by 4 and undoing - should print 4 */
        calc.executeCommand(new DivideCommand(4));
        calc.undoCommand();
        calc.printValue();

        /* Undoing - should print 24 */
        calc.undoCommand();
        calc.printValue();
    }
}
