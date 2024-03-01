public class Book implements Borrowable {

    // define the following instance variables/attributes for the Book class:
    String title;
    String author;
    String ISBN;
    String publisher;
    int numberOfCopies; 
    Status status;
    // define a Book constructor that accepts the title, author, ISBN, publisher, and numberOfCopies as parameters
    public Book(String title , String author, String ISBN, String publisher, int numberOfCopies){
        this.title = title;
        this.author = author;
        this.ISBN = ISBN;
        this.publisher = publisher;
        this.numberOfCopies = numberOfCopies;
        this.status = Status.AVAILABLE;

    }
    // define Getter methods for the title, author, ISBN, publisher, and numberOfCopies instance variables
    public String getTitle(){
        return title;
    }
    public String getAuthor(){
        return author;
    }
    public String getISBN(){
        return ISBN;
    }
    public String getPublisher(){
        return publisher;
    }
    public int getNumberOfCopies(){
        return numberOfCopies;
    }

    // define Setter methods for the title, author, ISBN, publisher, and numberOfCopies instance variables
    public void setTitle(String title){
        this.title = title;
    }
    public void setAuthor(String author){
        this.author = author;
    }
    public void setISBN(String ISBN){
        this.ISBN = ISBN;
    }
    public void setPublisher(String publisher){
        this.publisher = publisher;
    }
    public void setNumberOfCopies(int numberOfCopies){
        this.numberOfCopies = numberOfCopies;
    }
    public void setStatus(Status status){
        this.status = status;
    }

    // edit book details
    public void editBook(String title, String author, String ISBN, String publisher, int numberOfCopies){
        this.title = title;
        this.author = author;
        this.ISBN = ISBN;
        this.publisher = publisher;
        this.numberOfCopies = numberOfCopies;
    }

    // define the following methods for the Book class:
    public void displayBookInfo(){
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("ISBN: " + ISBN);
        System.out.println("Publisher: " + publisher);
        System.out.println("Number of Copies: " + numberOfCopies);
        System.out.println("Status: " + status);
    }

    // method to add more book copies
    public void addCopies(int num){
        numberOfCopies += num;
    }
    // method to remove book copies ie borrowed books
    public void removeCopies(int num){
        numberOfCopies =  numberOfCopies - num;
    }
    // method to check if book is available if number of copies is greater than 0
    public boolean isAvailable(){
        if(numberOfCopies > 0){
            return true;
        }
        return false;
    }
    // define the following methods for the Book class to implement interface methods:
    public void borrow(String title) {
        if (this.status == Status.AVAILABLE) {
            // set the status of the book to checked out
            this.status = Status.CHECKED_OUT;
            // decrement the number of copies of the book when a book is borrowed
            this.numberOfCopies--;
            System.out.println("The book has been checked out by:");
        } else {
            System.out.println("The book is currently checked out.");
        }
    }

    public void returnBook(String title) {
        // set the status of the book to available
        this.status = Status.AVAILABLE;
        // increment the number of copies of the book when a book is returned
        this.numberOfCopies++;
    }
}