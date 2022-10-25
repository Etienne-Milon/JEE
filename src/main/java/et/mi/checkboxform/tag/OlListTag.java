package et.mi.checkboxform.tag;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.util.ArrayList;

public class OlListTag extends SimpleTagSupport {

    private ArrayList<String> liste;

    public ArrayList<String> getListe() {
        return liste;
    }

    public void setListe(ArrayList<String> liste) {
        this.liste = liste;
    }

    public void doTag() throws JspException, IOException{
        JspWriter out = getJspContext().getOut();
        out.println("<ol>");
        for(String element : liste){
            out.println("<li>" + element + "</li>");
        }
        out.println("</ol>");
    }
}

