
package models;
import java.util.*;
public class comment {

    private static HashMap<Integer,comment>comments=new HashMap<>();
    private user buyer;
    private String date;
    private int assessment;    
    private String description;
    private product product;
    private user author;
    public user get_buyer(){
        return buyer;
    }
    public void set_buyer(user buyer){
        this.buyer=buyer;
    }
    public String get_date(){
        return date;
    }
    public void set_date(String date){
        this.date=date;
    }
    public int get_assassment(){
        return assessment;        
    }
    public void set_assessment(int assessment){
        this.assessment=assessment;
    }
    public String get_description(){
        return description;
    }
    //ojo, tenemos dos funciones que hacen lo mismo hayq ue escojer una de las dos lo mejor seria dejar el set
    public void set_description(String description){
        this.description=description;
    }
    public void edit_description(String description){
        this.description=description;        
    }
    //cambio lo de poner game por product ya que el profe menciono eso la otra vez 
    public product get_product(){
        return product;
    }
    public void set_product(product product){
        this.product=product;
    }
    public void post_comment(){
        this.comments.put(this.get_assassment(),this);
    }
    public user get_author(){
        return author;
    }
    public void set_author(user author){
        this.author=author;
    }
    public comment(user author, String date, int assessment, String description, product product){
        this.set_author(author);
        this.set_date(date);
        this.set_assessment(assessment);
        this.set_description(description);
        product.get_comment_list().add(this);
    }           
    
}
