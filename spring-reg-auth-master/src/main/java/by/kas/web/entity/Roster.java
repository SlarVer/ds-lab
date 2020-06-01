package by.kas.web.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "roster")
public class Roster {

    @Id
    @Column(name = "playerid")
    private String playerid;

    @Column(name = "jersey")
    private int jersey;

    @Column(name = "fname")
    private String fname;

    @Column(name = "sname")
    private String sname;

    @Column(name = "position")
    private String position;

    @Column(name = "birthday")
    private Date birthday;

    @Column(name = "weight")
    private int weight;

    @Column(name = "height")
    private int height;

    @Column(name = "birthcity")
    private String birthcity;

    @Column(name = "birthstate")
    private String birthstate;

    public Roster(){}

    public Roster(Object[] array){
        playerid = (String)array[0];
        jersey = (Integer)array[1];
        fname = (String)array[2];
        sname = (String)array[3];
        position = (String)array[4];
        birthday = (Date)array[5];
        weight = (Integer)array[6];
        height = (Integer)array[7];
        birthcity = (String)array[8];
        birthstate = (String)array[9];
    }

    public String getPlayerid() {
        return playerid;
    }

    public void setPlayerid(String playerid) {
        this.playerid = playerid;
    }

    public int getJersey() {
        return jersey;
    }

    public void setJersey(int jersey) {
        this.jersey = jersey;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getBirthcity() {
        return birthcity;
    }

    public void setBirthcity(String birthcity) {
        this.birthcity = birthcity;
    }

    public String getBirthstate() {
        return birthstate;
    }

    public void setBirthstate(String birthstate) {
        this.birthstate = birthstate;
    }
}
