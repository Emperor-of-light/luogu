program P2399;
var
  s,s1:ansistring;
  i,j,k,a:longint;  //hl:boolean;
  
function gcd(aa,bb:longint):longint;
begin
  if bb<>0 then
  gcd:=gcd(bb,aa mod bb)
  else gcd:=aa;
end;
begin
  readln(s);
  i:=1; n:=length(s);
  while s[i]<>'.' do inc(i);
  dec(i);
  for j:=1 to i do
    s1:=s1+s[j];
  val(s1,a);
  inc(i,2);
  k:=pos(s,'(');
  if k=0 then begin

  end
  else begin
    while s[i]<>'(' do inc(i);
