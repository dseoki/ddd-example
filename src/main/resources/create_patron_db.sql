CREATE TABLE IF NOT EXISTS patron_database_entity (id INTEGER IDENTITY PRIMARY KEY, patron_type VARCHAR(100) NOT NULL, patron_id UUID UNIQUE);

CREATE TABLE IF NOT EXISTS hold_database_entity (id INTEGER IDENTITY PRIMARY KEY, book_id UUID NOT NULL, patron_id UUID NOT NULL, library_branch_id UUID NOT NULL, patron_database_entity INTEGER NOT NULL, till TIMESTAMP NOT NULL);

CREATE TABLE IF NOT EXISTS overdue_checkout_database_entity (id INTEGER IDENTITY PRIMARY KEY, book_id UUID NOT NULL, patron_id UUID NOT NULL, library_branch_id UUID NOT NULL, patron_database_entity INTEGER NOT NULL);

INSERT INTO patron_database_entity (patron_type, patron_id) VALUES ('some_type', 'b7f9d634-2635-4adf-9b7a-8f91b6e1a3cd');