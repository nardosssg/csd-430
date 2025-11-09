/*
 * Nardos Gebremedhin
 * Module 4
 * 11/09/2025
 *  
 * 
 * This JavaBean stores details about Japan trip activity.
 * Implements Serializable as required.
 * 
 */
package japanBeans;
import java.io.Serializable;


public class JapanActivity implements Serializable {
	 private static final long serialVersionUID = 1L;
	 
	 //fields
	 private String city;
	 private String activity;
	 private String location;
	 private String date;
	 private String rating;
	    
	    
   // constructor
    public JapanActivity(String city, String activity, String location, String date, String rating) {
        this.city = city;
        this.activity = activity;
        this.location = location;
        this.date = date;
        this.rating = rating;
    }

    // getters and setters
    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    public String getActivity() { return activity; }
    public void setActivity(String activity) { this.activity = activity; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public String getDate() { return date; }
    public void setDate(String date) { this.date = date; }

    public String getRating() { return rating; }
    public void setRating(String rating) { this.rating = rating; }


}
