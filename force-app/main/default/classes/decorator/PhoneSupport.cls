public with sharing class PhoneSupport extends SupportDecorator {
    
    public PhoneSupport(Support decoratedSupport) {
        this.decoratedSupport = decoratedSupport;
    }

    public override Double getCost() {
        return this.decoratedSupport.getCost() + 10;
    }

    public override List<String> getDescription() {
        List<String> descriptionParts = this.decoratedSupport.getDescription();
        descriptionParts.add('Over the phone');
        return descriptionParts;
    }
}
