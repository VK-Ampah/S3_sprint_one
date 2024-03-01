import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // create a new library
        Library library = new Library();
        loadData(library);

            // LIST ALL THE AVAILABLE LIBRARY BOOKS, AUTHORS AND PATRONS
        // list all the available library books
        System.out.println();
        library.listBooks();
        // list all the available library authors
        library.listAuthors();
        // list all the available library patrons
        library.listPatrons();
              
            // SEARCH BOOKS BY TITLE, AUTHOR AND ISBN

        // Search books by Author and return the books
        System.out.println();
        System.out.println("Searching for books by different authors");
        System.out.println("----------------------------------------");
        System.out.println("----------------------------------------");
        System.out.println();
        library.searchBookByAuthor("J.K. Rowling");
        System.out.println();
        library.searchBookByAuthor("George R.R. Martin");
        System.out.println();
        library.searchBookByAuthor("J.R.R. Tolkien");
        System.out.println();
        library.searchBookByAuthor("Agatha Christie");
        System.out.println();
        library.searchBookByAuthor("Stephen King");
        System.out.println();
        System.out.println("----------------------------------");
        System.out.println("----------------------------------");

        // Search Book by Title
        Book book = library.searchBookByTitle("Harry Potter");
        System.out.println();
        if (book != null) {
            System.out.println("Searching for a book by title: "+ book.title);
            System.out.println("-------------------------------------------");
            System.out.println("... ... ... " + "Book Found:");
            book.displayBookInfo();
        } else {
            System.out.println("Book not found");
            }
         // search the same book by ISBN
        System.out.println();
        System.out.println("Searching for a book by ISBN");
        System.out.println("----------------------------");
        Book bookTwo = library.searchBookByISBN("ISBN1");
        if (bookTwo != null) {
            bookTwo.displayBookInfo();
        } else {
            System.out.println("Book not found");
            } 

         // search another book by a different author using the title
        System.out.println();
        System.out.println("Searching for a SECOND book by title");
        System.out.println("------------------------------------");
        Book bookThree = library.searchBookByTitle("The Stand"); 
        if(bookThree != null) {
            System.out.println("Searching for a book by title: "+ bookThree.title);
            System.out.println("----------------------------------------");
            System.out.println("... ... ... " + "Book Found:");
            book.displayBookInfo();
        } else {
            System.out.println("Book not found");
            }            

            // BORROW BOOK BY A PATRON
        // Assume a patron is searching for a book to borrow
        // search for a book by title and add copies of the boo
        // borrow a book
        System.out.println();
        System.out.println("Searching for a book to Borrow by patron 1");
        System.out.println("-------------------------------------------"); 
        System.out.println("-------------------------------------------");
        // get the first patron 
        Patron patron = library.patrons.get(0);
        System.out.println("Patron 1: " + patron.name + " is borrowing " + bookTwo.title ); 
        if (book != null && book.isAvailable()) {
            System.out.println();
            System.out.println("... ... ... searching");
            System.out.println("Book is available to borrow");
            // display book info if its exist and its available(number of copies is greater than 0)
            System.out.println("Book Details:");
            System.out.println("----------------------------");
            book.displayBookInfo();
            System.out.println();
            // borrow the book to the patron
            library.borrowBook(book.title, patron);
            System.out.println("----------------------------------");
            patron.displayPatronInfo();
           
        } else if(book != null && !book.isAvailable()) {
            // if book exist but not available
            System.out.println("Book is not available in shelf");
            }
         else {
            // if book does not exist
            System.out.println("Book not found");
            }

            // patron 1 borrowing another bookThree

            System.out.println();
            System.out.println("Patron 1: " + patron.name + " is borrowing 5 copies of, " + bookThree.title ); 
            if(bookThree != null && bookThree.isAvailable() && bookThree.numberOfCopies >= 5) {        
                System.out.println("Book is available to borrow");
                // display book info if its exist and its available(number of copies is greater than 0)
                System.out.println("Book Details:");
                System.out.println("------------------------");
                bookThree.displayBookInfo();
                System.out.println();
                // borrow the book to the patron
                // library.borrowBook(bookThree.title, patron);
                library.borrowBookPlusCopies(bookThree.title, patron,5);
                // bookthree info after borrowing
                patron.displayPatronInfo();
                System.out.println("Book Details of '"+ bookThree.title + "' After 5 copies were borrowed: ");
                System.out.println("--------------------------------------------------------");
                bookThree.displayBookInfo();
                System.out.println("--------------------------");
            } else if(bookThree != null && !bookThree.isAvailable()) {
                // if book exist but not available
                System.out.println("Book is not available in shelf");
                }
             else {
                // if book does not exist
                System.out.println("Book not found");
                }
        
        System.out.println();
        System.out.println("--------------------------------------------------------------------------");      


        // Patron Two is Borrowing the same book borrowed by patron 1
        // its expected to execute the second if statement when book is available but number of copies is 0
        Patron patronTwo = library.patrons.get(1);    
        System.out.println("Patron 2: " + patronTwo.name + " is borrowing a book borrowed by " + patron.name +": " + bookTwo.title );  
        if(bookTwo != null && bookTwo.isAvailable()) {
            System.out.println();
            System.out.println("Book is available to borrow");
            // display book info if its exist and its available(number of copies is greater than 0)
            System.out.println("Book Details:");
            System.out.println("----------------------------------");
            bookTwo.displayBookInfo();
            System.out.println();
            // borrow the book to the patron
            library.borrowBook(bookTwo.title, patronTwo);
            // System.out.println("Book being bowrrowed by: ");
            patron.displayPatronInfo();
        } else if(bookTwo != null && !bookTwo.isAvailable()) {
            // if book exist but not available
            System.out.println("--------------------------------------------------------------------------");
            System.out.println(bookTwo.title + " is not available in shelf");
            }
         else {
            // if book does not exist
            System.out.println("----------------------------------");
            System.out.println("Book not found");
            }

        // RETURN A BOOK BORROWED BY A PATRON
        System.out.println();
        System.out.println("Returning a book borrowed by a patron 1, " + patron.name);
        System.out.println("--------------------------------------------------");
        library.returnBook("Harry Potter", patron);
        int copiesToReturn = 3;
        library.returnBookPlusCopies("The Stand", patron,copiesToReturn);
      
        patron.displayPatronInfo();// this will display the patron info and the borrowed books should be empty(0)
        System.out.println(copiesToReturn + " copies of The Stand has been returned");
        System.out.println("------------------------------------------");
        System.out.println();

        // list patrons and their borrowed books after returning books
        System.out.println("List of Patrons and their borrowed books");
        System.out.println("-----------------------------------------");
        for(int i =0; i<= patron.borrowedBooks.size()-1; i++){
            if (patron.borrowedBooks.size() == 0){
                System.out.println(patron.name + " has no borrowed books");
            } else if(patron.borrowedBooks.size() > 0){
                System.out.println(patron.name + " borrowed: " + patron.borrowedBooks.get(i).title);
            }
        }
        System.out.println();
        System.out.println("-----------------------------------------");
        for(int i =0; i<= patronTwo.borrowedBooks.size()-1; i++){
            if(patronTwo.borrowedBooks.size() == 0){
                System.out.println(patronTwo.name + " has no borrowed books");
            } else if(patronTwo.borrowedBooks.size() > 0){
                System.out.println(patronTwo.name + " borrowed: " + patronTwo.borrowedBooks.get(i).title);
            }
        }
       
       


    }

    // load data( books,authors and libraries) into the library
    public static void loadData(Library library) {
        // Add some authors
        String[] authorNames = {"J.K. Rowling", "George R.R. Martin", "J.R.R. Tolkien", "Agatha Christie", "Stephen King"};
        for (int i = 0; i < authorNames.length; i++) {
            List<Book> books = new ArrayList<>();
            for (int j = 1; j <= i + 1; j++) {
                books.add(new Book("Book " + j + " by " + authorNames[i], authorNames[i], "ISBN" + j, "Publisher " + j, j));
            }
            Author author = new Author(authorNames[i], "Date of Birth " + (i + 1), books);
            library.addAuthor(author);
        }
    
        // Add some books
        String[] bookTitles = {"Harry Potter", "A Game of Thrones", "The Lord of the Rings", "And Then There Were None", "The Shining",
                               "The Hobbit", "Murder on the Orient Express", "The Stand", "The Green Mile", "Tales of Two Cities"};
        for (int i = 0; i < bookTitles.length; i++) {
            Book book = new Book(bookTitles[i], authorNames[i % 5], "ISBN" + (i + 1), "Publisher " + (i + 1), i + 1);
            library.addBook(book);
        }
    
        // Add some patrons
        String[] patronNames = {"John Doe", "Jane Smith", "Bob Johnson"};
        for (int i = 0; i < patronNames.length; i++) {
            Patron patron = new Patron(patronNames[i], "Address " + (i + 1), "Phone " + (i + 1));
            library.addPatron(patron);
        }
    }
    
}
