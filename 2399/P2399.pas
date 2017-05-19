program P2399;
var
  s,s1:ansistring;
  i,j,k:longint;  a,b,kl,gl,hi,hg,lg,n,l,r,c:int64; //hl:boolean;
function gcd(aa,bb:int64):int64;
begin
    if bb<>0 then
    gcd:=gcd(bb,aa mod bb)
    else gcd:=aa;
end;
begin
  readln(s);
  i:=1; n:=length(s);
  while s[i]<>'.' do inc(i);
  dec(i); hi:=i+2;
  s1:=copy(s,1,i);
  val(s1,a);
  inc(i,2);
  l:=pos('(',s);
  if l=0 then begin
    gl:=1;
    s1:=copy(s,hi,n-hi+1);
    val(s1,b);
    for i:=hi to n do
      gl:=gl*10;
    hg:=a*gl+b;
    kl:=gcd(hg,gl);
    writeln(hg div kl,'/',gl div kl);
  end
  else begin
    i:=l+1;
    s1:=copy(s,hi,l-hi);
    val(s1,c);
    r:=pos(')',s);
    dec(r);
    s1:=copy(s,i,r-i+1);
    val(s1,b,i);
    kl:=1; gl:=1;
    for j:=hi to l-1 do kl:=kl*10;
    for j:=l+1 to r do gl:=gl*10;
    for j:=hi to l-1 do gl:=gl*10;
    hg:=a*gl-a*kl+c*(gl div kl)-c+b;
    lg:=gl-kl;
    k:=gcd(hg,lg);
    writeln(hg div k,'/',lg div k);
  end;
end.
