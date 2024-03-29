CREATE TABLE Repo (
    id INT NOT NULL AUTO_INCREMENT,
    provider varchar(255) NOT NULL,
    username varchar(255) NOT NULL,
    repo varchar(255) NOT NULL,
    active boolean DEFAULT true,
    PRIMARY KEY (id)
--  UNIQUE (provider, username, repo) (too long to be a key)
);

CREATE TABLE Build (
    id int NOT NULL AUTO_INCREMENT,
    repo int NOT NULL,
    status TINYINT DEFAULT 0,
    time DATETIME DEFAULT CURRENT_TIMESTAMP,
    logs TEXT,
    branch varchar(255) NOT NULL,
    hash char(40) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (repo) REFERENCES Repo(id)
);
