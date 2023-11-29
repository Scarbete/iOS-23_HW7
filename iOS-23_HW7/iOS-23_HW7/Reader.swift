import Foundation

protocol ReaderProtocol {
    func requestBook()
    func giveBook(book: Book)
    func goesHome()
}

class Reader: ReaderProtocol {
    var readerBooks: [Book] = []
    var librarianProtocol: LibrarianProtocol?
    
    func requestBook() {
        print("Введите название книги.")
        let nameBook = readLine()
        if let nameBook = nameBook {
            print("Читатель дал название книги библиотекарю.\n")
            librarianProtocol?.shareCatalog(nameBook: nameBook)
        }
    }
    
    func giveBook(book: Book) {
        print("Читатель получает книгу:")
        dump(book)
        readerBooks.append(book)
    }
    
    func goesHome() {
        print("Читатель не нашел книгу и уходит домой.")
    }
}
