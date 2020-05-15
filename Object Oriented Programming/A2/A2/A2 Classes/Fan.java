/** Emilo Gopaul 816007034 */

public abstract class Fan implements Device
{
    private final int breeziness = 2;
    private static int fanCounter = 0;
    private boolean isOn;
    public int noisiness;
    public int coolsBy;
    private String id;

 
    public Fan(int noise)
    {
        isOn = false;
        noisiness = noise;
        fanCounter++;
        id=""+fanCounter;
    }

    public void setID(String ID){
        id=ID;
    }
      public String getID(){
          return id;
        }
        
      public boolean isBreezy(){
          if(breeziness>0)
            return true;
          else return false;
      }
      
      public boolean isNoisy(){       
          if(noisiness > 0)
          return true;
         
         else
             return false;
      }
      
      public boolean isOn(){
          
          if(isOn == false)
          return false;
          
          else
                return true;
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
