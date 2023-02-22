import java.net.*;
import java.util.*;
public class IPFinder
{
  public void main(string[]args)
    
         string host;
         Scanner input=new Scanner(system.in);
         system.out.print("\Enter Host Name");
         host=input.next();
         try
              { InetAddress ad1=InetAddress.getLocalHost();
                 InetAddress ad2=InetAddress.getByName(host);
              system.out.println("IP:" + ad2.tostring()+"   " +ad1.tostring());
         
                   catch(Unknown Host Exception uhEx)
                     {

                             system.out.println("Not Found"+host);
                       }
               }
     }