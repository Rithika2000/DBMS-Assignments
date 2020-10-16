CREATE DATABASE movie_database;
USE movie_database;

    
    create table movie_cast(
	mov_id int not null,
    act_id int not null,
    primary key(act_id)
);

insert into  movie_cast(mov_id,act_id)
	values(300,400);
    insert into movie_cast values(700,900);
	insert into movie_cast values(300,500);
    insert into movie_cast values(600,1000);
    insert into movie_cast values(900,300);
    insert into movie_cast values(1000,600);



    create table actor(
act_id INT NOT NULL,
act_fname VARCHAR(255) NOT NULL,
actor_lname VARCHAR(255) NOT NULL,
actor_gender CHAR(10) NOT NULL,
actor_DOB DATE NOT NULL,
    primary key(act_id)
);

insert into  actor(act_id,act_fname,actor_lname,actor_gender,actor_DOB)
	values(300,'ranbir','kapoor','male','1998-07-11');
    insert into actor values(400,'rajkumar','rao','male','1997-02-17');
	insert into actor values(500,'anushka','sharma','female','2000-05-25');
    insert into actor values(600,'priyanka','chopra','female','1988-09-18');
    insert into actor values(900,'emma','watson','female','1991-05-11');
    insert into actor values(1000,'akshay','kumar','male','1974-12-14');
    
        create table mov_rating(
     mov_id INT NOT NULL,
    num_o_stars INT NOT NULL,
    primary key(mov_id)
);
    
insert into mov_rating(mov_id,num_o_stars)
   values(300,4);
   insert into mov_rating values(400,3);
   insert into mov_rating values(500,4);
   insert into mov_rating values(600,3);
   insert into mov_rating values(900,4);
   insert into mov_rating values(1000,4);
   insert into mov_rating values(700,5);
   
       create table mov_award(
    Award_id INT NOT NULL,
    mov_id INT NOT NULL,
	title VARCHAR(255) NOT NULL,
    primary key(award_id)
);
   
    
    insert into mov_award(award_id,mov_id,title)
   values(1,300,'zee cine awards');
   insert into mov_award values(2,400,'ifa');
   insert into mov_award values(4,700,'iifa');
   insert into mov_award values(7,600,'guild award');
   insert into mov_award values(5,900,'people choice award');
   insert into mov_award values(6,700,'oscar');
   
   select * from mov_award;
   
SELECT *
FROM mov_rating
INNER JOIN movie
ON mov_rating.mov_id = movie.mov_id;

SELECT mov_award.title, movie.mov_title
FROM movie
INNER JOIN mov_award ON movie.mov_id = mov_award.mov_id WHERE mov_title='Mission Impossible 1';

SELECT mov_genre.genre_name, movie.mov_title 
FROM movie 
INNER JOIN mov_genre ON movie.mov_id = mov_genre.genre_id ORDER BY mov_lang   ;
   

SELECT movie.mov_title, movie.mov_rel_date_year, movie.mov_lang, movie_director.director_fname, movie_director.director_lname
FROM movie
LEFT JOIN movie_director
ON  movie.mov_id = movie_director.id;

SELECT movie.mov_title, mov_award.title
FROM movie
LEFT JOIN mov_award ON movie.mov_id = mov_award.mov_id
WHERE movie.mov_rel_date_year<'2011-12-12';




   
   
   
   
   
   
   
   
   
   
   
   
   
 