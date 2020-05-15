/** Emilo Gopaul 816007034 */
import java.util.*;
import java.util.ArrayList;
import java.util.Iterator;

public class CoolingSimulation
{
    public static void main(String[] args){
     CoolingSimulation sim = new CoolingSimulation();
     sim.createRooms();
     sim.createDevices();
     sim.coolRoom1();
     sim.coolRoom2();
     sim.coolRoom3();
   //  sim.coolRoom4();
     sim.printStates();

    }

    ArrayList<Room> rooms = new ArrayList<Room>();


    public CoolingSimulation()
    {


    }


   public ArrayList<Room> getRooms()
   {
       return rooms;
    }

   public Room getRoom(int i)
   {
       return rooms.get(i-1);
    }

   public void createRooms()
   {
        Room room1 = new Room(30);
        Room room2 = new Room(35);
        Room room3 = new Room(37);
        Room room4 = new Room(25);

        rooms.add(room1);
        rooms.add(room2);
        rooms.add(room3);
        rooms.add(room4);
        return;
   }

   public void createDevices()
   {
       Room room1=getRoom(1);
       Room room2=getRoom(2);
       Room room3=getRoom(3);
       Room room4=getRoom(4);

       ArrayList<Device> deviceList1=room1.getDevices();
       ArrayList<Device> deviceList2=room2.getDevices();
       ArrayList<Device> deviceList3=room3.getDevices();
       ArrayList<Device> deviceList4=room4.getDevices();

       deviceList1.add(new AC());
       deviceList1.add(new CeilingFan());
       deviceList1.add(new StandingFan());
       deviceList1.add(new StandingFan());
       deviceList1.add(new StandingFan());

       deviceList2.add(new AC());
       deviceList2.add(new AC());
       deviceList2.add(new CeilingFan());
       deviceList2.add(new StandingFan());
       deviceList2.add(new StandingFan());
       deviceList2.add(new StandingFan());
       deviceList2.add(new StandingFan());

       deviceList3.add(new AC());
       deviceList3.add(new CeilingFan());
       deviceList3.add(new CeilingFan());
       deviceList3.add(new StandingFan());
       deviceList3.add(new StandingFan());

       deviceList4.add(new AC());
       deviceList4.add(new CeilingFan());
       deviceList4.add(new StandingFan());
    }

   public void swapPortableDevices(Room r1, Room r2)
   {
       ArrayList<Device> deviceList=r1.getDevices();
       ArrayList<Device> deviceList2=r2.getDevices();
       for(Device d : deviceList)
       {
           if(d instanceof PortableDevice)
           {
               if(!d.isOn())
               {
                   deviceList2.add(d);
                   deviceList.remove(d);
                }
            }
        }


   }

   public void coolRoom1()
   {
       for(Device d: getRoom(1).getDevices()){
            if(d.isBreezy() || d.isNoisy())
                d.turnOn();
       }
    }

    public void coolRoom2()
   {
       for(Device d: getRoom(2).getDevices()){
            if((!d.isBreezy()) && (!d.isNoisy()))
            d.turnOn();
       }
    }

     public void coolRoom3()
   {
       for(Device d: getRoom(3).getDevices()){
            if(!d.isNoisy())
            d.turnOn();
       }
    }

  /*   public void coolRoom4()
   {
      Room room4 = deviceList.getRoom(4);
        
        for(Device d: getRoom(1).getDevices()){
                if(!d.isOn());
                swapPortableDevices(d,room4);
        }

        for(Device d: getRoom(2).getDevices()){
                if(!d.isOn());
                swapPortableDevices(d,room4);
        }

        for(Device d: getRoom(3).getDevices()){
                if(!d.isOn());
                swapPortableDevices(d,room4);
        }

        for(Device d: getRoom(4).getDevices())
            d.turnOn();
    }
*/

    public void printStates()
    {
        for(Room r: rooms){
            r.printState();
        }
    }
}

