package ui.controller;

import domain.db.VakantieDB;
import domain.model.Vakantie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private VakantieDB db = new VakantieDB();

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        proccesRequest(request, response);
    }

    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = "home";
        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }
        String destination;
        switch (command) {
            case "home":
                destination = home(request, response);
                break;
            case "voegtoe":
                destination = voegtoe(request, response);
                break;
            case "overzicht":
                destination = overzicht(request, response);
                break;
            case "verwijderBevestiging":
                destination = getVerwijderBevestiging();
                break;
            case "verwijder":
                destination = verwijder(request, response);
                break;
            case "zoekvakantie":
                destination = zoekvakantie(request);

                break;

            default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        Vakantie besteVakantie = db.vindVakantieMetHoogsteRating();
        request.setAttribute("hoogsteVakantie", besteVakantie);
        return "index.jsp";
    }

    private String voegtoe(HttpServletRequest request, HttpServletResponse response) {

        String stad = request.getParameter("stad");
        String land = request.getParameter("land");
        String rating = request.getParameter("rating");
        if (!land.isEmpty() && !stad.isEmpty() && !rating.isEmpty()) {
            Vakantie vakantie = new Vakantie(land, stad, Integer.parseInt(rating));
            db.voegtoe(vakantie);
            return overzicht(request, response);
        } else {
            return "voegtoe.jsp";
        }
    }

    private String overzicht(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("vakanties", db.getAlle());
        return "overzicht.jsp";
    }

    private String getVerwijderBevestiging() {
        return "verwijderBevestiging.jsp";
    }

    private String verwijder(HttpServletRequest request, HttpServletResponse response) {
        String stad = request.getParameter("stad");
        db.verwijder(stad);
        return overzicht(request, response);
    }


    public String zoekvakantie(HttpServletRequest request){
        String destination;
        String stad = request.getParameter("stad");

        if(stad == null){
            destination = "nietgevonden.jsp";
        }else{
            Vakantie vakantie = db.vind(stad);
            if(vakantie == null){
                destination = "nietGevonden.jsp";
            }else{
                destination = "gevonden.jsp";
                request.setAttribute("vakantie",vakantie);
            }
        }
        request.getRequestDispatcher(destination);
        return destination;
    }
}




