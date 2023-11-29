import Foundation

protocol LibrarianProtocol {
    func shareCatalog(nameBook: String)
    func toGiveBook(book: Book)
    func notFoundBook()
}

class Librarian: LibrarianProtocol {
    var catalogProtocol: CatalogProtocol?
    var readerProtocol: ReaderProtocol?
    
    func toGiveBook(book: Book) {
        print("Библиотекарь получает информацию о том что книга есть и дает книгу читателю.\n")
        readerProtocol?.giveBook(book: book)
    }
    
    func notFoundBook() {
        print("Библиотекарь получает информацию о том что книги нету и дает информацию читателю.\n")
        readerProtocol?.goesHome()
    }
    
    func shareCatalog(nameBook: String) {
        print("Библиотекарь получает название книги и дает его каталогу.\n")
        catalogProtocol?.searchBook(nameBook: nameBook)
    }
}
