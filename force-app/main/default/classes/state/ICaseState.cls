public interface ICaseState {
    void close(Case customerCase); 
    void calculateTimeSpent(Case customerCase); 
    void validate(Case customerCase);
}
