package domain.db;

import domain.model.Vakantie;

import java.util.ArrayList;

public class VakantieDB {

    private ArrayList<Vakantie> vakanties =new ArrayList<Vakantie>();

    public VakantieDB(){
        this.voegtoe(new Vakantie("spanje", "barcelona", 8));
        this.voegtoe(new Vakantie("belgie", "brugge", 8));

    }

    public void voegtoe(Vakantie vakantie){
        vakanties.add(vakantie);
    }

    public Vakantie vind(String naam){
        if (naam == null || naam.isEmpty()){throw new IllegalArgumentException("plaats mag niet leeg zijn");}
    for (Vakantie vakantie: vakanties){
        if(vakantie.getStad().equals(naam)) {
            return vakantie;
        }
    }
    return null;
    }

    public ArrayList<Vakantie> getAlle(){
        return vakanties;
    }

    public Vakantie vindVakantieMetHoogsteRating(){
        if (vakanties.size() == 0){
            return null;
        }
        Vakantie hoogsteVakantie = vakanties.get(0);
        for (Vakantie vakantie: vakanties){
            if (vakantie.getRating() > hoogsteVakantie.getRating())
                hoogsteVakantie = vakantie;
        }
        return hoogsteVakantie;
    }


    public void verwijder(String naam){
        vakanties.remove(this.vind(naam));
    }
}
