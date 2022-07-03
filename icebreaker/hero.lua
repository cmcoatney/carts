--hero

hero={}
function hero:init()
 self.x=2
 self.y=0
 self.spr=0
 self.dir=0
 self.frm=0
 self.tle=mget(hero.x,hero.y)
 self.tick=30
 self.tock=30 --ticks till stop
 self.tictok=30
 self.trans={}
 self.tcount=0
end

function hero:animate()
 if(self.tock < 1) return
 
 self.tick-=1
 if self.tick == 0 then
  self.tick = self.tictok
  --do something
  self:transitions()
  self.tock-=1
 end
end


--play movement transitions
function hero:transitions()
 if #self.trans>0 then
 local t = self.trans[self.tcount]

 self.x += t.x
 self.y += t.y
 self.tcount+=1
 end
end