//   816007034
public class Booking{
    private int numSeating;
    private String location;
    private int duration;
    private String description;
    private int bookingID;
    private static int bookingIDCounter=1;
    
    
    public Booking(String bookingDescription, int bookingDuration, int seating){
        description=bookingDescription;
        duration=bookingDuration;
        numSeating=seating;
        bookingID=bookingIDCounter;
        bookingIDCounter=bookingIDCounter+1;
    }
    
    public String toString(){
        String bookingData=("ID:"+bookingID+" Description:"+description+" Duration:"+duration+" Location:"+location);
        return bookingData;
    }
    
    public int getID(){
        return bookingID;
    }
    
    public void setLocation(String loc){
        location=loc;
    }
    public void setSeats(int seats){
        numSeating=seats;
    }
    public void setDuration(int dur){
        duration=dur;
    }
    public void setID(int ID){
        bookingID=ID;
    }
    public void setDescription(String descript){
        description=descript;
    }
}