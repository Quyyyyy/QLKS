/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controler;

import java.util.Date;
import model.KhachHang;
import model.PhongDat;

/**
 *
 * @author HP
 */
public class test {
    public static void main(String[] args) {
        PhongdatDAO t = new PhongdatDAO();
        KhachHang k = new KhachHang(1,"Bùi Anh Hào","0363456781","Cầu Giấy","030201007930",0);
        PhongDat p;
        Date d = new Date();
        p = new PhongDat(0,k,"2023/05/10","2023/05/12",1,0);
        t.themPhong(p); 
    }
}
