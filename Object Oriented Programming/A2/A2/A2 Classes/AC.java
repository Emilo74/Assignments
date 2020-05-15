/** Emilo Gopaul 816007034 */

public class AC implements Device
{
    private int breeziness = 0;
    private int noisiness = 0;
    private int coolsBy = 5;
    private static int acCounter = 0;
    private boolean isOn;
    private String id;
    
    public AC(){
      
      isOn = false;
    }
    public void setID(String id)
    {
        acCounter=acCounter+1;
        id="AC"+acCounter;
    }
      public String getID(){
          
          return id;
          
        }
      public boolean isBreezy(){
          if(breeziness>0)
            return true;
          else
            return false;
        }
      public boolean isNoisy(){
          if(noisiness>0)
            return true;
          else return false;
        }
      public boolean isOn(){
          
          if(isOn == true)
            return true;
          
          else
            return false;         
           
      }
      public void turnOn(){
          
          isOn = true;
          return;
          
          
        }
      public void turnOff(){
          
          isOn = false;
          return;
        }
      public int coolsBy(){
          
          return coolsBy;
        }
      public int getBreeziness(){
          
          return breeziness;
        }
      public int getNoisiness(){
          
          return noisiness;
        }
}

