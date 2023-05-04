/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class PhongDat {
    private int id;
    private KhachHang kh;
    private String Ngaydat;
    private String Ngaytra;
    private int Songaythuco;
    private String created_at;
    private String updated_at;

    public PhongDat() {
    }

    public PhongDat(int id, KhachHang kh, String Ngaydat, String Ngaytra, int Songaythuco, String created_at, String updated_at) {
        this.id = id;
        this.kh = kh;
        this.Ngaydat = Ngaydat;
        this.Ngaytra = Ngaytra;
        this.Songaythuco = Songaythuco;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public KhachHang getKh() {
        return kh;
    }

    public void setKh(KhachHang kh) {
        this.kh = kh;
    }

    public String getNgaydat() {
        return Ngaydat;
    }

    public void setNgaydat(String Ngaydat) {
        this.Ngaydat = Ngaydat;
    }

    public String getNgaytra() {
        return Ngaytra;
    }

    public void setNgaytra(String Ngaytra) {
        this.Ngaytra = Ngaytra;
    }

    public int getSongaythuco() {
        return Songaythuco;
    }

    public void setSongaythuco(int Songaythuco) {
        this.Songaythuco = Songaythuco;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }
    
    public String toString(){
        return "PhongDat{ id = " + id + ", KhachHang = " + kh + ", Ngaydat = " + Ngaydat + ", Ngaytra = " + Ngaytra +
                ", songaythuco = " + Songaythuco + ", created_at = " + created_at + ", updated_at = " + updated_at +"}";
    }
}
