/** Emilo Gopaul 816007034 */

public class StandingFan extends Fan implements PortableDevice
{

    private final int coolsBy = 1;
    private static int noisiness = 2;
    private String id;

    public StandingFan()
    {     
        super(noisiness);
        id="SFAN"+super.getID();
    }

}

