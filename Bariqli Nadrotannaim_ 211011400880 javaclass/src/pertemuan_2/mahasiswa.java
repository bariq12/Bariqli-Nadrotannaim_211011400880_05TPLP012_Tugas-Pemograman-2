/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pertemuan_2;

/**
 *
 * @author bariq
 */
public class mahasiswa {
    private String nim,nama;
    private int nilakhir;
    private String grade;

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public float getUts() {
        return uts;
    }

    public void setUts(float uts) {
        this.uts = uts;
    }

    public float getUas() {
        return uas;
    }

    public void setUas(float uas) {
        this.uas = uas;
    }
    private float uts,uas;
    
    public double getNilAkhir() {
    nilakhir= (int) ((uts+uas)/2);
    return nilakhir;
    }
    public String getGrade() {
    if (nilakhir<50)
    grade="E";
    else if(nilakhir < 60)
    grade="D";
    else if(nilakhir < 70)
    grade="C";
    else if(nilakhir < 80)
    grade="B";
    else
    grade="A";
    return grade;
    }

   
    
}
