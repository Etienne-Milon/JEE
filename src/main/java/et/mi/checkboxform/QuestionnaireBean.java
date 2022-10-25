package et.mi.checkboxform;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.jsp.JspWriter;
public class QuestionnaireBean {

    public QuestionnaireBean() {

    }

    private String nom = "";
    private Boolean classe = false;
    private Boolean constructeur = false;
    private Boolean instance = false;
    private Boolean reference = false;
    private Boolean methode = false;
    private Boolean exception = false;
    private Boolean implementation = false;
    private Boolean collection = false;
    private Boolean xinterface = false;
    private Map <String,String> errors;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Boolean getClasse() {
        return classe;
    }

    public void setClasse(Boolean classe) {
        this.classe = classe;
    }

    public Boolean getConstructeur() {
        return constructeur;
    }

    public void setConstructeur(Boolean constructeur) {
        this.constructeur = constructeur;
    }

    public Boolean getInstance() {
        return instance;
    }

    public void setInstance(Boolean instance) {
        this.instance = instance;
    }

    public Boolean getReference() {
        return reference;
    }

    public void setReference(Boolean reference) {
        this.reference = reference;
    }

    public Boolean getMethode() {
        return methode;
    }

    public void setMethode(Boolean methode) {
        this.methode = methode;
    }

    public Boolean getException() {
        return exception;
    }

    public void setException(Boolean exception) {
        this.exception = exception;
    }

    public Boolean getImplementation() {
        return implementation;
    }

    public void setImplementation(Boolean implementation) {
        this.implementation = implementation;
    }

    public Boolean getCollection() {
        return collection;
    }

    public void setCollection(Boolean collection) {
        this.collection = collection;
    }

    public Boolean getXinterface() {
        return xinterface;
    }

    public void setXinterface(Boolean xinterface) {
        this.xinterface = xinterface;
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
