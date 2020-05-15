// 816007034

import java.util.Scanner;
public class RentalConsole{
    
    
    public static void main(String[] args){
        RentalSystem rentalSystem1=new RentalSystem();
        int options=-999;
        Scanner scan=new Scanner(System.in);
        while(options!=0){
            System.out.println("Choose menu option");
            System.out.println("1.Add a new room to the system");
            System.out.println("2.Display a list of all rooms managed by the system");
            System.out.println("3.Add a new booking to the system");
            System.out.println("4.Display an existing booking based on a unique ID");
            System.out.println("5.Display bookings by room");
            System.out.println("6.Display a booking grid of all rooms and booked slots");
            System.out.println("0.Exit Program");
            options=scan.nextInt();
            
            if(options==1){
                String name="name";
                int seatingCapacity=0;
                System.out.println("Enter name:");
                name=scan.next();
                System.out.println("Enter seating capacity:");
                seatingCapacity=scan.nextInt();
                String addRoom=rentalSystem1.addRoom(name,seatingCapacity);
                System.out.println(addRoom);
            }
            if(options==2){
                String rooms=rentalSystem1.getRoomList();
                System.out.println(rooms);
            }
            if(options==3){
                String description;
                int duration;
                int numSeating;
                System.out.println("Enter description:");
                description=scan.next();
                System.out.println("Enter duration:");
                duration=scan.nextInt();
                System.out.println("Enter seats:");
                numSeating=scan.nextInt();
                String booking=rentalSystem1.addBooking(description,duration,numSeating);
                System.out.println(booking);
            }
            if(options==4){
                String booking;
                int bookingID;
                System.out.println("Enter booking ID:");
                bookingID=scan.nextInt();
                booking=rentalSystem1.getBooking(bookingID);
                System.out.println(booking);
            }
            if(options==5){
                String ID;
                System.out.println("Enter room ID:");
                ID=scan.next();
                String booking=rentalSystem1.getBookingsByRoom(ID);
                System.out.println(booking);
            }
            if(options==6){
                String rentalGrid=rentalSystem1.getBookingGrid();
                System.out.println(rentalGrid);
            }
            if(options==0){
                System.out.println("Program will now exit");
            }
            else if(options<0 || options>6){
                System.out.println("Invalid option selected.\n");
            }
        }
    }
}