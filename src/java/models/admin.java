package models;


import java.util.*;

public class admin extends user{
    static HashMap <String, admin>admins = new HashMap<>();
    
    public admin(String name, String nikname, String email, String birth_date, String nationality, String password, double money, boolean fake_user) {
        super(name, nikname, email, birth_date, nationality, password, money, fake_user);
        admins.put(nikname,this);
    }
    public static admin sign_in(String name, String nikname, String email, String birth_date, String nationality, String password, double money, boolean logged, boolean ban, int activity, boolean fake_user){
        admin administrador = new admin(name, nikname, email, birth_date, nationality, password, money, fake_user);
        admins.put(nikname, administrador);
        return administrador;
    }
    public static boolean is_admin(admin admin_object){
        if(admin_object instanceof admin){
            return true;
        }
        return false;
    }
}
