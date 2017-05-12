function gcd(aa,bb:longint):longint;
begin
  if bb<>0 then
  gcd:=gcd(bb,aa mod bb)
  else gcd:=aa;
end;
