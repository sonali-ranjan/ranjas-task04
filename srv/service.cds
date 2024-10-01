using {db} from '../db/schema';
using from '@sap/cds-common-content';

service BooksService {

    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
    
}
