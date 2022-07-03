--movement


function canmove(mob,x,y)
 --passable
 local pass=false
 
 local mtype = movetype(x,y)
  
 if(mtype > 2) pass=true
 --if (x > 0 and x < 127 and y > 0 and y < 127) pass=false
 if(mtype == 3 or mtype == 5) pass=false
 
 
 return pass
end

function domove(mob,mx,my,dir)
  if( type(dir) != 'number' ) return

  msg='passed'
  --slide test
  --if fget(mget(mob.x+mx,mob.y+my),2) then
   --slide(mob,mx,my)
  --else
   for o in all(obs) do
    if o.x == mob.x+32 then
    --o.x+=mx
    push(o,mob,dir,mx)
    end
   end
   
   if (mob.x+mx < 127 and mob.x > 0) mob.x+=mx
   mob.y+=my
   

   
  --end
end
