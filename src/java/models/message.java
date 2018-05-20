/*
 * para poder acceder a los datos es necesario llamar la funcion generar()
 * al inicio del programa. 
 */
package models;

import java.util.*;

/**
 *
 * @author david
 */
public class message {

    
// mensajes
    public static HashMap<String, String> mensaje = new HashMap<>();
//errores    
    public static HashMap<String, String> error = new HashMap<>();
//listas con los choices
    public static List<String> choices_aditional_menu_A = new ArrayList<>();
    public static List<String> choices_aditional_menu_B = new ArrayList<>();
    public static List<String> choices_category = new ArrayList<>();
    public static List<String> choices_comment_delete = new ArrayList<>();
    public static List<String> choices_edit_menu = new ArrayList<>();
    public static List<String> choices_main_menu = new ArrayList<>();
    public static List<String> choices_nationality = new ArrayList<>();
    public static List<String> choices_post_search_menu = new ArrayList<>();
    public static List<String> choices_product_menu = new ArrayList<>();
    public static List<String> choices_profile = new ArrayList<>();
    public static List<String> choices_seller_menu = new ArrayList<>();
    public static List<String> choices_sign_in = new ArrayList<>();
    public static List<String> choices_user_menu = new ArrayList<>();
    public static List<String> options_admin_menu = new ArrayList<>();

