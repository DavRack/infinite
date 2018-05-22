package models;

import static models.user.get_active_user;
import java.util.*;

public class bill {

    public static int cuantity_of_games() {
        return user.get_active_user().get_bill_list().size();
    }

    public static String add_game(product game, LinkedList listgames) {
        listgames.add((product)game);
        return message.mensaje.get("juego_agregado_al_carrito");
    }

    public void remove_game(List listgames, String objetive_name) {
        Iterator iter = listgames.iterator();
        while (iter.hasNext()) {
            Object pro = iter.next();
            if (pro.equals(objetive_name)) {
                listgames.remove(pro);
            }
        }
    }
    
    public static double total_price(LinkedList<product> listgames){
        double cont=0;
        Iterator iter = listgames.iterator();
        while(iter.hasNext()){
            product obj = (product) iter.next();
            cont+=obj.get_price();
        }
        return cont;
    }
    
    public static double consolidate_purchase(LinkedList<product> listgames){
        
        double price = total_price(listgames);
        double money = user.get_active_user().get_money();
        if (money < price) {
            return -1;
        }
        else{
        double actual_money= money-price;
        user.get_active_user().set_money(actual_money);
        Iterator iter = listgames.iterator();
        while(iter.hasNext()){
            product game= (product)iter.next();
            game.sold();
            user.get_active_user().append_to_product_list(game);
            user.get_active_user().get_whishlist().remove(game);
        }
        reset_car();
        return actual_money;
    }
    }
    public static void reset_car(){
        user.get_active_user().get_bill_list().clear();
    }
    public static boolean Is_in_car(String objetive_name, LinkedList<product> listgames){
        Iterator iter= listgames.iterator();
        while(iter.hasNext()){
            product game = (product) iter.next();
            if (game.get_name().equals(objetive_name)){
                return true;
            }
        }
        return false;
    } 
}
