package et.mi.checkboxform.tag;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.util.ArrayList;

public class CheckBoxListTag extends SimpleTagSupport {

    private String nomElement;
    private ArrayList<String> liste;

    public String getNomElement() {
        return nomElement;
    }

    public void setNomElement(String nomElement) {
        this.nomElement = nomElement;
    }

    public ArrayList<String> getListe() {
        return liste;
    }

    public void setListe(ArrayList<String> liste) {
        this.liste = liste;
    }

    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        for(String element: liste){
            out.println("<tr><td>" + element + "</td><td><input type=\"checkbox\" name=\"" + nomElement + "\" value=\"" + element + "\" ></td></tr>");
        }
    }
}
