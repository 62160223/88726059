CREATE TABLE Artists (
    ArtistID INT NOT NULL,
    NameSinger VARCHAR(100) NOT NULL,
    Label VARCHAR(100),
    Member INT NOT NULL,
    PRIMARY KEY (ArtistID)
);

CREATE TABLE Albums (
    AlbumID INT NOT NULL,
    ArtistID INT NOT NULL,
    NameAlbum varchar(100) NOT NULL,
    Released YEAR NOT NULL,
    ImageAlbum VARCHAR(45) ,
    StyleID INT NOT NULL,
    PRIMARY KEY (AlbumID)
);

CREATE TABLE Songs (
    SongID INT NOT NULL,
    ArtistID INT NOT NULL,
    AlbumID INT NOT NULL,
    NameSong VARCHAR(100) NOT NULL,
    Lengths TIME NOT Null,
    Lyrics VARCHAR(500) NOT Null,
    PRIMARY KEY (SongID)
);

CREATE TABLE Styles (
    StyleID INT NOT NULL,
    StyleSong VARCHAR(50) NOT NULL
);