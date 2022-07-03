
function doanimate(mob)
   if mob.frm<2 then
    mob.frm +=1
   elseif hero.frm>0 then
    mob.frm -=1
   else 
    mob.frm+=1
   end
end