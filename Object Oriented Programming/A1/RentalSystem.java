//     816007034
public class RentalSystem{
        Room[] rooms=new Room[10];
        int numRooms;
        
        public RentalSystem(){
            numRooms=0;
            for(int x=0;x<10;x++){
                rooms[x]=null;
            }
        }
        public String getBookingGrid(){
            if(numRooms==0)
                return "No rooms in the system";
            String bookingGrid="BOOKING GRID\n";
            for(int x=0;x<numRooms;x++){
                if(rooms[x]!=null){
                    bookingGrid=bookingGrid+rooms[x].getDetailedBookingGrid();
                }
            }
            return bookingGrid;
        }
        public String getBooking(int bookingID){
            if(numRooms==0)
                return "Booking ID not found";
                int present=-1;
                String booking="No booking exists with this ID";
            for(int x=0;x<numRooms;x++){
                if(rooms[x].hasBooking(bookingID)==true){
                    present=x;
                    break;
                }
            }
            if(present!=-1){
                booking=rooms[present].getBookingDetails(bookingID);
            }
            return booking;
        }
        public String getBookingsByRoom(String roomID){
            if(numRooms==0){
                return "Room ID not found";
            }
                String roomBooking="Booking List:";
            for(int x=0;x<numRooms;x++){
                if(rooms[x].getRoomID().equals(roomID)){
                    if(rooms[x].getTimeBooked()>0)
                        for(int y=0;y<rooms[x].getTimeBooked();y++){
                            roomBooking=roomBooking+rooms[x].getBookingList();
                        }
                    else roomBooking="No Bookings have been made";
                }
            }
            return roomBooking;
        }
        public String getRoomList(){
            if(numRooms==0)
                return "No rooms in the system:";
                String roomDetails="Room Details:\n";
            for(int x=0;x<numRooms;x++){
                roomDetails=roomDetails+rooms[x].toString()+"\n";
            }
            return roomDetails;
        }
        public String addRoom(String name,int seatingCapacity){
            int loc=-1;
            if(numRooms>9)
                return "Cannot add room. Max Rooms Reached";
            else{
                
                for(int x=0;x<10;x++){
                    if(rooms[x]==null){
                        loc=x;
                        rooms[loc]=new Room(name,seatingCapacity);
                        numRooms+=1;
                        break;
                    }
                }
            }
            return "Room successfully added:\n"+rooms[loc].toString();
        }
        public String addBooking(String description, int duration, int numSeating){
        String present="Not found";
        int loc=0;
        if(numRooms==0)
            return "Cannot add Booking";
        else{
            for(int x=0;x<numRooms;x++){
                present=rooms[x].addBooking(description,duration,numSeating);
                if(present==null){
                  present="Cannot add booking";  
                }
            }
        }
        return present;
    }
    
}