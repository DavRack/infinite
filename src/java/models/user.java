package models;

import java.util.*;

public class user {

    private static user active_user = null;
    //lista donde se almacenan todos los usuarios (de todos los tipos)
    public static HashMap<String, user> all_users = new HashMap<>();
    //lista donde se almacenan los usuarios de tipo usuario
    public static HashMap<String, user> users = new HashMap<>();
    //lista con todos los usuarios falsos
    public static HashMap<String, user> fake_users = new HashMap<>();

    //nombre del archivo donde est� la base de datos
    
    public String file_name = "user_data_base.txt";
    private String name;
    String nikname;
    private String email;
    private String birth_date;
    private String nationality;
    private boolean logged;
    private String password;
    private boolean ban;
    private double money;
    private int activity;
    private boolean fake_user;
    private LinkedList friends;
    private LinkedList wishlist;
    private LinkedList bill_list;
    private LinkedList product_list;
    
    
    

    public user get_user() {
        return this;
    }

    public void set_name(String name) {
        this.name = name;
    }

    public String get_name() {
        return this.name;
    }

    public void set_nikname(String nikname) {
        this.nikname = nikname;
    }

    public String get_nikname() {
        return this.nikname;
    }

    public void set_email(String email) {
        this.email = email;
    }

    public String get_email() {
        return this.email;
    }

    public void set_birth_date(String birth_date) {
        this.birth_date = birth_date;
    }

    public String get_birth_date() {
        return this.birth_date;
    }

    public void set_nationality(String nationality) {
        this.nationality = nationality;
    }

    public String get_nationality() {
        return this.nationality;
    }

    public void set_logged(boolean logged) {
        this.logged = logged;
    }

    public boolean get_logged() {
        return this.logged;
    }

    public void set_password(String password) {
        this.password = password;
    }

    public String get_password() {
        return this.password;
    }

    public void set_ban(boolean ban) {
        this.ban = ban;
    }

    public boolean get_ban() {
        return this.ban;
    }

    public void set_money(double money) {
        this.money = money;
    }

    public double get_money() {
        return this.money;
    }

    public void set_activity(int activity) {
        this.activity = activity;
    }

    public int get_activity() {
        return this.activity;
    }

    public void set_fake_user(boolean fake_user) {
        this.fake_user = fake_user;
    }

    public boolean get_fake_user() {
        return this.fake_user;
    }

    public static void set_active_user(user active_user) {
        user.active_user = active_user;
    }

    public static user get_active_user() {
        return user.active_user;
    }

    public void set_friendslist(LinkedList friends) {
        this.friends = friends;
    }
    
    public void set_product_list(LinkedList products) {
        this.product_list = products;
    }

    public void set_wishlist(LinkedList wishlist) {
        this.wishlist = wishlist;
    }

    public void set_bill_list(LinkedList bill_list) {
        this.bill_list = bill_list;
    }

    
    public void append_to_product_list(product product_object){
        this.get_product_list().add(product_object);
    }
    
    public LinkedList get_product_list(){
        return this.product_list;
    }
        
    public LinkedList get_bill_list(){
        return this.bill_list;
    }
    
    public LinkedList get_friendlist() {
        return this.friends;
    }

    public LinkedList get_whishlist() {
        return this.wishlist;
    }

    public void add_users() {
        users.put(this.get_nikname(), this);
    }

    public void add_all_users() {
        all_users.put(this.get_nikname(), this);
    }
    public static int get_all(){
        return all_users.size();
    }

    public user(String name, String nikname, String email, String birth_date, String nationality, String password, double money) {

        LinkedList<user> friends = new LinkedList<>();
        LinkedList<product> wishlist = new LinkedList<>();
        LinkedList<product> bill_list = new LinkedList<>();
        LinkedList<product> product_list = new LinkedList<>();
        this.set_name(name);
        this.set_product_list(product_list);
        this.set_nikname(nikname);
        this.set_email(email);
        this.set_birth_date(birth_date);
        this.set_nationality(nationality);
        this.set_password(password);
        this.set_logged(logged);
        this.set_ban(ban);
        this.set_money(money);
        this.set_activity(0);
        this.set_fake_user(false);
        this.set_wishlist(wishlist);
        this.set_friendslist(friends);
        this.set_bill_list(bill_list);

        if (this instanceof user) {
            this.add_users();
        }
        this.add_all_users();
    }

