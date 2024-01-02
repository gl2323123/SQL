
INSERT INTO musicain
VALUES (1, 'Metalica');

INSERT INTO musicain
VALUES (2, 'AC/DC');

INSERT INTO musicain
VALUES (3, 'Nirvana');

INSERT INTO musicain
VALUES (4, 'Blur');

INSERT INTO musicain
VALUES (5, 'DJ SMASH');



INSERT INTO genre 
VALUES (1, 'Pop');

INSERT INTO genre 
VALUES (2, 'Punk-Rock');

INSERT INTO genre 
VALUES (3, 'Rock');


INSERT INTO genresmusicain  
VALUES (1,1, 3);

INSERT INTO genresmusicain  
VALUES (2,1, 1);

INSERT INTO genresmusicain  
VALUES (3,2, 3);

INSERT INTO genresmusicain  
VALUES (4,2, 2);

INSERT INTO genresmusicain  
VALUES (5,3, 3);

INSERT INTO genresmusicain  
VALUES (6,4, 3);

INSERT INTO genresmusicain  
VALUES (7,5, 1);



INSERT INTO album  
VALUES (1,'In Utero', 1993);

INSERT INTO album  
VALUES (2,'Highway To Hell',1979 );

INSERT INTO album  
VALUES (3,'Moscow',2020 );


INSERT INTO album  
VALUES (4,'Load',2009 );


INSERT INTO musicainalbum  
VALUES (1,1,3);

INSERT INTO musicainalbum  
VALUES (2,5,4);

INSERT INTO musicainalbum  
VALUES (3,2,2);

INSERT INTO musicainalbum 
VALUES (4,3,1);


INSERT INTO track  
VALUES (1,'Moscow never sleep', 3, 183
);

INSERT INTO track  
VALUES (2,'Rape me', 1, 204
);

INSERT INTO track  
VALUES (3,'Lithium', 1, 258
);