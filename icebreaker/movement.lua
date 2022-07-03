--movement


function domove(mob,mx,my,dir)

  --slide test
  --if fget(mget(mob.x+mx,mob.y+my),2) then
   --slide(mob,mx,my)
  --else
   for o in all(obs) do
    if o.x == mob.x+32 and o.pushable==true then
    o.x+=mx
    push(o,mob,dir)
    end
   end
   
   if (mob.x+mx < 127 and mob.x > 0) mob.x+=mx
   mob.y+=my
   

   
  --end
end

function doanimate(mob)
   if mob.frm<2 then
    mob.frm +=1
   elseif hero.frm>0 then
    mob.frm -=1
   else 
    mob.frm+=1
   end
end

-- when hitting sheet ice
-- slide to the end of the
-- patch in current direction
function slide(mob,x,y)
 local dir=mob.dir
 local mx=mob.x+x
 local my=mob.y+y
 local tle = mget(x,y)
 trans={} --resets transitions
 msg="reset trans"
 while(fget(mget(mx,my),state.flg_slide)) do
  if(dir==1) mx-=1
  if(dir==2) mx+=1
  if(dir==3) my-=1
  if(dir==4) my+=1
  
  --mob.x=mx
  --mob.y=my
  
  local trans={}
  trans[mob.tcount].x=mx
  trans[mob.tcount].y=my
  trans[mob.tcount].tick=1 
  mob.tcount+=1
  add(mob.trans,trans)
 end
 
end

