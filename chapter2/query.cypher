Match (n{NAME:"roni"})
Match (n{NAME:"roni"}) Return (n)
Match(a{NAME:"roni"}),(b{NAME:"rahul"}) Return a,b
Match (n{NAME:"rahul"})
Match (n) Where n.NAME="rahul" Return (n)
Match (n) Where n.NAME="rahul" or n.NAME="roni" Return (n)
Create (a: Student {NAME:"roni"}),(b:Student{NAME:"rahul"}),(c:Student{NAME:"Kevin"}),(d:Student{NAME:"Kiara"}),(e:Student{NAME:"Nancy"})
Match (n) Return(n)
