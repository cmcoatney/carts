--actions

function push(ob,mob,dir,mm)

  ob.x += mm
 --check if ob pushable
 if ob.pushable == true then

 --check dir to move
 if(dir==1 or dir==2) ob.y+= mm
 if(dir==3 or dir==4) ob.y+=mm
 --check if ob slides
   --if yes slide instead
 
 --move ob
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

