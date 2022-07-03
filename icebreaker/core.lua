msg=""
state={}

function _init()
 state.flg_slide=2
 state.tick=0
 
 obs={}
 ob=ob:init()
 ob.spr=76
 ob.pushable=true
 add(obs,ob)

 hero:init()

end

function timer()
 state.tick-=1
 if state.tick == 0 then
  --do something
  
 end
end

function _update60()
  local mx=0
  local my=0
  local moved=false
  local spd=5
  if (btnp(0)) mx -= spd hero.dir=1 moved=true
  if (btnp(1)) mx += spd hero.dir=2 moved=true
  if (btnp(2)) my -= spd hero.dir=3 moved=true
  if (btnp(3)) my += spd hero.dir=4 moved=true
  
 
  hero.tle=mget(hero.x,hero.y)
 
  domove(hero,mx,my,dir)
  if(moved) doanimate(hero)
  
  --hero:animate()
end

function _draw()
 cls(0)
 palt(8,true)
 palt(0,false)
 pal(5,2)
 spr(204,0,0,4,4)
 
 spr(192,0,0,4,4)
 spr(200,32,0,4,4)
 spr(200,32,32,4,4)
 spr(76,30,20,4,4)
 --hero direction
 local flp = false
 if(hero.dir == 1) flp=true
 --hero frame
 local frm = abs(hero.frm)
 
 for o in all(obs) do
  spr(o.spr,o.x,o.y,4,4)
 end

 local s=hero.spr+(frm*4)
 spr(s,hero.x,hero.y,4,4,flp,false)
 print(msg,64,64)
end