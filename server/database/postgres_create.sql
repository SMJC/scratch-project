
CREATE TABLE public.users (
	"_id" serial NOT NULL,
	"email" varchar UNIQUE NOT NULL,
	"firstName" varchar (50) NOT NULL,
	"lastName" varchar (50) NOT NULL,
  "password" varchar ( 50 ) NOT NULL,
  "points" integer,
  "address_id" bigint NOT NULL,
  CONSTRAINT "users_pk" PRIMARY KEY ("_id")
);

CREATE TABLE public.address (
  "_id" serial NOT NULL,
  "zipcode" integer NOT NULL,
  "street" varchar NOT NULL,
  "city" varchar NOT NULL,
  "state" varchar NOT NULL
);


  CREATE TABLE public.items (
  "_id" serial NOT NULL,
  "title" varchar UNIQUE NOT NULL,
  "description" varchar (50) NOT NULL,
  "image" varchar (50) NOT NULL,
  "category" varchar NOT NULL,
  "status" BOOLEAN,
  "user_id" bigint NOT NULL
);


 ALTER TABLE public.users ADD CONSTRAINT "users_fk0" FOREIGN KEY ("address_id") REFERENCES public.address("_id");
 ALTER TABLE public.items ADD CONSTRAINT "items_fk0" FOREIGN KEY ("user_id") REFERENCES public.users("_id");


 INSERT INTO public.address VALUES (1, 92663, '123 daisy lane', 'oc', 'california');
 INSERT INTO public.address VALUES (2, 92663, '123 daisy lane', 'los angeles', 'california');
 INSERT INTO public.address VALUES (3, 92663, '123 daisy lane', 'sb', 'california');
 INSERT INTO public.address VALUES (4, 92663, '123 daisy lane', 'nyc', 'ny');


 INSERT INTO public.users VALUES (1, 'cc2368@cornell.edu', 'Catherine', 'Chiu', 'helloworld', 500, 1);
 INSERT INTO public.users VALUES (2, 'jm@gmail.com', 'John', 'Madrigal', 'helloworld', 500, 2);
 INSERT INTO public.users VALUES (3, 'mh@gmail.com', 'Michelle', 'Holland', 'helloworld', 500, 3);
 INSERT INTO public.users VALUES (4, 'sk@gmail.com', 'Serena', 'Kuo', 'helloworld',  500, 4);

 INSERT INTO public.items VALUES (1, 'fiddle leaf fig', 'lovely green addition to your home', 'image.url', 'home goods', FALSE, 1);
 INSERT INTO public.items VALUES (2, 'fiddle leaf fig', 'lovely green addition to your home', 'image.url', 'home goods', FALSE, 1);
 INSERT INTO public.items VALUES (3, 'fiddle leaf fig', 'lovely green addition to your home', 'image.url', 'home goods', FALSE, 1);
 INSERT INTO public.items VALUES (4, 'fiddle leaf fig', 'lovely green addition to your home', 'image.url', 'home goods', FALSE, 1);







