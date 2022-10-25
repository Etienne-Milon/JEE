package et.mi.checkboxform;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class QuestionnaireBean {

    public QuestionnaireBean() {
        this.competences = new ArrayList<>(Arrays.asList("Classe","Constructeurs","Instance","Reference","Methode","Collection",
                "Exception","Interface","Implementation"));
        this.competencesAcquises = new ArrayList<>();
        this.competencesNonAcquises = new ArrayList<>();
    }

    private String nom = "";
    private ArrayList<String> competences;
    private ArrayList<String> competencesAcquises;
    private ArrayList<String> competencesNonAcquises;
    private Map <String,String> errors;

    public ArrayList<String> getCompetences() {
        return competences;
    }

    public void setCompetences(ArrayList<String> competences) {
        this.competences = competences;
    }

    public ArrayList<String> getCompetencesAcquises() {
        return competencesAcquises;
    }

    public void setCompetencesAcquises(ArrayList<String> competencesAcquises) {
        this.competencesAcquises = competencesAcquises;
    }

    public ArrayList<String> getCompetencesNonAcquises() {
        return competencesNonAcquises;
    }

    public void setCompetencesNonAcquises(ArrayList<String> competencesNonAcquises) {
        this.competencesNonAcquises = competencesNonAcquises;
    }



    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }



    public Map<String,String> getErrors() {
        return errors;
    }

    public boolean validate() {
        errors = new HashMap<>();
        boolean validate = true;
        if (nom.isEmpty()){
            errors.put("nom","renseignez un nom");
            validate = false;
        }
        return validate;
    }



}
