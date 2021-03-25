public with sharing class InternetSupport extends SupportDecorator {
    
    public InternetSupport(Support decoratedSupport) {
        this.decoratedSupport = decoratedSupport;
    }

    public override Double getCost() {
        return this.decoratedSupport.getCost() + 5;
    }

    public override List<String> getDescription() {
        List<String> descriptionParts = this.decoratedSupport.getDescription();
        descriptionParts.add('Over the Internet');
        return descriptionParts;
    }
}