    // falta importar los datos del txt
    public static boolean log_in_test(String nikname, String password) {
        if (all_users.containsKey(nikname)) {
            user usuario = all_users.get(nikname);
            if (password.equals(usuario.get_password())) {
                return true;
            }
        }
        return false;
    }

    public static user log_in_by_nikname(String nikname) {
        // Si no se mete al if, retorna null
        if (all_users.containsKey(nikname)) {
            user usuario = all_users.get(nikname);
            if (usuario.get_nikname().equals(nikname)) {
                usuario.set_logged(true);
                int act = usuario.get_activity() + 1;
                usuario.set_activity(act);
                user.set_active_user(usuario);
                return usuario;
            }
        }
        return null;
    }

    public static void log_out() {
        user.active_user.set_logged(false);
        user.set_active_user(null); // El log out ahora no pone cero, sino null
    }

    public static boolean nikname_aviable(String nikname) {
        String lower_nikname = nikname.toLowerCase();
        return !(all_users.containsKey(nikname) || all_users.containsKey(lower_nikname));
    }

    public boolean verify_password(String password) {
        if (password.equals(this.get_password())) {
            return true;
        }
        return false;
    }

    public static boolean verify_email(String email) { // EN PROCESO...
        String[] emailp = email.split("@");
        if (emailp.length > 1) {
            for (int i = 0; i < emailp[1].length() - 1; i++) {
                if ((emailp[1].charAt(i)) == ('.') && emailp[1].charAt(emailp[1].length() - 1) != '.') {
                    return false;
                }
            }
        }
        return true;
    }

    //public static boolean email_verify(String email) {
        // Falta implementarlo :P
    //}

    public boolean add_friend(user usuario) {
        if (user.users.containsKey(usuario.get_nikname()) && !this.friends.contains(usuario)) {
            this.get_friendlist().add(usuario);
            return true;
        }
        return false;
    }

    public static void ban(String user_nikname) {

        user usuario = user.search_by_nikname(user_nikname);
        usuario.set_ban(true);

    }

    public static void un_ban(String user_nikname) {

        user usuario = user.search_by_nikname(user_nikname);
        usuario.set_ban(false);

    }

    public static int get_user_quantity() {
        return user.users.size();
    }

    //public static get_user_activity(){
    // Falta Implementar :P
    //}
    public boolean verify_birth(String birth_date) {
        String[] birth = birth_date.split("/");
        int day = Integer.parseInt(birth[0]);
        int month = Integer.parseInt(birth[1]);
        int year = Integer.parseInt(birth[2]);
        if (day <= 31 && day >= 1 && month <= 12 && month >= 1) {
            return true;
        }
        return false;
    }

    public boolean verify_money(double money) {
        if (money < 0) {
            return false;
        }
        return true;
    }

    //public verify_nikname(String nikname){
    // Falta por implementar :P
    //}
    //public verify_name(String objective_name){
    // Falta implementar :P
    //}
    public static user search_by_nikname(String nikname) {
        for (HashMap.Entry<String, user> entry : users.entrySet()) {
            if (entry.getKey().equals(nikname)) {
                return entry.getValue();
            }
        }
        return null;
    }
    
    public static String get_most_active_user(){
        int max = 0;
        String nickname = "";
        for (HashMap.Entry<String, user> entry : users.entrySet()) {
            if (users.get(entry.getKey()).get_activity() > max) {
                max =users.get(entry.getKey()).get_activity();
                nickname=entry.getKey();
            }
        }
        
        
        return nickname;
    }
    
    public void add_money(double money){
        double mon = this.get_money()+money;
        
        this.set_money(mon);
       
        
    }
    
    public static String go_home(){
        
        if (models.user.get_active_user() instanceof admin){
            return "Postlog_admin.jsp";
        }else if (models.user.get_active_user() instanceof seller){
            return "Postlog_seller.jsp";
        }else{
            return "Postlog_lobby.jsp";
        }
         
    }
}
