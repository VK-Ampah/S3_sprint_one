import java.util.ArrayList;
import java.util.List;

public class Patron {
    String name;
    String address;
    String phoneNumber;
    List<Book> borrowedBooks;

    public Patron(String name, String address, String phoneNumber) {
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.borrowedBooks = new ArrayList<>();
    }
    //getter methods, get name, address, phone number and borrowed books of a patron
    public String getName(){
        return name;
    }
    public String getAddress(){
        return address;
    }
    public String getPhoneNumber(){
        return phoneNumber;
    }
    public List<Book> getBorrowedBooks(){
        return borrowedBooks;
    }
    //setter methods, set name, address, phone number and borrowed books of a patron
    public void setName(String name){
        this.name = name;
    }
    public void setAddress(String address){
        this.address = address;
    }
    public void setPhoneNumber(String phoneNumber){
        this.phoneNumber = phoneNumber;
    }
    public void setBorrowedBooks(ArrayList<Book> borrowedBooks){
        this.borrowedBooks = borrowedBooks;
    }
    //add and remove books from borrowed books
    public void addBorrowedBook(Book book){
        borrowedBooks.add(book);
    }
    public void removeBorrowedBook(Book book){
        borrowedBooks.remove(book);
    }
    // edit patron details
    public void editPatronDetails(String name, String address, String phoneNumber, List<Book> borrowedBooks){
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.borrowedBooks = borrowedBooks;
    }
    //display patron info
    public void displayPatronInfo(){
        System.out.println("Name: " + name);
        System.out.println("Address: " + address);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Borrowed Books: {");
        for (int i = 0; i < borrowedBooks.size(); i++) {
            Book book = borrowedBooks.get(i);
            System.out.println("Book " + (i + 1) + ": " + book.getTitle());
        }
        System.out.println("}");
        System.out.println("Total Borrowed Books: " + borrowedBooks.size());
        System.out.println();
        }
       
}