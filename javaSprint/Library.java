import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Library {
    // define the following instance variables/attributes for the Library class:
    List<Book> books;// books
    List<Author> authors;// authors
    List<Patron> patrons;// patrons

    // a library constructor
    public Library() {
        this.books = new ArrayList<>();
        this.authors = new ArrayList<>();
        this.patrons = new ArrayList<>();
    }

    // add books
    public void addBook(Book book) {
        this.books.add(book);
    }

    // add authors
    public void addAuthor(Author author) {
        this.authors.add(author);
    }

    // add patrons
    public void addPatron(Patron patron) {
        this.patrons.add(patron);
    }

    // list all the available library books
    public void listBooks() {
        System.out.println("Available Books in the library: ");
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println();
        for (Book book : this.books) {
            System.out.println(book.title +" has " + book.numberOfCopies + " copies");
        }
        System.out.println();
    }
    // list all the available library authors
    public void listAuthors() {
        System.out.println("List of Authors: ");
        System.out.println("-----------------");
        System.out.println("-----------------");
        System.out.println();
        for (Author author : this.authors) {
            System.out.println(author.name);
        }
        System.out.println();
    }
    // list all the available library patrons
    public void listPatrons() {
        System.out.println("List of Patrons: ");
        System.out.println("-----------------");
        System.out.println("-----------------");
        System.out.println();
        for (Patron patron : this.patrons) {
            System.out.println(patron.name);
        }
    }

    // search within the available library books using the books title
    public Book searchBookByTitle(String title) {
        for (Book book : this.books) {
            if (book.title.equals(title)) {
                return book;
            }
        }
        return null;
    }

    // Search within the available library books using the books author and return a list of books by the author
    public void searchBookByAuthor(String authorName) {
        List<Book> authorBooks = new ArrayList<>();
        for (Book book : this.books) {
            if (book.author.equals(authorName)) {
                authorBooks.add(book);
            }
        }
        System.out.println("Books written by " + authorName + ": ");
        for (Book book : authorBooks) {
            System.out.println(book.title);
        }        
    }

    // search within the available library books using the books ISBN
    public Book searchBookByISBN(String ISBN) {
        for (Book book : this.books) {
            if (book.ISBN.equals(ISBN)) {
                return book;
            }
        }
        return null;
    }


    // method to borrow a book that receives the title of the book and the patron who wants to borrow the book
    public void borrowBook(String title, Patron patron) {
        // search for the book by title
        Book book = searchBookByTitle(title);
        // if book exists and status is available
        if (book != null && book.status == Status.AVAILABLE) {
            // borrow the book by calling the borrow method from the book class to check out the book
            book.borrow(title);
            // add the book to the patrons borrowed books
            patron.borrowedBooks.add(book);
        } else {
            System.out.println("The book is currently checked out.");
        }
    }

    // borrow book plus copies
    public void borrowBookPlusCopies(String title, Patron patron, int copies) {
        // search for the book by title
        Book book = searchBookByTitle(title);
        // if book exists and status is available
        if (book != null && book.status == Status.AVAILABLE && book.numberOfCopies >= copies) {
            // borrow the book by calling the borrow method from the book class to check out the book
            book.borrow(title);
            book.removeCopies(copies-1);
            // add the book to the patrons borrowed books
            // patron.borrowedBooks.add(book);
            patron.borrowedBooks.addAll(Collections.nCopies(copies, book));/////
            // add the number of copies to the patrons borrowed books
        } else {
            System.out.println("The number of copies requested is greater than the available copies.");
        }
    }

    // method to return a book that receives the title of the book and the patron who wants to return the book

    public void returnBook(String title, Patron patron) {
        // search for the book by title
        Book book = searchBookByTitle(title);
        if (book != null && book.status == Status.CHECKED_OUT) {
            // return the book by calling the returnBook method from the book class to check in the book
            book.returnBook(title);
            // remove the book from the patrons borrowed books
            patron.borrowedBooks.remove(book);
            System.out.println("The book has been returned by:");
        } else {
            System.out.println("The book is not borrowed by this patron.");
        }
    }

    // return books with copies
    

    public void returnBookPlusCopies(String title, Patron patron, int copies){
        Book book = searchBookByTitle(title);
        if(book != null && book.status == Status.CHECKED_OUT && patron.borrowedBooks.size() >= copies){
            book.returnBook(title);// this already adds one book to the book copies
            book.addCopies(copies-1);
            for (int i = 0; i < copies; i++) {
                patron.borrowedBooks.remove(book);
            }
            
        }
        else{
            System.out.println("The the number of copies is being returned exceeds the borrowed books.");}
    }
}