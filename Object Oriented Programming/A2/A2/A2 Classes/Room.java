
/** Emilo Gopaul 816007034 */
import java.util.ArrayList;

public class Room
{
    private int roomTemperature;
    private int roomBreeziness;
    private int roomNoisiness;
    

   //  public static void main(String args[])
   
      
    ArrayList<Device> deviceList = new ArrayList<Device>();
    
   
    
    public Room(int startingTemperature)
    {
       roomTemperature = startingTemperature;
       roomBreeziness = 0;
       roomNoisiness = 0;
    }
    
    public ArrayList<Device> getDevices()
    {
        return deviceList;
    }
    
    public boolean addDevice(Device d)
    {
        if(deviceList.contains(d))
        return false;
        
        else
        {
            deviceList.add(d);
            return true;
        }
    }
    
    public boolean removeDevice(Device d)
    {
        for(Device dev:deviceList){
            if(dev.equals(d) && d instanceof PortableDevice){
                deviceList.remove(d);
                return true;
            }
            
        }
        return false;
    }

    public int getTemperatureDrop()
    {
        for(Device d : deviceList)
        {
            if(d instanceof AC)
            {
                if(d.isOn())
                roomTemperature = roomTemperature - 5;
            } 
            
            if(d instanceof CeilingFan)
            {
                if(d.isOn())
                roomTemperature = roomTemperature - 3;
            } 
            
            if(d instanceof StandingFan)
            {
                if(d.isOn())
                roomTemperature = roomTemperature - 1;
            } 
        }
        
        return roomTemperature;
    }
    
    public int getTemperature()
    {
        return roomTemperature;
    }
   
    public int getBreeziness()
    {
        for(Device d : deviceList)
        {
            if(d instanceof Fan)
            {
                if(d.isOn())
                roomBreeziness = roomBreeziness + 2;
            } 
        }
        return roomBreeziness;
    }
    
    public int getNoisiness()
    {
        for(Device d : deviceList)
        {
            if(d instanceof StandingFan)
            {
                if(d.isOn())
                roomNoisiness = roomNoisiness + 2;
            } 
        }
        return roomNoisiness;
    }
    
    public void printState()
    {
        System.out.println("Room: \nNoisiness:"+roomNoisiness+"Breeziness:"+roomBreeziness+"Temperature:"+roomTemperature);
        System.out.println("Devices:");
        for(Device dev: deviceList){
            System.out.println("ID:"+dev.getID()+"\nCools By:"+dev.coolsBy()+"Is On:"+dev.isOn());
            System.out.println("Noisiness:"+dev.getNoisiness()+"Breeziness:"+dev.getBreeziness());
        }
    }
}

