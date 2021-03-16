package domain.model;

public class Vakantie {
    private String land, stad;
    private int rating;


    public Vakantie(String land, String stad, int rating)
    {
        this.setLand(land);
        this.setStad(stad);
        this.setRating(rating);
    }
    public Vakantie(String stad){
        this.setStad(stad);
    }
    public static boolean isValidString(String input){
        return (input != null) && !(input.trim().isEmpty());
    }
    public static boolean isValidRating( int rating){
        return rating < 10 && rating > 0;
    }

    public void setLand(String land) {
       if (isValidString(land))
           this.land=land;
       else throw new IllegalArgumentException("no valid land");
    }


    public void setRating(int rating) {
        if (isValidRating(rating))
            this.rating= rating;
        else throw new IllegalArgumentException("no valid rating");
    }

    public void setStad(String stad) {
        if (isValidString(stad))
            this.stad = stad;
        else throw new IllegalArgumentException("no valid stad");
    }

    public int getRating() {
        return rating;
    }

    public String getLand() {
        return land;
    }

    public boolean heeftPlaats(String land,String stad) {
        return land.equals(this.getLand()) && land.equals(this.getStad());
    }
    public String getStad() {
        return stad;
    }

    public String format(){
        return getLand() + " " + getStad() + " , rating is: " + getRating();
    }
}
