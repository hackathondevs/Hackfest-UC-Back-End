CREATE TABLE exchanges (
    ID BIGINT UNSIGNED AUTO_INCREMENT,
    UserID BIGINT UNSIGNED NOT NULL,
    MerchantID BIGINT UNSIGNED NOT NULL,
    
    Amount INTEGER NOT NULL,
    Status ENUM('PENDING', 'SUCCESS', 'FAILED') NOT NULL DEFAULT 'PENDING',
    Date VARCHAR(255) NOT NULL,

    CreatedAt DATETIME NOT NULL DEFAULT NOW(),
    
    PRIMARY KEY (ID),
    FOREIGN KEY FKExchangeHistoriesUsers (UserID) REFERENCES Users (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY FKExchangeHistoriesMerchants (MerchantID) REFERENCES merchants (ID) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = INNODB DEFAULT CHARSET = UTF8;