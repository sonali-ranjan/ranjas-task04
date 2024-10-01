namespace db;

using {
    cuid,
    Country
} from '@sap/cds/common';

entity Books : cuid {
    title       : String;
    inStock     : Integer;
    publishedAt : Country;
}

entity Authors : cuid {
    name : String;
}
