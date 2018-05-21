package models;

import java.util.*;

public class product {

    private seller seller;
    private String name;
    private String description;
    private int product_id;
    private int price;
    private String category;
    private int solds;
    private LinkedList comment_list;
    private static LinkedList<product> products = new LinkedList<>();

    public String get_name() {
        return name;
    }

    public void set_name(String name) {
        this.name = name;
    }

    public String get_description() {
        return description;
    }

    public void set_description(String description) {
        this.description = description;
    }

    public int get_product_id() {
        return product_id;
    }

    public void set_product_id(int product_id) {
        this.product_id = product_id;
    }

    public int get_price() {
        return price;
    }

    public void set_price(int price) {
        this.price = price;
    }

    //faltan los get y los set de las date 
    public seller get_seller() {
        return seller;
    }

    public void set_seller(seller seller) {
        this.seller = seller;
    }

    //ni idea de si est� bien 
    public LinkedList get_comment_list() {
        return comment_list;
    }

    public void set_comment_list(LinkedList comment_list) {
        this.comment_list = comment_list;
    }

    public String get_category() {
        return category;
    }

    public void set_category(String category) {
        this.category = category;
    }

    public int get_solds() {
        return solds;
    }

    public void set_solds(int solds) {
        this.solds = solds;
    }
    
    public static LinkedList get_products(){
        return products;
    }


    public product(String name, String descripcion, seller seller, int price, String category) {
        LinkedList<String> comment_list = new LinkedList<String>();
        this.set_name(name);
        this.set_description(description);
        this.set_seller(seller);
        this.set_price(price);
        this.set_category(category);
        this.set_solds(0);
        this.set_comment_list(comment_list);
        products.add(this);
        //falta lo de la lista de el seller para agregar el producto a si mismo
    }

    // mirar como recorrer la hash table para los productos
    //revisar lo de abajo
    public static String best_seller() {
        int c = 0;
        product product = null;
        Iterator iter = products.iterator();
        while (iter.hasNext()) {
            product pro = (product) iter.next();
            int value = pro.get_solds();
            if (c < value) {
                c = value;
                product = pro;
            }
        }
        return product.get_name();
    }

    public void sold() {
        double seller_money = this.get_seller().get_money() + this.get_price();
        this.set_solds(this.get_solds() + 1);
        this.get_seller().set_money(seller_money);
    }

    public static int product_quantity() {
        return products.size();
    }

    public static product search_id(int product_id) {
        /*busca el producto por product_id*/
        Iterator iter = products.iterator();
        while (iter.hasNext()) {
            product pro = (product) iter.next();
            if (pro.get_product_id() == product_id) {
                return pro;
            }
        }
        return null;
        //revisas cuando se use esta funci�n que hay que cambiar la manera en la que muestra el mensaje 
    }

    public static LinkedList search_name(String objetive_name) {
        /*busca el productos por el nombre dado,retorna una lista de productos que coincidan con el nombre,
        en caso de no encontrar ningun archivo retorna null(hay que mirar si eso se puede dejar as� o como se arregla eso)*/
        LinkedList<product> product_list = new LinkedList<>();
        int c = 0;
        Iterator iter = products.iterator();
        while (iter.hasNext()) {
            product pro = (product) iter.next();
            if (pro.get_name().equals(objetive_name)) {
                product_list.add(pro);
            }
        }
        if (product_list.size() != 0) {
            return product_list;
        } else {
            return null;
        }
    }

    public static LinkedList search_category(String objetive_category) {
        /*busca el productos por la categor�a dada, retorna una lista de productos que coincidan con la categor�a,
        en caso de no encontrar ningun archivo retorna null(hay que mirar si eso se puede dejar as� o como se arregla eso)*/
        LinkedList<product> product_list = new LinkedList<>();
        Iterator iter = products.iterator();
        while (iter.hasNext()) {
            product pro = (product) iter.next();
            if(pro.get_category().equals(objetive_category)){
                product_list.add(pro);
            }
        }
        if (product_list.size() != 0) {
            return product_list;
        } else {
            return null;
        }
        
    }
    //no se si el to string se tenga que hacer tambi�n 
    //el show products hayq ue mirar como quedaria con lo de la web
}
