--map


function canmove(mob,x,y)
 --passable
 local pass=false
 
 local mtype = movetype(x,y)
  
 if(mtype > 2) pass=true
 --if (x > 0 and x < 127 and y > 0 and y < 127) pass=false
 if(mtype == 3 or mtype == 5) pass=false
 
 
 return pass
end