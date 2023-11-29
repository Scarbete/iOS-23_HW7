import Foundation

protocol CatalogProtocol {
    func searchBook(nameBook: String)
    func showAllBooks()
}

class Catalog: CatalogProtocol {
    
    var librarianProtocol: LibrarianProtocol?
    
    var books: [Book] = [
        .init(name: "Quasar", year: 2004),
        .init(name: "Exweasy", year: 2004),
        .init(name: "Aesthetic", year: 2006),
    ]
    
    func searchBook(nameBook: String) {
        print("Каталог получил название книги и начал искать книгу: \(nameBook).")
        var isFound = false
        var book: Book?
        
        for index in 0...books.count - 1 {
            if nameBook == books[index].name {
                isFound = true
                book = books[index]
                break
            }
            else {
                isFound = false
            }
        }
        if isFound == true {
            print("Каталог нашел данную книгу и дает его библиотекарю.\n")
            librarianProtocol?.toGiveBook(book: book!)
        }
        else {
            print("Каталог не нашел книгу и дает информацию библиотекарю.\n")
            librarianProtocol?.notFoundBook()
        }
    }
    
    func showAllBooks() {
        print("Все книги.\n")
        for index in 0...books.count - 1 {
            print("\(index): \(books[index].name)")
        }
    }
}
