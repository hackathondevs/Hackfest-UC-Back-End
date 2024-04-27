CREATE TABLE Places (
    ID BIGINT UNSIGNED AUTO_INCREMENT,
    
    Name VARCHAR(255) NOT NULL,
    Type ENUM('TOILET') NOT NULL,
    Coordinate POINT NOT NULL,
    
    CreatedAt DATETIME NOT NULL DEFAULT NOW(),
    
    PRIMARY KEY (ID)
) ENGINE = INNODB DEFAULT CHARSET = UTF8;
