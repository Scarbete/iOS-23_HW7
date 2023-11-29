import Foundation



//Домашнее задание №7.

//На примере учебного проекта с заказом еды реализовать проект с библиотекой.
//Должно быть 3 объекта: читатель, библиотекарь, каталог. Логика должна запросить книгу с названием,
//библиотекарь должна передать каталогу, каталог должен совершить поиск среди книг.
//Для книги выделите структуру Book. Если книга есть, то клиент получает книгу, если книги нет, то уходит домой.

var reader = Reader()
var librarian = Librarian()
var catalog = Catalog()

reader.librarianProtocol = librarian
librarian.catalogProtocol = catalog
librarian.readerProtocol = reader
catalog.librarianProtocol = librarian

catalog.showAllBooks()
reader.requestBook()
