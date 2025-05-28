/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modul9contoh3map;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Muhammad Rizky S
 */
public class Session {
    public static Map<String, Object> sessionData = new HashMap<>();
    
    public static void setAttribute(String key, Object value){
        sessionData.put(key, value);
    }
    
    public static Object getAttribute(String key){
        return sessionData.get(key);
    }
    
    public static void removeAttribute(String key){
        sessionData.remove(key);
    }
    
    public static void clearSession(){
        sessionData.clear();
    }
}
