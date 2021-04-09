DROP TABLE food;

create table food(
    foodId int primary key auto_increment,
    foodName varchar(30) not null,
    foodCategory varchar(30) not null,
    foodDescription varchar (255) not null,
    foodPrice decimal(10,2) not null,
    unitInStock int not null,
    foodStatus varchar(100) not null
);
