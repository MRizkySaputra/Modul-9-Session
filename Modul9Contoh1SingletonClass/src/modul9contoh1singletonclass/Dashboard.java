/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modul9contoh1singletonclass;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.event.ActionEvent;

import java.net.URL;
import java.util.ResourceBundle;

/**
 *
 * @author Muhammad Rizky S
 */
public class Dashboard implements Initializable{
    @FXML
    private Label labelWelcome;
    @FXML
    private Button buttonLogout;
    
    @FXML
    private void handleButtonLogoutAction(ActionEvent event) throws Exception {
        Session session = Session.getInstance();
        session.clearSession();
        
        Main main = new Main();
        main.changeScene("Main.fxml");
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        Session session = Session.getInstance();
        String username = session.getUsername();
        String password = session.getPassword();
        String fullname = session.getFullname();
        String role = session.getRole();
        
        labelWelcome.setText("Selamat datang, " + fullname + " (" + role +") " + "\nSession Singleton Class");
    }
}
