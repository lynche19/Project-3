package model;

import java.io.Serializable;

/**
 *
 * @author Emma Lynch
 */
public class Book implements Serializable {

    private int id;
    private String email;
    private int ISBN;
    private String date;
    private String time;
    private String ConditionofBook;

    public Book() {
        id = 0;
        email = "none@test.com";
        ISBN = 0;
        date = "1970-01-01";
        time = "00:01 AM";
        ConditionofBook = "none";
    }

    public Book(int id, String email, int ISBN, String date, String time, String ConditionofBook) {
        this.id = id;
        this.email = email;
        this.ISBN = ISBN;
        this.date = date;
        this.time = time;
        this.ConditionofBook = ConditionofBook;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getConditionofBook() {
        return ConditionofBook;
    }

    public void setConditionofBook(String ConditionofBook) {
        this.ConditionofBook = ConditionofBook;
    }

    public String inHTMLRowFormat() {
        return "<tr><td>" + id + "</td>"
                + "<td>" + email + "</td>"
                + "<td>" + ISBN + "</td>"
                + "<td>" + date + "</td>"
                + "<td>" + time + "</td>"
                + "<td>" + ConditionofBook + "</td></tr>\n";
    }

    @Override
    public String toString() {
        return "b"
                + "book{" + "id=" + id + ", email=" + email + ", ISBN="
                + ISBN + ", date=" + date + ", time=" + time
                + ", ConditionofBook=" + ConditionofBook + '}';
    }
}
