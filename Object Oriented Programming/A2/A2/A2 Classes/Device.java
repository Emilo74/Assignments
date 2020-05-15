
/**   Emilo Gopaul 816007034 */

public interface Device
{
  
  public abstract String getID();
  public abstract boolean isBreezy();
  public abstract boolean isNoisy();
  public abstract boolean isOn();
  public abstract void turnOn();
  public abstract void turnOff();
  public abstract int coolsBy();
  public abstract int getBreeziness();
  public abstract int getNoisiness();
  
}
