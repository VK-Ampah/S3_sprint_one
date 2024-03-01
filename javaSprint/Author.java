import java.util.ArrayList;
import java.util.List;

public class Author {
    // define the following instance variables/attributes for the Author class:
    String name;
    String dateOfBirth; 
    List<Book> booksWritten = new ArrayList<Book>();
   
    // define a Author constructor that accepts the name, dateOfBirth, and booksWritten as parameters
    public Author(String name, String dateOfBirth, List<Book> booksWritten){
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.booksWritten = booksWritten;
    }
    // define Getter methods for the name, date of birth, and list of authored books instance variables
    public String getName(){
        return name;
    }
    public String getDateOfBirth(){
        return dateOfBirth;
    }
    public List<Book> getBooksWritten(){
        return booksWritten;
    }

    // define Setter methods for the name, date of birth, and list of authored books instance variables
    public void setName(String name){
        this.name = name;
    }
    public void setDateOfBirth(String dateOfBirth){
        this.dateOfBirth = dateOfBirth;
    }
    public void setBooksWritten(ArrayList<Book> booksWritten){
        this.booksWritten = booksWritten;
    }

    // add and remove books from authored books
    public void addBook(Book book){
        booksWritten.add(book);
    }
    public void removeBook(Book book){
        booksWritten.remove(book);
    }
    // edit author details
    public void editAuthorDetails(String name, String dateOfBirth, List<Book> booksWritten){
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.booksWritten = booksWritten;
    }

    // define the following methods for the Author class:
    public void displayAuthorInfo(){
        System.out.println("Name: " + name);
        System.out.println("Date of Birth: " + dateOfBirth);
        System.out.println("Books Written: " + booksWritten);
    }
}