/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modul9contoh5database;

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
        Session.clearSession();
        
        Main main = new Main();
        main.changeScene("Main.fxml");
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        String username = Session.getSessionAttribute("username");
        String password = Session.getSessionAttribute("password");
        String fullname = Session.getSessionAttribute("fullname");
        String role = Session.getSessionAttribute("role");
        
        labelWelcome.setText("Selamat datang, " + fullname + " (" + role +") " + "\nSession Database");
    }
}
