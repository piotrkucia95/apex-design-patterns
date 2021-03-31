public with sharing class StringIterator implements Iterator<String> {
    private String iterableString;
    private Integer currentIndex;
  
    public StringIterator(String iterableString){
        this.iterableString = iterableString;
        this.currentIndex = 0;
    } 
  
    public String next(){
        if(hasNext()) {
            String currentElement = iterableString.substring(currentIndex, currentIndex + 1);
            currentIndex++;
            return currentElement;
        } else {
            throw new NoSuchElementException();
        }
    }

    public Boolean hasNext(){ 
        return currentIndex < iterableString.length();
    }
}
