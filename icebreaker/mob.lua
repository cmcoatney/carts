--objects


obs={}
ob={}
function ob:init()
 self={}
 self.x=64
 self.y=0
 self.pushable=false
 self.blocking=true
 self.spr=0
 self.dir=0
 self.frm=0
 self.tle=mget(self.x,self.y)
 self.tick=30
 self.tock=30 --ticks till stop
 self.tictok=30
 self.trans={}
 self.tcount=0
 return self
end