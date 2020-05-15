/** Emilo Gopaul 816007034 */

public class CeilingFan extends Fan 
{
    private static int noise=0;
    private String id;
     public CeilingFan()
    {
        super(noise);
        id="CFAN"+super.getID();
        setID(id);
    }
    
        

   
}

