public with sharing class CustomListIterator implements ICustomIterator {
    private List<String> listElements;
    private Integer currentIndex;
  
    public CustomListIterator(List<String> listElements){
        this.listElements = listElements;
        this.currentIndex = 0;
    } 
  
    public String next(){
        if(hasNext()) {
            String currentElement = listElements[currentIndex];
            currentIndex++;
            return currentElement;
        } else {
            throw new NoSuchElementException();
        }
    }

    public Boolean hasNext(){ 
        return currentIndex < listElements.size() - 1;
    }
}
