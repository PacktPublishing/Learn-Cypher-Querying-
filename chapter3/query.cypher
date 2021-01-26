CREATE ()

CREATE (n) RETURN (n)

CREATE (a),(b),(c) RETURN (a),(b),(c)

FOREACH (i in RANGE (0,49)|CREATE (a))

CREATE (a:Student)

CREATE (n:Student) RETURN (n)

CREATE (a:Student),(b:Student),(c:Student) RETURN (a),(b),(c)

CREATE (a:Student),(b:Teacher),(c:Office_stuff) RETURN (a),(b),(c)

CREATE(a:Student{NAME:"RONI",CITY:"KOLKATA"})

CREATE(a:Student{NAME:"RONI",CITY:"KOLKATA"}) RETURN (a)

CREATE (a:Student{NAME:"RONI",CITY:"KOLKATA"}),(b:Teacher{NAME:"JOHN",CITY:"LONDON"}),(c:Office_stuff{NAME:"BOB",CITY:"MUNICH"}) RETURN (a),(b),(c)

MATCH(a:Student) RETURN a.NAME as NAME

MATCH(a:Student) WHERE a.NAME="RONI" RETURN (a)

MATCH(a:Student) WHERE a.NAME="JOHN" 
REMOVE a:Student

MATCH(a:Student) WHERE a.NAME="JOHN" 
REMOVE a:Student
SET a:New_Student
RETURN (a)

MATCH(a:Student) WHERE a.NAME="JOHN" 
SET a.CITY="LONDON"
RETURN (a)

MATCH(a:Student) WHERE a.NAME="JOHN" 
SET a.COMPANY="NEO4J"
RETURN a.CITY as city,a.NAME as name ,a.COMPANY as company

MATCH(a:Student) 
SET a.COMPANY="NEO4J"
RETURN a.CITY as city,a.NAME as name ,a.COMPANY as company

MATCH(a:Student) 
where a.NAME="RONI"
REMOVE a.COMPANY
return a.COMPANY as company

MATCH(a:Student) 
where a.NAME="RONI"
set a={}
return a.CITY as city ,a.NAME as name

MATCH(n) delete(n)

CREATE(a:Student{NAME:"RONI"})

MATCH(a:Student)
where a.NAME="RONI"
RETURN a

MERGE(a:Student{NAME:"RONI"})




