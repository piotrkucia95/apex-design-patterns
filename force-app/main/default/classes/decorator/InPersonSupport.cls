public with sharing class InPersonSupport extends SupportDecorator {
    
    public InPersonSupport(Support decoratedSupport) {
        this.decoratedSupport = decoratedSupport;
    }

    public override Double getCost() {
        return this.decoratedSupport.getCost() + 20;
    }

    public override List<String> getDescription() {
        List<String> descriptionParts = this.decoratedSupport.getDescription();
        descriptionParts.add('In Person');
        return descriptionParts;
    }
}
