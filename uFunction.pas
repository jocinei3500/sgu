unit uFunction;

interface

  function FormatDateMy(date:string):string;
  function FDateMy(date:string):string;
  function FormatMoney(money:string):string;

implementation

function formatDateMY(date: string): string;
var
  day,month,year:string ;
begin
  day:=copy(date,1,2);
  month:=copy(date,4,2);
  year:=copy(date,7,2);
  result:=year+month+day;

end;


function FDateMy(date:string):string;
var
  day,month,year:string ;
  lPOs:integer;
begin
  lPos:=pos('/',date);
  day:=Copy(date,1,lPOs-1);
  date:=Copy(date,lPos+1,length(date));
  lpos:=pos('/',date);
  month:=Copy(date,1,lPos-1);
  year:=Copy(date,lPos+3,2);

  if length(day)=1 then
    day:='0'+day;
  if length(month)=1 then
    month:='0'+month;

  result:=day+'/'+month+'/'+year;

end;


function FormatMoney(money:string):string;
  var
    befsem,afsem:string;
    lpOs:integer;
begin
  lPos:=pos(',',money);
  if lPos>0 then
    begin
      befsem:=copy(money,1,lPOs-1);
      afsem:=Copy(money,lPOs+1,2);
      result:=befsem+'.'+afsem;
    end
  else
    begin
      result:=money;
    end;
end;
end.
 