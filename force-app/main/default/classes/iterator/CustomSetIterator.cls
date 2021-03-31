public with sharing class CustomSetIterator implements ICustomIterator {
    private Set<String> setElements;
    private Integer currentIndex;
  
    public CustomSetIterator(Set<String> setElements){
        this.setElements = setElements;
        this.currentIndex = 0;
    } 
  
    public String next(){
        if(hasNext()) {
            String currentElement = new List<String>(setElements)[currentIndex];
            currentIndex++;
            return currentElement;
        } else {
            throw new NoSuchElementException();
        }
    }

    public Boolean hasNext(){ 
        return currentIndex < setElements.size() - 1;
    }
}
