

import static org.junit.Assert.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * The test class RoomTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class RoomTest
{
    private Device ceilingF1;
    private Device standingF1;
    
    private Device aC1;
    private Room room1;

    Room room4 = new Room(25);
    Room room = new Room(30);
    Room room2 = new Room(35);
    Room room3 = new Room(37);
    /**
     * Default constructor for test class RoomTest
     */
    public RoomTest()
    {
    }

    /**
     * Sets up the test fixture.
     *
     * Called before every test case method.
     */
    @Before
    public void setUp()
    {
        ceilingF1 = new CeilingFan();
        standingF1 = new StandingFan();
        aC1 = new AC();
        room1 = new Room(30);
    }

    /**
     * Tears down the test fixture.
     *
     * Called after every test case method.
     */
    @After
    public void tearDown()
    {
    }

    @Test
    public void testDeviceArrayList(){
        java.util.ArrayList<Device> devices =room1.getDevices();
        assertNotNull(devices);    
    }
    @Test
    public void testAddDevices(){
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        java.util.ArrayList<Device> devices =room1.getDevices();
        assertEquals(3,devices.size());
 
    }
    @Test
    public void testRemoveDevices(){
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        assertFalse(room1.removeDevice(ceilingF1));
        assertFalse(room1.removeDevice(aC1));
        assertTrue(room1.removeDevice(standingF1));
        java.util.ArrayList<Device> devices =room1.getDevices();
        assertEquals(2,devices.size());
 
    }
    @Test
    public void testGetDevices()
    {
        room1.addDevice(ceilingF1); 
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        java.util.ArrayList<Device> devices = room1.getDevices();
        for(Device d: devices){
            if(d instanceof AC){
                assertEquals(0,d.getBreeziness());
                assertEquals(0,d.getNoisiness());
            }
            if(d instanceof CeilingFan){
                assertEquals(2,d.getBreeziness());
                System.out.println(d.toString());
                assertEquals(0,d.getNoisiness());   
            }
            if(d instanceof StandingFan){
                assertEquals(2,d.getBreeziness());
                assertEquals(2,d.getNoisiness());  
            }
        }
    }
    @Test
    public void testRoomBreeziness()
    {
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        assertEquals(room1.getBreeziness(), 0);
        standingF1.turnOn();
        assertEquals(room1.getBreeziness(), 2);
        ceilingF1.turnOn();
        assertEquals(room1.getBreeziness(), 4);
        aC1.turnOn();
        assertEquals(room1.getBreeziness(), 4);
    }
    
    @Test
    public void testRoomNoisiness()
    {
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        assertEquals(room1.getNoisiness(), 0);
        standingF1.turnOn();
        assertEquals(room1.getNoisiness(), 2);
        ceilingF1.turnOn();
        assertEquals(room1.getNoisiness(), 2);
        aC1.turnOn();
        assertEquals(room1.getNoisiness(), 2);
    }
    @Test
    public void testTemperatureDrop()
    {
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        assertEquals(room1.getTemperatureDrop(), 0);
        standingF1.turnOn();
        assertEquals(room1.getTemperatureDrop(), 1);
        ceilingF1.turnOn();
        assertEquals(room1.getTemperatureDrop(), 4);
        aC1.turnOn();
        assertEquals(room1.getTemperatureDrop(), 9);
    }
    @Test
    public void testTemperatureRise()
    {
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        standingF1.turnOn();
        ceilingF1.turnOn();      
        aC1.turnOn();
        assertEquals(room1.getTemperatureDrop(), 9);
        aC1.turnOff();
        assertEquals(room1.getTemperatureDrop(), 4);
        ceilingF1.turnOff();
        assertEquals(room1.getTemperatureDrop(), 1);
        standingF1.turnOff();
        assertEquals(room1.getTemperatureDrop(), 0);
    }
    @Test
    public void testTemperatureRiseAndFall()
    {
        room1.addDevice(ceilingF1);
        room1.addDevice(aC1);
        room1.addDevice(standingF1);
        standingF1.turnOn();
        ceilingF1.turnOn();      
        assertEquals(room1.getTemperatureDrop(), 4);      
        ceilingF1.turnOff();
        assertEquals(room1.getTemperatureDrop(), 1);
        aC1.turnOn();
        assertEquals(room1.getTemperatureDrop(), 6);
        aC1.turnOff();
        standingF1.turnOff();
        assertEquals(room1.getTemperatureDrop(), 0);
    }
}