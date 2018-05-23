package models;

import java.util.*;
public class seller extends user {
    private static HashMap<Integer ,seller> sellers= new HashMap<>();

    public seller(String name, String nikname, String email, String birth_date, String nationality, String password , double money, boolean fake_user){
        super(name, nikname, email, birth_date, nationality, password, money, fake_user);
    }
    public static seller sign_in(String name, String nikname, String email, String birth_date, String nationality, String password, double money, boolean fake_user){
        seller u= new seller(name, nikname, email, birth_date, nationality, password, money, fake_user);
        sellers.put(sellers.size(),u);
        return u;
    }
}
