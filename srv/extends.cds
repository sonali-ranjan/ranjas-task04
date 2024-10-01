using {db} from '../db/schema';
using from './service';


extend db.Books with {
    authors : Association to many Books_Authors
                  on authors.book = $self;
}

extend db.Authors with {
    books : Association to many Books_Authors
                on books.author = $self;
}

entity Books_Authors {
    book   : Association to db.Books;
    author : Association to db.Authors;
}

extend service BooksService with {

    entity LinkEntity as projection on Books_Authors;

}