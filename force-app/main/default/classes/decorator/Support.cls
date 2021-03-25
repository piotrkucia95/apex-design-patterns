public with sharing abstract class Support {
    public String description;

    public virtual Double getCost() {
        return 0;
    }

    public virtual List<String> getDescription() {
        return new List<String>{description};
    }
}
