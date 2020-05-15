// 816007034

public class Room{
    private int seatingCapacity;
    private final int numSlots=8;
    private Booking[] bookings=new Booking[numSlots];
    private String roomID;
    private static int roomIDCounter=100;
    private int timeBooked=0;
    public Room(String name,int seating){
        seatingCapacity=seating;
        for(int x=0;x<numSlots;x++){
            bookings[x]=null;
        }
        setName(name);
    }
    
    public void setName(String name){
        roomID=name+roomIDCounter;
        roomIDCounter=roomIDCounter+100;
    }
    
    public String toString(){
        String roomDetails="Room ID:"+roomID+" Seating Capacity:"+seatingCapacity;
        return roomDetails;
    }
    
    public boolean hasBooking(int bookingID){
        boolean bookingPresent=false;
        for(int x=0;x<numSlots;x++){
            if(bookings[x]!=null){
                if(bookings[x].getID()==bookingID)
                    bookingPresent=true;
            }
        }
        return bookingPresent;
    }
    public String addBooking(String description, int duration, int seats){
        int loc=0;
        String added="Booking added to schedule\n";
        boolean hasTime=canFitTime(duration);
        boolean hasNumber=canFitNumbers(seats);
        if(hasNumber==false)
            return null;
        if(hasTime==false)
            return null;
        if(hasNumber && hasTime){
            for(int x=0;x<numSlots;x++){
                if(bookings[x]==null)
                    loc=x;
                    break;
            }
            bookings[loc]=new Booking(description,duration,seats);
            bookings[loc].setLocation(roomID);
            timeBooked+=duration;
            added=added+bookings[loc].toString();
            for(int x=loc+1;x<duration;x++){
                bookings[x]=bookings[loc];
            }
        }
        return added;
    }
   public String getRoomID(){
    return roomID;
   }
   public String getBookingList(){
       String list="";
       boolean foundBooking=false;
       for(int x=0;x<timeBooked;x++){
         if(bookings[x]!=null)  
            list=bookings[x].toString();
            foundBooking=true;
        }
        if(foundBooking==false)
            list="No bookings have been made";
        return list;
    }
    public int getTimeBooked(){
        return timeBooked;
    }
    public String getBookingDetails(int bookingID){
        String bookingDetails=" ";
        boolean isABooking=hasBooking(bookingID);
        if(isABooking==false)
            bookingDetails="No booking exists with this ID";
        else{
            for(int x=0;x<numSlots;x++){
                if(bookings[x].getID()==bookingID){
                    bookingDetails=bookings[x].toString();
                    break;
                }
            }
        }
        return bookingDetails;
    }
   public boolean canFitTime(int duration){
       if(duration+timeBooked>numSlots)
        return false;
       else return true; 
    }
    public boolean canFitNumbers(int numSeats){
        if(seatingCapacity>numSeats)
            return true;
        else return false;
    }
   public String getDetailedBookingGrid(){
       String schedule=getRoomID();
       for(int x=0;x<numSlots;x++){
           if(bookings[x]==null)
            schedule=schedule+"|   |";
           else
            schedule=schedule+"| "+bookings[x].getID()+" |";
        }
        return schedule;
   }
}
    