    public static void generar() {
//se agregan los datos a la tabla mensaje
        mensaje.put("actual_products", "Los productos que usted posee actualmente son: \n");

        mensaje.put("author", "author: ");

        mensaje.put("amigo", "Amigo agregado correctamente");

        mensaje.put("bienvenido_usuario", "Bienvenid@, %s.");

        mensaje.put("birth_date_in", "Ingrese su fecha de nacimiento [dd/mm/aaaa]:");

        mensaje.put("cancel_purchase", "Su compra fue cancelada.");

        mensaje.put("category", "Categoría: ");

        mensaje.put("category_in", "Ingrese la categoría del producto:");

        mensaje.put("como_registrarse", "¿Como quiere registrarse?");

        mensaje.put("comentario_agregado", "Su comentario fue agregado correctamente");

        mensaje.put("compra_exitosa", "Su compra ha sido exitosa.");

        mensaje.put("data saved", "Datos guardados exitosamente");

        mensaje.put("datos_ficticios", "Crear usuario ficticio.");

        mensaje.put("descripcion", "Descripción: ");

        mensaje.put("edit_game", "%s : el producto '%s' ha actualizado.\n");

        mensaje.put("elija_categoria", "Elija una categoría: ");

        mensaje.put("email", "Email: ");

        mensaje.put("email_in", "Ingrese su e-mail:");

        mensaje.put("espacios", "\n\n\n");

        mensaje.put("espacios1", "\n");

        mensaje.put("espacios2", "\n\n");

        mensaje.put("espacios4", "\n\n\n\n");

        mensaje.put("fake_user_registered", "Datos ficticios creados correctamente.");

        mensaje.put("game_eliminated", "El Producto fue eliminado satisfactoriamente");

        mensaje.put("juego_agregado_al_carrito", "Producto agregado al carrito.");

        mensaje.put("user_nickname", "Ingrese el nickname del usuario\n");

        mensaje.put("log_in", "log in.");

        mensaje.put("log_out_exitoso", "Sesión cerrada exitosamente, vuelva pronto\n");

        mensaje.put("más vendido", "El producto más vendido es: ");

        mensaje.put("mensaje_bienvenida", "#######################\n Bienvenido a INFINITE \n#######################");

        mensaje.put("money", "Dinero: ");

        mensaje.put("money_in", "Ingrese la cantidad de dinero que desea depositar en su cuenta:");

        mensaje.put("nationality", "Ingrese una opción: ");

        mensaje.put("nationality_in", "Ingrese su nacionalidad:");

        mensaje.put("new_game", "%s : %s ha creado un nuevo producto: %s, ¡Aségurate de echarle un ojo!");

        mensaje.put("nikname", "Nickname: ");

        mensaje.put("nikname_in", "Ingrese su nickname:");

        mensaje.put("nombre", "Nombre: ");

        mensaje.put("nombre_in", "Ingrese su nombre real.");

        mensaje.put("num_of_copies", "Indique cuantas copias del juego desea comprar");

        mensaje.put("numero_opcion", "Ingrese el número de su opción:\t");

        mensaje.put("numero_producto", "Introduzca el número del producto \n");

        mensaje.put("producto_actualizado", "El producto ha sido actualizado correctamente\n");

        mensaje.put("opcion_in", "Ingrese una opción");

        mensaje.put("password_in", "Ingrese su contraseña:\t");

        mensaje.put("precio", "Precio: ");

        mensaje.put("product_removed", "Producto eliminado correctamente\n");

        mensaje.put("product_assesment", "Ingrese la calificación que le da al juego [Un número entre 1 y 10 (Incluidos)]:");

        mensaje.put("product_description", "Ingrese la descripción:");

        mensaje.put("product_selected", "Su producto fue seleccionado exitosamente\n");

        mensaje.put("producto añadido en", "Producto añadido en: ");

        mensaje.put("Producto_en_lista_de_deseados", "Producto agregado a la lista de desados");

        mensaje.put("puntuacion", "Puntuación: ");

        mensaje.put("que_hacer", "¿Que desea hacer?\n");

        mensaje.put("registro_exitoso", "su registro ha sido exitoso.");

        mensaje.put("remove_game", "Ingrese el nombre del juego que desea eliminar:");

        mensaje.put("resultado_#", "Resultado #");

        mensaje.put("search_game", "Ingresa la id del producto que desea buscar");

        mensaje.put("search_name", "Ingrese el nombre del producto a buscar:\t");

        mensaje.put("sign_in", "sign in.");

        mensaje.put("sign_in_successfully", "Usuario registrado correctamente.");

        mensaje.put("successful_purchase", "Su compra ha sido efectuada con éxito, ahora le quedan %s en su cuenta.");

        mensaje.put("usuario_baneado", "usuario baneado correctamente");

        mensaje.put("usuario_desbaneado", "usuario desbaneado correctamente");

        mensaje.put("usuario_mas_activo", "El usuario más activo es: %s");

        mensaje.put("seleccione_comment", "Seleccione el número del cometario");

        mensaje.put("Message_eliminado", "El Comentario fue eliminado correctamente");

        // se agregan los datos de la tabla error
        
        error.put("category_do_not_exist", "Ningun producto coincide con la categoría buscada");

        error.put("email_invalido", "El email ingresado no es valido\n");

        error.put("fecha_incorrecta", "Fecha de nacimiento invalida, ingrésela nuevamente.");

        error.put("game_not_in_car", "El juego que busca no se encuentra actualmente en su carrito de compra");

        error.put("juego_eliminado", "%s El Producto %s fue eliminado.");

        error.put("name_do_not_exist", "El nombre del juego que buscó no existe.");

        error.put("nickname_no_valido", "El nickname no es válido, ingrese uno válido, por favor. \n");

        error.put("nikname_no_disponible", "El nikname '%s' no está disponible.");

        error.put("nikname_no_exist", "El nickname '%s' no existe");

        error.put("no_amigos", "Usted no tiene amigos.");

        error.put("no_comments", "Aún no hay comentarios que mostrar.");

        error.put("no_enought_money", "Lo sentimos, pero no cuenta con el dinero suficiente para realizar ésta compra.");

        error.put("no_money", "Ingrese una cantidad positiva o nula.");

        error.put("no_noticias", "No hay noticias.");

        error.put("no_products", "No hay Productos en el carrito");

        error.put("no_products_catalog", "No hay Productos en el catálogo");

        error.put("no_products_library", "Aún no posee ningún producto");

        error.put("no_products_wish", "No hay Productos en la lista de deseados");

        error.put("no_product_wish", "No existe éste producto en tu lista de deseados\n");

        error.put("nombre_no_valido", "El nombre no es válido, ingrese uno válido, por favor. \n");

        error.put("non_permission", "Usted no tiene permiso para entrar en éste menú.");

        error.put("opcion_invalida", "la opcion que ha seleccionado no es valida. \n");

        error.put("user_not_found", "El usuario que buscó no existe.");

        error.put("usuario_invalido", "Usuario o Contraseña inválido, usuario inexistente o baneado.");

        //se agregan los datos a cada choices
        
        choices_aditional_menu_A.add("acceder a los comentarios de un producto");
        choices_aditional_menu_A.add("editar un producto");
        choices_aditional_menu_A.add("eliminar un producto");
        choices_aditional_menu_A.add("regresar al menú anterior");
        choices_aditional_menu_B.add("buscar otro producto");
        choices_aditional_menu_B.add("cancelar compra");
        choices_aditional_menu_B.add("consolidar compra");
        choices_aditional_menu_B.add("remover juego del carrito");

        
        choices_category.add("Acción");
        choices_category.add("Aventuras");
        choices_category.add("Conducción");
        choices_category.add("Deportes");
        choices_category.add("Disparos");
        choices_category.add("Plataformas");
        choices_category.add("Simuladores");
        choices_category.add("Terror");

        
        choices_comment_delete.add("Eliminar comentario");
        choices_comment_delete.add("Regresar al menú anterior");

        
        choices_edit_menu.add("cambiar descripción");
        choices_edit_menu.add("cambiar nombre");
        choices_edit_menu.add("cambiar precio");
        choices_edit_menu.add("regresar al menú anterior");
        choices_main_menu.add("agregar datos ficticios desde txt");
        choices_main_menu.add("agregar datos ficticios");
        choices_main_menu.add("guardar datos");
        choices_main_menu.add("log in");
        choices_main_menu.add("sign in");

        
        
        choices_nationality.add("Argentina");
        choices_nationality.add("Brasil");
        choices_nationality.add("Brasil");
        choices_nationality.add("Chile");
        choices_nationality.add("Colombia");
        choices_nationality.add("Colombia");
        choices_nationality.add("Ecuador");
        choices_nationality.add("Escocia");
        choices_nationality.add("España");
        choices_nationality.add("Estados Unidos");
        choices_nationality.add("México");
        choices_nationality.add("Noruega");
        choices_nationality.add("Panamá");
        choices_nationality.add("Perú");
        choices_nationality.add("Suecia");
        choices_nationality.add("Uruguay");

        
        
        choices_post_search_menu.add("seleccionar un resultado");

        
        
        choices_product_menu.add("Agregar a mi Lista de deseados");
        choices_product_menu.add("Eliminar de lista de deseados");
        choices_product_menu.add("agregar al carrito");
        choices_product_menu.add("cancelar");
        choices_product_menu.add("dejar comentario");
        choices_product_menu.add("regresar al menú anterior");

        
        
        choices_profile.add("Ver lista de amigos");
        choices_profile.add("ver mi Biblioteca");
        choices_profile.add("ver mi lista de deseados");

        
        
        choices_seller_menu.add("Log out");
        choices_seller_menu.add("editar uno de sus juegos existentes");
        choices_seller_menu.add("eliminar un juego");
        choices_seller_menu.add("poner a la venta un juego nuevo");

        
        
        
        choices_sign_in.add("administrador");
        choices_sign_in.add("cancelar");
        choices_sign_in.add("usuario");
        choices_sign_in.add("vendedor");
        
        
        

        choices_user_menu.add("Agregar Dinero");
        choices_user_menu.add("Agregar Un Amigo");
        choices_user_menu.add("Buscar juego");
        choices_user_menu.add("Buscar por categoría");
        choices_user_menu.add("Ver producto más vendido");
        choices_user_menu.add("consolidar compra");
        choices_user_menu.add("guardar datos");
        choices_user_menu.add("log out");
        choices_user_menu.add("ver catalogo");
        choices_user_menu.add("ver noticias");
        choices_user_menu.add("ver perfil");
        choices_user_menu.add("ver usuario mas activo");

        
        
        
        options_admin_menu.add("banear usuario");
        options_admin_menu.add("desbanear usuario");
        options_admin_menu.add("log out");
        options_admin_menu.add("ver juegos disponibles");

    }
}
