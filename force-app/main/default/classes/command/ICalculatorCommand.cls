public interface ICalculatorCommand {
   Decimal execute(Double currentValue);
   Decimal undo(Double currentValue);
}
