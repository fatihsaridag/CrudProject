�H
_C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\DataProtectionKeysController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
[ 
Route 

(
 
$str &
)& '
]' (
public 

class (
DataProtectionKeysController -
:. /

Controller0 :
{ 
private 
OctaPullContext 
_context  (
;( )
public (
DataProtectionKeysController +
(+ ,
OctaPullContext, ;
context< C
)C D
{E F
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 

>' (
Get) ,
(, -!
DataSourceLoadOptions- B
loadOptionsC N
)N O
{P Q
var 
dataprotectionkeys "
=# $
_context% -
.- .
DataProtectionKeys. @
.@ A
SelectA G
(G H
iH I
=>J L
newM P
{Q R
i 
. 
Id 
, 
i 
. 
FriendlyName 
, 
i 
. 
Xml 
}   
)  
;   
return(( 
Json(( 
((( 
await(( 
DataSourceLoader(( .
.((. /
	LoadAsync((/ 8
(((8 9
dataprotectionkeys((9 K
,((K L
loadOptions((M X
)((X Y
)((Y Z
;((Z [
})) 	
[++ 	
HttpPost++	 
]++ 
public,, 
async,, 
Task,, 
<,, 

>,,' (
Post,,) -
(,,- .
string,,. 4
values,,5 ;
),,; <
{,,= >
var-- 
model-- 
=-- 
new-- 
DataProtectionKey-- -
(--- .
)--. /
;--/ 0
var.. 

valuesDict.. 
=.. 
JsonConvert.. (
...( )
DeserializeObject..) :
<..: ;
IDictionary..; F
>..F G
(..G H
values..H N
)..N O
;..O P

(// 
model// 
,//  

valuesDict//! +
)//+ ,
;//, -
if11 
(11 
!11 
TryValidateModel11  
(11  !
model11! &
)11& '
)11' (
return22 

BadRequest22 !
(22! "
GetFullErrorMessage22" 5
(225 6

ModelState226 @
)22@ A
)22A B
;22B C
var44 
result44 
=44 
_context44 !
.44! "
DataProtectionKeys44" 4
.444 5
Add445 8
(448 9
model449 >
)44> ?
;44? @
await55 
_context55 
.55 
SaveChangesAsync55 +
(55+ ,
)55, -
;55- .
return77 
Json77 
(77 
new77 
{77 
result77 $
.77$ %
Entity77% +
.77+ ,
Id77, .
}77/ 0
)770 1
;771 2
}88 	
[:: 	
HttpPut::	 
]:: 
public;; 
async;; 
Task;; 
<;; 

>;;' (
Put;;) ,
(;;, -
int;;- 0
key;;1 4
,;;4 5
string;;6 <
values;;= C
);;C D
{;;E F
var<< 
model<< 
=<< 
await<< 
_context<< &
.<<& '
DataProtectionKeys<<' 9
.<<9 :
FirstOrDefaultAsync<<: M
(<<M N
item<<N R
=><<S U
item<<V Z
.<<Z [
Id<<[ ]
==<<^ `
key<<a d
)<<d e
;<<e f
if== 
(== 
model== 
==== 
null== 
)== 
return>> 

StatusCode>> !
(>>! "
$num>>" %
,>>% &
$str>>' 9
)>>9 :
;>>: ;
var@@ 

valuesDict@@ 
=@@ 
JsonConvert@@ (
.@@( )
DeserializeObject@@) :
<@@: ;
IDictionary@@; F
>@@F G
(@@G H
values@@H N
)@@N O
;@@O P

(AA 
modelAA 
,AA  

valuesDictAA! +
)AA+ ,
;AA, -
ifCC 
(CC 
!CC 
TryValidateModelCC  
(CC  !
modelCC! &
)CC& '
)CC' (
returnDD 

BadRequestDD !
(DD! "
GetFullErrorMessageDD" 5
(DD5 6

ModelStateDD6 @
)DD@ A
)DDA B
;DDB C
awaitFF 
_contextFF 
.FF 
SaveChangesAsyncFF +
(FF+ ,
)FF, -
;FF- .
returnGG 
OkGG 
(GG 
)GG 
;GG 
}HH 	
[JJ 	

HttpDeleteJJ	 
]JJ 
publicKK 
asyncKK 
TaskKK 
DeleteKK  
(KK  !
intKK! $
keyKK% (
)KK( )
{KK* +
varLL 
modelLL 
=LL 
awaitLL 
_contextLL &
.LL& '
DataProtectionKeysLL' 9
.LL9 :
FirstOrDefaultAsyncLL: M
(LLM N
itemLLN R
=>LLS U
itemLLV Z
.LLZ [
IdLL[ ]
==LL^ `
keyLLa d
)LLd e
;LLe f
_contextNN 
.NN 
DataProtectionKeysNN '
.NN' (
RemoveNN( .
(NN. /
modelNN/ 4
)NN4 5
;NN5 6
awaitOO 
_contextOO 
.OO 
SaveChangesAsyncOO +
(OO+ ,
)OO, -
;OO- .
}PP 	
privateSS 
voidSS 

(SS" #
DataProtectionKeySS# 4
modelSS5 :
,SS: ;
IDictionarySS< G
valuesSSH N
)SSN O
{SSP Q
stringTT 
IDTT 
=TT 
nameofTT 
(TT 
DataProtectionKeyTT 0
.TT0 1
IdTT1 3
)TT3 4
;TT4 5
stringUU 
FRİENDLY_NAMEUU  
=UU! "
nameofUU# )
(UU) *
DataProtectionKeyUU* ;
.UU; <
FriendlyNameUU< H
)UUH I
;UUI J
stringVV 
XMLVV 
=VV 
nameofVV 
(VV  
DataProtectionKeyVV  1
.VV1 2
XmlVV2 5
)VV5 6
;VV6 7
ifXX 
(XX 
valuesXX 
.XX 
ContainsXX 
(XX 
IDXX !
)XX! "
)XX" #
{XX$ %
modelYY 
.YY 
IdYY 
=YY 
ConvertYY "
.YY" #
ToInt32YY# *
(YY* +
valuesYY+ 1
[YY1 2
IDYY2 4
]YY4 5
)YY5 6
;YY6 7
}ZZ 
if\\ 
(\\ 
values\\ 
.\\ 
Contains\\ 
(\\ 
FRİENDLY_NAME\\ ,
)\\, -
)\\- .
{\\/ 0
model]] 
.]] 
FriendlyName]] "
=]]# $
Convert]]% ,
.]], -
ToString]]- 5
(]]5 6
values]]6 <
[]]< =
FRİENDLY_NAME]]= J
]]]J K
)]]K L
;]]L M
}^^ 
if`` 
(`` 
values`` 
.`` 
Contains`` 
(`` 
XML`` "
)``" #
)``# $
{``% &
modelaa 
.aa 
Xmlaa 
=aa 
Convertaa #
.aa# $
ToStringaa$ ,
(aa, -
valuesaa- 3
[aa3 4
XMLaa4 7
]aa7 8
)aa8 9
;aa9 :
}bb 
}cc 	
privateee 
stringee 
GetFullErrorMessageee *
(ee* + 
ModelStateDictionaryee+ ?

modelStateee@ J
)eeJ K
{eeL M
varff 
messagesff 
=ff 
newff 
Listff #
<ff# $
stringff$ *
>ff* +
(ff+ ,
)ff, -
;ff- .
foreachhh 
(hh 
varhh 
entryhh 
inhh  

modelStatehh! +
)hh+ ,
{hh- .
foreachii 
(ii 
varii 
errorii !
inii" $
entryii% *
.ii* +
Valueii+ 0
.ii0 1
Errorsii1 7
)ii7 8
messagesjj 
.jj 
Addjj  
(jj  !
errorjj! &
.jj& '
ErrorMessagejj' 3
)jj3 4
;jj4 5
}kk 
returnmm 
Stringmm 
.mm 
Joinmm 
(mm 
$strmm "
,mm" #
messagesmm$ ,
)mm, -
;mm- .
}nn 	
}oo 
}pp �"
gC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\GenericBaseController\BaseController.cs
	namespace

 	
CrudProject


 
.

 
Controllers

 !
.

! "!
GenericBaseController

" 7
{ 
public

class
BaseController
<
TEntity
>
:

Controller
,
IBaseController
<
TEntity
>
where
TEntity
:
class
{ 
private 
readonly 
IGenericRepository +
<+ ,
TEntity, 3
>3 4
_genericRepository5 G
;G H
private 
readonly 
OctaPullContext (
_context) 1
;1 2
public 
BaseController 
( 
IGenericRepository 0
<0 1
TEntity1 8
>8 9
genericRepository: K
,K L
OctaPullContextL [
context\ c
)c d
{ 	
_genericRepository 
=  
genericRepository! 2
;2 3
_context 
= 
context 
; 
} 	
public 

Post "
(" #
TEntity# *
entity+ 1
)1 2
{ 	
_genericRepository "
." #
Create# )
() *
entity* 0
)0 1
;1 2
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
Json 
( 
true  
)  !
;! "
}!! 	
public## 

Delete## #
(### $
long##$ (
id##) +
)##+ ,
{$$ 	
var%% 
entity%% 
=%% 
_genericRepository%% +
.%%+ ,
GetById%%, 3
(%%3 4
id%%4 6
)%%6 7
;%%7 8
if&& 
(&& 
entity&& 
!=&& 
null&& 
)&& 
{'' 
_genericRepository(( "
.((" #
Delete((# )
((() *
entity((* 0
)((0 1
;((1 2
_context)) 
.)) 
SaveChanges)) $
())$ %
)))% &
;))& '
return** 
Json** 
(** 
true**  
)**  !
;**! "
}++ 
return,, 
Json,, 
(,, 
false,, 
),, 
;,, 
}.. 	
public00 

Get00  
(00  !
)00! "
{11 	
var22 
entities22 
=22 
_genericRepository22 -
.22- .
GetAll22. 4
(224 5
)225 6
;226 7
return33 
Json33 
(33 
entities33  
)33  !
;33! "
}44 	
public66 


(66* +
int66+ .
id66/ 1
)661 2
{77 	
var88 
entity88 
=88 
_genericRepository88 +
.88+ ,
GetById88, 3
(883 4
id884 6
)886 7
;887 8
if99 
(99 
entity99 
is99 
null99 
)99 
{:: 
return;; 
Json;; 
(;; 
false;; !
);;! "
;;;" #
}<< 
return== 
Json== 
(== 
entity== 
)== 
;==  
}>> 	
public@@ 

Put@@  
(@@  !
TEntity@@! (
entity@@) /
)@@/ 0
{AA 	
_genericRepositoryCC 
.CC 
UpdateCC %
(CC% &
entityCC& ,
)CC, -
;CC- .
_contextDD 
.DD 
SaveChangesDD  
(DD  !
)DD! "
;DD" #
returnEE 
JsonEE 
(EE 
trueEE 
)EE 
;EE 
}FF 	
}GG 
}II �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\GenericBaseController\IBaseController.cs
	namespace 	
CrudProject
 
. 
Controllers !
.! "!
GenericBaseController" 7
{ 
public 

	interface 
IBaseController $
<$ %
TEntity% ,
>, -
{ 

Post 
( 
TEntity "
entity# )
)) *
;* +

Put		 
(		 
TEntity		 !
entity		" (
)		( )
;		) *


 
Delete

 
(

 
long

 !
id

" $
)

$ %
;

% &

Get 
( 
) 
; 


(# $
int$ '
id( *
)* +
;+ ,
}
} ��
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\HomeController.cs
	namespace		 	
CrudProject		
 
.		 
Controllers		 !
{

 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
IRepositoryManager +
_repositoryManager, >
;> ?
public 
HomeController 
( 
IRepositoryManager 0
repositoryManager1 B
)B C
{ 	
_repositoryManager 
= 
repositoryManager  1
;1 2
} 	
public 

TblGeneralFirma ,
(, -
)- .
{ 	
var 
tblGeneralFirma 
=  !
_repositoryManager" 4
.4 5
TblGeneralFirma5 D
.D E
GetAllE K
(K L
)L M
;M N
var 
tblGeneralIsletme !
=" #
_repositoryManager$ 6
.6 7
TblGeneralIsletme7 H
.H I
GetAllI O
(O P
)P Q
;Q R
var 
tblGeneralUlke 
=  
_repositoryManager! 3
.3 4$
tblGeneralUlkeRepository4 L
.L M
GetAllM S
(S T
)T U
;U V
var 
tblGeneralIl 
= 
_repositoryManager 1
.1 2
TblGeneralIl2 >
.> ?
GetAll? E
(E F
)F G
;G H
var 
tblGeneralIlce 
=  
_repositoryManager! 3
.3 4
TblGeneralIlce4 B
.B C
GetAllC I
(I J
)J K
;K L
var 

= 
_repositoryManager  2
.2 3#
tblGeneralKoyRepository3 J
.J K
GetAllK Q
(Q R
)R S
;S T$
TblGeneralFirmaViewModel   $$
tblGeneralFirmaViewModel  % =
=  > ?
new  @ C$
TblGeneralFirmaViewModel  D \
{!! 
TblGeneralFirma"" 
=""  !
tblGeneralFirma""" 1
,""1 2
TblGeneralIsletme## !
=##" #
tblGeneralIsletme##$ 5
,##5 6
TblGeneralIl$$ 
=$$ 
tblGeneralIl$$ *
,$$* +
TblGeneralIlce%% 
=%% 
tblGeneralIlce%%  .
,%%. /

=&& 

,&&- .
TblGeneralUlke'' 
='' 
tblGeneralUlke''  .
,''. /
}(( 
;((
return** 
View** 
(** $
tblGeneralFirmaViewModel** 0
)**0 1
;**1 2
}++ 	
public-- 

TblGeneralFavoriler-- 0
(--0 1
)--1 2
{.. 	
var00 
tblGeneralFavoriler00 #
=00$ %
_repositoryManager00& 8
.008 9)
tblGeneralFavorilerRepository009 V
.00V W
GetAll00W ]
(00] ^
)00^ _
;00_ `
var11 
tblGeneralIsletme11 !
=11" #
_repositoryManager11$ 6
.116 7
TblGeneralIsletme117 H
.11H I
GetAll11I O
(11O P
)11P Q
;11Q R
var22 
tblGeneralSube22 
=22  
_repositoryManager22! 3
.223 4
TblGeneralSube224 B
.22B C
GetAll22C I
(22I J
)22J K
;22K L
var33 #
tblGeneralSubeKullanici33 '
=33( )
_repositoryManager33* <
.33< =-
!tblGeneralSubeKullaniciRepository33= ^
.33^ _
GetAll33_ e
(33e f
)33f g
;33g h(
TblGeneralFavorilerViewModel55 ((
tblGeneralFavorilerViewModel55) E
=55F G
new55H K(
TblGeneralFavorilerViewModel55L h
{66 
TblGeneralFavorilers77 $
=77$ %
tblGeneralFavoriler77& 9
,779 :
TblGeneralIsletmes88 "
=88" #
tblGeneralIsletme88$ 5
,885 6
TblGeneralSubes99 
=99  !
tblGeneralSube99" 0
,990 1#
TblGeneralSubeKullanici:: '
=::( )#
tblGeneralSubeKullanici::) @
};; 
;;;
return== 
View== 
(== (
tblGeneralFavorilerViewModel== 4
)==4 5
;==5 6
}>> 	
publicAA 

TblGeneralEfatMukellefMailAA 7
(AA7 8
)AA8 9
{BB 	
varCC &
tblGeneralEfatMukellefMailCC *
=CC+ ,
_repositoryManagerCC- ?
.CC? @0
$tblGeneralEFatMukellefMailRepositoryCC@ d
.CCd e
GetAllCCe k
(CCk l
)CCl m
;CCm n
varDD "
tblGeneralEfatMukellefDD &
=DD' (
_repositoryManagerDD) ;
.DD; <,
 tblGeneralEFatMukellefRepositoryDD< \
.DD\ ]
GetAllDD] c
(DDc d
)DDd e
;DDe f/
#TblGeneralEfatMukellefMailViewModelEE //
#tblGeneralEfatMukellefMailViewModelEE0 S
=EET U
newEEV Y
(EEY Z
)EEZ [
;EE[ \/
#tblGeneralEfatMukellefMailViewModelFF /
.FF/ 0"
TblGeneralEfatMukellefFF0 F
=FFG H"
tblGeneralEfatMukellefFFI _
;FF_ `/
#tblGeneralEfatMukellefMailViewModelGG /
.GG/ 0&
TblGeneralEfatMukellefMailGG0 J
=GGK L&
tblGeneralEfatMukellefMailGGM g
;GGg h
returnII 
ViewII 
(II /
#tblGeneralEfatMukellefMailViewModelII ;
)II; <
;II< =
}JJ 	
publicMM 

IndexMM "
(MM" #
)MM# $
{NN 	
returnOO 
ViewOO 
(OO 
)OO 
;OO 
}PP 	
publicRR 

DataProtectionKeysRR /
(RR/ 0
)RR0 1
{SS 	
returnTT 
ViewTT 
(TT 
)TT 
;TT 
}UU 	
publicWW 

TblGeneralApplicationsWW 3
(WW3 4
)WW4 5
{XX 	
varYY 
datasYY 
=YY 
_repositoryManagerYY *
.YY* +!
TblGeneralApplicationYY+ @
.YY@ A
GetAllYYA G
(YYG H
)YYH I
;YYI J
returnZZ 
ViewZZ 
(ZZ 
datasZZ 
)ZZ 
;ZZ 
}[[ 	
public]] 

TblGeneralBanka]] ,
(]], -
)]]- .
{^^ 	
var__ 
datas__ 
=__ 
_repositoryManager__ *
.__* +%
TblGeneralBankaRepository__+ D
.__D E
GetAll__E K
(__K L
)__L M
;__M N
return`` 
View`` 
(`` 
datas`` 
)`` 
;`` 
}aa 	
publiccc 


(cc* +
)cc+ ,
{dd 	
varee "
tblCmsAppMenuViewModelee &
=ee' (
newee) ,"
TblCmsAppMenuViewModelee- C
(eeC D
)eeD E
;eeE F
varff 
datasff 
=ff 
_repositoryManagerff *
.ff* +
TblCMSAppMenusff+ 9
.ff9 :
GetAllff: @
(ff@ A
)ffA B
;ffB C
vargg 

navigationgg 
=gg 
_repositoryManagergg /
.gg/ 0)
TblCmsAppNavigationRepositorygg0 M
.ggM N
GetAllggN T
(ggT U
)ggU V
;ggV W"
tblCmsAppMenuViewModelii "
.ii" #
TblCmsappMenuesii# 2
=ii3 4
datasii5 :
;ii: ;"
tblCmsAppMenuViewModeljj "
.jj" # 
TblCmsappNavigationsjj# 7
=jj8 9

navigationjj: D
;jjD E
returnll 
Viewll 
(ll "
tblCmsAppMenuViewModelll .
)ll. /
;ll/ 0
}mm 	
publicpp	 

TblCMSAppNavigationpp 1
(pp1 2
)pp2 3
{qq	 

returnrr 
Viewrr 
(rr 
)rr 
;rr 
}ss	 

publicvv 

TblCmsnavYetkivv +
(vv+ ,
)vv, -
{ww 	
varxx #
TblCMSNavYetkiViewModelxx '
=xx( )
newxx* -#
TblCMSNavYetkiViewModelxx. E
(xxE F
)xxF G
;xxG H
varyy 
tblCmsNavYetkisyy  
=yy! "
_repositoryManageryy$ 6
.yy6 7
TblCMSNavYetkiyy7 E
.yyE F
GetAllyyF L
(yyL M
)yyM N
;yyN O
varzz 
navigationszz 
=zz 
_repositoryManagerzz  2
.zz2 3)
TblCmsAppNavigationRepositoryzz3 P
.zzP Q
GetAllzzQ W
(zzW X
)zzX Y
;zzY Z#
TblCMSNavYetkiViewModel|| #
.||# $
TblCmsnavYetkis||$ 3
=||4 5
tblCmsNavYetkis||6 E
;||E F#
TblCMSNavYetkiViewModel}} #
.}}# $ 
TblCmsappNavigations}}$ 8
=}}9 :
navigations}}; F
;}}F G
return~~ 
View~~ 
(~~ #
TblCMSNavYetkiViewModel~~ /
)~~/ 0
;~~0 1
}
�� 	
public
�� 

�� #
TblFileFavoriDosyalar
�� 2
(
��2 3
)
��3 4
{
�� 	
var
�� ,
TblFileFavoriDosyalarViewModel
�� .
=
��/ 0
new
��1 4,
TblFileFavoriDosyalarViewModel
��5 S
(
��S T
)
��T U
;
��U V
var
�� 

�� 
=
��  
_repositoryManager
��  2
.
��2 3#
TblFileFavoriDosyalar
��3 H
.
��H I
GetAll
��I O
(
��O P
)
��P Q
;
��Q R
var
�� !
TblFileDosyaSistemi
�� #
=
��$ % 
_repositoryManager
��& 8
.
��8 9!
TblFileDosyaSistemi
��9 L
.
��L M
GetAll
��M S
(
��S T
)
��T U
;
��U V
var
�� 
TblGeneralFirma
�� 
=
��  ! 
_repositoryManager
��" 4
.
��4 5
TblGeneralFirma
��5 D
.
��D E
GetAll
��E K
(
��K L
)
��L M
;
��M N
var
�� 
TblGeneralSube
�� 
=
��   
_repositoryManager
��! 3
.
��3 4
TblGeneralSube
��4 B
.
��B C
GetAll
��C I
(
��I J
)
��J K
;
��K L
var
�� 
TblSsokullanici
�� 
=
��  ! 
_repositoryManager
��" 4
.
��4 5
TblSSOKullanici
��5 D
.
��D E
GetAll
��E K
(
��K L
)
��L M
;
��M N
var
�� 
TblGeneralIsletme
�� !
=
��" # 
_repositoryManager
��$ 6
.
��6 7
TblGeneralIsletme
��7 H
.
��H I
GetAll
��I O
(
��O P
)
��P Q
;
��Q R,
TblFileFavoriDosyalarViewModel
�� *
.
��* +#
TblFileFavoriDosyalar
��+ @
=
��A B

��C P
;
��P Q,
TblFileFavoriDosyalarViewModel
�� *
.
��* +"
TblFileDosyaSsistemi
��+ ?
=
��@ A!
TblFileDosyaSistemi
��B U
;
��U V,
TblFileFavoriDosyalarViewModel
�� *
.
��* +
TblGeneralFirma
��+ :
=
��; <
TblGeneralFirma
��= L
;
��L M,
TblFileFavoriDosyalarViewModel
�� *
.
��* +
TblGeneralSube
��+ 9
=
��: ;
TblGeneralSube
��< J
;
��J K,
TblFileFavoriDosyalarViewModel
�� *
.
��* +
TblSsokullanici
��+ :
=
��; <
TblSsokullanici
��= L
;
��L M,
TblFileFavoriDosyalarViewModel
�� *
.
��* +
TblGeneralIsletme
��+ <
=
��= >
TblGeneralIsletme
��? P
;
��P Q
return
�� 
View
�� 
(
�� ,
TblFileFavoriDosyalarViewModel
�� 6
)
��6 7
;
��7 8
}
�� 	
public
�� 

�� !
TblGeneralBankaSube
�� 0
(
��0 1
)
��1 2
{
�� 	*
TblGeneralBankaSubeViewModel
�� (*
tblGeneralBankaSubeViewModel
��) E
=
��F G
new
��H K
(
��K L
)
��L M
;
��M N
var
�� !
tblGeneralBankaSube
�� #
=
��$ % 
_repositoryManager
��& 8
.
��8 9!
TblGeneralBankaSube
��9 L
.
��L M
GetAll
��M S
(
��S T
)
��T U
;
��U V
var
�� 
tblGeneralIl
�� 
=
��  
_repositoryManager
�� 1
.
��1 2
TblGeneralIl
��2 >
.
��> ?
GetAll
��? E
(
��E F
)
��F G
;
��G H
var
�� 
tblGeneralIlce
�� 
=
��   
_repositoryManager
��! 3
.
��3 4
TblGeneralIlce
��4 B
.
��B C
GetAll
��C I
(
��I J
)
��J K
;
��K L
var
�� 
tblGeneralBanka
�� 
=
��  ! 
_repositoryManager
��" 4
.
��4 5'
TblGeneralBankaRepository
��5 N
.
��N O
GetAll
��O U
(
��U V
)
��V W
;
��W X*
tblGeneralBankaSubeViewModel
�� (
.
��( )

��) 6
=
��7 8
tblGeneralIl
��9 E
;
��E F*
tblGeneralBankaSubeViewModel
�� (
.
��( )
TblGeneralIlces
��) 8
=
��9 :
tblGeneralIlce
��; I
;
��I J*
tblGeneralBankaSubeViewModel
�� (
.
��( )
TblGeneralIlces
��) 8
=
��9 :
tblGeneralIlce
��; I
;
��I J*
tblGeneralBankaSubeViewModel
�� (
.
��( )
TblGeneralBankas
��) 9
=
��: ;
tblGeneralBanka
��< K
;
��K L
return
�� 
View
�� 
(
�� *
tblGeneralBankaSubeViewModel
�� 4
)
��4 5
;
��5 6
}
�� 	
public
�� 

�� &
TblGeneralBelgeDurumlari
�� 5
(
��5 6
)
��6 7
{
�� 	/
!TblGeneralBelgeDurumlariViewModel
�� -/
!tblGeneralBelgeDurumlariViewModel
��. O
=
��P Q
new
��R U
(
��U V
)
��V W
;
��W X
var
�� &
tblGeneralBelgeDurumlari
�� (
=
��) * 
_repositoryManager
��+ =
.
��= >&
TblGeneralBelgeDurumlari
��> V
.
��V W
GetAll
��W ]
(
��] ^
)
��^ _
;
��_ `
var
�� !
tblGeneralIslemTipi
�� "
=
��# $ 
_repositoryManager
��% 7
.
��7 8+
TblGeneralIslemTipiRepository
��8 U
.
��U V
GetAll
��V \
(
��\ ]
)
��] ^
;
��^ _/
!tblGeneralBelgeDurumlariViewModel
�� -
.
��- .&
TblGeneralBelgeDurumlari
��. F
=
��G H&
tblGeneralBelgeDurumlari
��I a
;
��a b/
!tblGeneralBelgeDurumlariViewModel
�� -
.
��- .!
TblGeneralIslemTipi
��. A
=
��B C!
tblGeneralIslemTipi
��D W
;
��W X
return
�� 
View
�� 
(
�� /
!tblGeneralBelgeDurumlariViewModel
�� 9
)
��9 :
;
��: ;
}
�� 	
public
�� 

�� %
TblGeneralBnkBelgeDurum
�� 4
(
��4 5
)
��5 6
{
�� 	
var
�� %
tblGeneralBnkBelgeDurum
�� '
=
��( ) 
_repositoryManager
��* <
.
��< =/
!TblGeneralBnkBelgeDurumRepository
��= ^
.
��^ _
GetAll
��_ e
(
��e f
)
��f g
;
��g h
return
�� 
View
�� 
(
�� %
tblGeneralBnkBelgeDurum
�� /
)
��/ 0
;
��0 1
}
�� 	
public
�� 

�� #
TblGeneralBnkEftDurum
�� 2
(
��2 3
)
��3 4
{
�� 	
var
�� #
tblGeneralBnkEftDurum
�� %
=
��& ' 
_repositoryManager
��( :
.
��: ;-
TblGeneralBnkEftDurumRepository
��; Z
.
��Z [
GetAll
��[ a
(
��a b
)
��b c
;
��c d
return
�� 
View
�� 
(
�� #
tblGeneralBnkEftDurum
�� -
)
��- .
;
��. /
}
�� 	
public
�� 

�� #
TblGeneralBnkHarDurum
�� 2
(
��2 3
)
��3 4
{
�� 	
var
�� #
tblGeneralBnkHarDurum
�� %
=
��& ' 
_repositoryManager
��( :
.
��: ;#
TblGeneralBnkHarDurum
��; P
.
��P Q
GetAll
��Q W
(
��W X
)
��X Y
;
��Y Z
return
�� 
View
�� 
(
�� #
tblGeneralBnkHarDurum
�� -
)
��- .
;
��. /
}
�� 	
public
�� 

�� "
TblGeneralBnkHarKynk
�� 1
(
��1 2
)
��2 3
{
�� 	
var
�� $
tblGeneralBnkHarKaynak
�� &
=
��' ( 
_repositoryManager
��) ;
.
��; <,
TblGeneralBnkHarKynkRepository
��< Z
.
��Z [
GetAll
��[ a
(
��a b
)
��b c
;
��c d
return
�� 
View
�� 
(
�� $
tblGeneralBnkHarKaynak
�� .
)
��. /
;
��/ 0
}
�� 	
public
�� 

�� !
TblGeneralBnkHarTip
�� 0
(
��0 1
)
��1 2
{
�� 	
var
�� !
tblGeneralBnkHarTip
�� #
=
��$ % 
_repositoryManager
��& 8
.
��8 9+
TblGeneralBnkHarTipRepository
��9 V
.
��V W
GetAll
��W ]
(
��] ^
)
��^ _
;
��_ `
return
�� 
View
�� 
(
�� !
tblGeneralBnkHarTip
�� +
)
��+ ,
;
��, -
}
�� 	
public
�� 

�� 

�� *
(
��* +
)
��+ ,
{
�� 	
var
�� 
TblGeneralDils
�� 
=
��   
_repositoryManager
��! 3
.
��3 4%
TblGeneralDilRepository
��4 K
.
��K L
GetAll
��L R
(
��R S
)
��S T
;
��T U
return
�� 
View
�� 
(
�� 
TblGeneralDils
�� &
)
��& '
;
��' (
}
�� 	
public
�� 

�� '
TblGeneralEevrakDurumlari
�� 6
(
��6 7
)
��7 8
{
�� 	
var
�� &
tblGeneralEvrakDurumlari
�� (
=
��) * 
_repositoryManager
��+ =
.
��= >1
#TblGeneralEEvrakDurumlariRepository
��> a
.
��a b
GetAll
��b h
(
��h i
)
��i j
;
��j k
return
�� 
View
�� 
(
�� &
tblGeneralEvrakDurumlari
�� 0
)
��0 1
;
��1 2
}
�� 	
public
�� 

�� $
TblGeneralEfatMukellef
�� 3
(
��3 4
)
��4 5
{
�� 	
var
�� $
tblGeneralEfatMukellef
�� &
=
��' ( 
_repositoryManager
��) ;
.
��; <.
 tblGeneralEFatMukellefRepository
��< \
.
��\ ]
GetAll
��] c
(
��c d
)
��d e
;
��e f
return
�� 
View
�� 
(
�� $
tblGeneralEfatMukellef
�� .
)
��. /
;
��/ 0
}
�� 	
public
�� 

�� 

�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� '
TblDigiBIDatabaseDosyalar
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� "
TblDigiBIDatabaseler
�� 1
(
��1 2
)
��2 3
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� #
TblDigiBIDosyaSistemi
�� 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� %
TblDigiBIFavoriDosyalar
�� 4
(
��4 5
)
��5 6
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� 
TblDigiBIPaylasim
�� .
(
��. /
)
��/ 0
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

�� !
TblFileDosyaSistemi
�� 0
(
��0 1
)
��1 2
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
[C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblCmsappMenusController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class $
TblCmsappMenusController )
:* +
BaseController, :
<: ;

>H I
{		 
public

 $
TblCmsappMenusController

 '
(

' (
IGenericRepository

( :
<

: ;


; H
>

H I
genericRepository

J [
,

[ \
OctaPullContext

] l
context

m t
)

t u
:

v w
base

x |
(

| }
genericRepository	

} �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblCMSAppNavigationController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblCMSAppNavigationController .
:/ 0
BaseController1 ?
<? @
TblCmsappNavigation@ S
>S T
{		 
public

 )
TblCMSAppNavigationController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblCmsappNavigation

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
[C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblCMSNavYetkiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class $
TblCMSNavYetkiController )
:* +
BaseController, :
<: ;
TblCmsappNavigation; N
>N O
{		 
public

 $
TblCMSNavYetkiController

 '
(

' (
IGenericRepository

( :
<

: ;
TblCmsappNavigation

; N
>

N O
genericRepository

P a
,

a b
OctaPullContext

c r
context

s z
)

z {
:

| }
base	

~ �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblCmsVersionController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblCmsVersionController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblCmsVersionController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
fC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblDigiBIDatabaseDosyalarController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class /
#TblDigiBIDatabaseDosyalarController 4
:5 6
BaseController7 E
<E F%
TblDigiBidatabaseDosyalarF _
>_ `
{		 
public

 /
#TblDigiBIDatabaseDosyalarController

 2
(

2 3
IGenericRepository

3 E
<

E F%
TblDigiBidatabaseDosyalar

F _
>

_ `
genericRepository

a r
,

r s
OctaPullContext	

t �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblDigiBIDatabaselerController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblDigiBIDatabaselerController /
:0 1
BaseController2 @
<@ A 
TblDigiBidatabaselerA U
>U V
{		 
public

 *
TblDigiBIDatabaselerController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblDigiBidatabaseler

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblDigiBIDosyaSistemiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblDigiBIDosyaSistemiController 0
:1 2
BaseController3 A
<A B!
TblDigiBidosyaSistemiB W
>W X
{		 
public

 +
TblDigiBIDosyaSistemiController

 .
(

. /
IGenericRepository

/ A
<

A B!
TblDigiBidosyaSistemi

B W
>

W X
genericRepository

Y j
,

j k
OctaPullContext

l {
context	

| �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblDigiBIFavoriDosyalarController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblDigiBIFavoriDosyalarController 2
:3 4
BaseController5 C
<C D#
TblDigiBifavoriDosyalarD [
>[ \
{		 
public

 -
!TblDigiBIFavoriDosyalarController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblDigiBifavoriDosyalar

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblDigiBIPaylasimController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblDigiBIPaylasimController ,
:- .
BaseController/ =
<= >
TblDigiBipaylasim> O
>O P
{		 
public

 '
TblDigiBIPaylasimController

 *
(

* +
IGenericRepository

+ =
<

= >
TblDigiBipaylasim

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
VC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblFileDosyaSistemi.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public		 

class		 
TblFileDosyaSistemi		 $
:		% &
BaseController		' 5
<		5 6
TblFileDosyaSistemi		6 I
>		I J
,		J K
IBaseController		L [
<		[ \
TblFileDosyaSistemi		\ o
>		o p
{

 
public 
TblFileDosyaSistemi "
(" #
IGenericRepository# 5
<5 6
TblFileDosyaSistemi6 I
>I J
genericRepositoryK \
,\ ]
OctaPullContext^ m
contextn u
)u v
:w x
basey }
(} ~
genericRepository	~ �
,
� �
context
� �
)
� �
{ 	
}
} 
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblFileFavoriDosyalarController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblFileFavoriDosyalarController 0
:1 2
BaseController3 A
<A B!
TblFileFavoriDosyalarB W
>W X
{		 
public

 +
TblFileFavoriDosyalarController

 .
(

. /
IGenericRepository

/ A
<

A B!
TblFileFavoriDosyalar

B W
>

W X
genericRepository

Y j
,

j k
OctaPullContext

l {
context	

| �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralApplicationsController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
[ 
Route 

(
 
$str &
)& '
]' (
public 

class ,
 TblGeneralApplicationsController 1
:2 3
BaseController4 B
<B C!
TblGeneralApplicationC X
>X Y
,Z [
IBaseController\ k
<k l"
TblGeneralApplication	l �
>
� �
{ 
public ,
 TblGeneralApplicationsController /
(/ 0
IGenericRepository0 B
<B C!
TblGeneralApplicationC X
>X Y
genericRepositoryZ k
,k l
OctaPullContextm |
context	} �
)
� �
:
� �
base
� �
(
� �
genericRepository
� �
,
� �
context
� �
)
� �
{ 	
} 	
};; 
}<< �
\C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBankaController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class %
TblGeneralBankaController *
:+ ,
BaseController- ;
<; <
TblGeneralBanka< K
>K L
{		 
public

 %
TblGeneralBankaController

 (
(

( )
IGenericRepository

) ;
<

; <
TblGeneralBanka

< K
>

K L
genericRepository

M ^
,

^ _
OctaPullContext

` o
context

p w
)

w x
:

y z
base

{ 
(	

 �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBankaSubeController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralBankaSubeController .
:/ 0
BaseController1 ?
<? @
TblGeneralBankaSube@ S
>S T
{		 
public

 )
TblGeneralBankaSubeController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralBankaSube

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
eC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBelgeDurumlariController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class .
"TblGeneralBelgeDurumlariController 3
:4 5
BaseController6 D
<D E$
TblGeneralBelgeDurumlariE ]
>] ^
{		 
public

 .
"TblGeneralBelgeDurumlariController

 1
(

1 2
IGenericRepository

2 D
<

D E$
TblGeneralBelgeDurumlari

E ]
>

] ^
genericRepository

_ p
,

p q
OctaPullContext	

r �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBnkBelgeDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralBnkBelgeDurumController 2
:3 4
BaseController5 C
<C D#
TblGeneralBnkBelgeDurumD [
>[ \
{		 
public

 -
!TblGeneralBnkBelgeDurumController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralBnkBelgeDurum

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBnkEftDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblGeneralBnkEftDurumController 0
:1 2
BaseController3 A
<A B!
TblGeneralBnkEftDurumB W
>W X
{		 
public

 +
TblGeneralBnkEftDurumController

 .
(

. /
IGenericRepository

/ A
<

A B!
TblGeneralBnkEftDurum

B W
>

W X
genericRepository

Y j
,

j k
OctaPullContext

l {
context	

| �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBnkHarDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblGeneralBnkHarDurumController 0
:1 2
BaseController3 A
<A B!
TblGeneralBnkHarDurumB W
>W X
{		 
public

 +
TblGeneralBnkHarDurumController

 .
(

. /
IGenericRepository

/ A
<

A B!
TblGeneralBnkHarDurum

B W
>

W X
genericRepository

Y j
,

j k
OctaPullContext

l {
context	

| �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBnkHarKynkController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblGeneralBnkHarKynkController /
:0 1
BaseController2 @
<@ A 
TblGeneralBnkHarKynkA U
>U V
{		 
public

 *
TblGeneralBnkHarKynkController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblGeneralBnkHarKynk

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralBnkHarTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralBnkHarTipController .
:/ 0
BaseController1 ?
<? @
TblGeneralBnkHarTip@ S
>S T
{		 
public

 )
TblGeneralBnkHarTipController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralBnkHarTip

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralDilController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblGeneralDilController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblGeneralDilController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
fC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralEEvrakDurumlariController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class /
#TblGeneralEEvrakDurumlariController 4
:5 6
BaseController7 E
<E F%
TblGeneralEevrakDurumlariF _
>_ `
{		 
public

 /
#TblGeneralEEvrakDurumlariController

 2
(

2 3
IGenericRepository

3 E
<

E F%
TblGeneralEevrakDurumlari

F _
>

_ `
genericRepository

a r
,

r s
OctaPullContext	

t �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralEFatMukellefController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class ,
 TblGeneralEFatMukellefController 1
:2 3
BaseController4 B
<B C"
TblGeneralEfatMukellefC Y
>Y Z
{		 
public

 ,
 TblGeneralEFatMukellefController

 /
(

/ 0
IGenericRepository

0 B
<

B C"
TblGeneralEfatMukellef

C Y
>

Y Z
genericRepository

[ l
,

l m
OctaPullContext

n }
context	

~ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
gC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralEFatMukellefMailController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class 0
$TblGeneralEFatMukellefMailController 5
:6 7
BaseController8 F
<F G&
TblGeneralEfatMukellefMailG a
>a b
{		 
public

 0
$TblGeneralEFatMukellefMailController

 3
(

3 4
IGenericRepository

4 F
<

F G&
TblGeneralEfatMukellefMail

G a
>

a b
genericRepository

c t
,

t u
OctaPullContext	

v �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralFavorilerController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralFavorilerController .
:/ 0
BaseController1 ?
<? @
TblGeneralFavoriler@ S
>S T
{		 
public

 )
TblGeneralFavorilerController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralFavoriler

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
\C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralFirmaController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class %
TblGeneralFirmaController *
:+ ,
BaseController- ;
<; <
TblGeneralFirma< K
>K L
{		 
public

 %
TblGeneralFirmaController

 (
(

( )
IGenericRepository

) ;
<

; <
TblGeneralFirma

< K
>

K L
genericRepository

M ^
,

^ _
OctaPullContext

` o
context

p w
)

w x
:

y z
base

{ 
(	

 �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralGondSekliController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralGondSekliController .
:/ 0
BaseController1 ?
<? @
TblGeneralGondSekli@ S
>S T
{		 
public

 )
TblGeneralGondSekliController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralGondSekli

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralGrupKullaniciController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralGrupKullaniciController 2
:3 4
BaseController5 C
<C D#
TblGeneralGrupKullaniciD [
>[ \
{		 
public

 -
!TblGeneralGrupKullaniciController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralGrupKullanici

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralGunController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblGeneralGunController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblGeneralGunController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
[C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIlceController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class $
TblGeneralIlceController )
:* +
BaseController, :
<: ;
TblGeneralIlce; I
>I J
{		 
public

 $
TblGeneralIlceController

 '
(

' (
IGenericRepository

( :
<

: ;
TblGeneralIlce

; I
>

I J
genericRepository

K \
,

\ ]
OctaPullContext

^ m
context

n u
)

u v
:

w x
base

y }
(

} ~
genericRepository	

~ �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
YC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIlController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class "
TblGeneralIlController '
:( )
BaseController* 8
<8 9
TblGeneralIl9 E
>E F
{		 
public

 "
TblGeneralIlController

 %
(

% &
IGenericRepository

& 8
<

8 9
TblGeneralIl

9 E
>

E F
genericRepository

G X
,

X Y
OctaPullContext

Z i
context

j q
)

q r
:

s t
base

u y
(

y z
genericRepository	

z �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIntegrationController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblGeneralIntegrationController 0
:1 2
BaseController3 A
<A B!
TblGeneralIntegrationB W
>W X
{		 
public

 +
TblGeneralIntegrationController

 .
(

. /
IGenericRepository

/ A
<

A B!
TblGeneralIntegration

B W
>

W X
genericRepository

Y j
,

j k
OctaPullContext

l {
context	

| �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIslemBelgeTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralIslemBelgeTipController 2
:3 4
BaseController5 C
<C D#
TblGeneralIslemBelgeTipD [
>[ \
{		 
public

 -
!TblGeneralIslemBelgeTipController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralIslemBelgeTip

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIslemKilitController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblGeneralIslemKilitController /
:0 1
BaseController2 @
<@ A 
TblGeneralIslemKilitA U
>U V
{		 
public

 *
TblGeneralIslemKilitController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblGeneralIslemKilit

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIslemSeriController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralIslemSeriController .
:/ 0
BaseController1 ?
<? @
TblGeneralIslemSeri@ S
>S T
{		 
public

 )
TblGeneralIslemSeriController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralIslemSeri

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIslemSeriTanimlamaController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class 2
&TblGeneralIslemSeriTanimlamaController 7
:8 9
BaseController: H
<H I(
TblGeneralIslemSeriTanimlamaI e
>e f
{		 
public

 2
&TblGeneralIslemSeriTanimlamaController

 5
(

5 6
IGenericRepository

6 H
<

H I(
TblGeneralIslemSeriTanimlama

I e
>

e f
genericRepository

g x
,

x y
OctaPullContext	

z �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIslemTipiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralIslemTipiController .
:/ 0
BaseController1 ?
<? @
TblGeneralIslemTipi@ S
>S T
{		 
public

 )
TblGeneralIslemTipiController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralIslemTipi

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIsletmeApplicationController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class 2
&TblGeneralIsletmeApplicationController 7
:8 9
BaseController: H
<H I(
TblGeneralIsletmeApplicationI e
>e f
{		 
public

 2
&TblGeneralIsletmeApplicationController

 5
(

5 6
IGenericRepository

6 H
<

H I(
TblGeneralIsletmeApplication

I e
>

e f
genericRepository

g x
,

x y
OctaPullContext	

z �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralIsletmeController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblGeneralIsletmeController ,
:- .
BaseController/ =
<= >
TblGeneralIsletme> O
>O P
{		 
public

 '
TblGeneralIsletmeController

 *
(

* +
IGenericRepository

+ =
<

= >
TblGeneralIsletme

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralKoyController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblGeneralKoyController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblGeneralKoyController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralKulGrupEkranController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class ,
 TblGeneralKulGrupEkranController 1
:2 3
BaseController4 B
<B C"
TblGeneralKulGrupEkranC Y
>Y Z
{		 
public

 ,
 TblGeneralKulGrupEkranController

 /
(

/ 0
IGenericRepository

0 B
<

B C"
TblGeneralKulGrupEkran

C Y
>

Y Z
genericRepository

[ l
,

l m
OctaPullContext

n }
context	

~ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
fC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralKullaniciEkAlanController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class /
#TblGeneralKullaniciEkAlanController 4
:5 6
BaseController7 E
<E F%
TblGeneralKullaniciEkAlanF _
>_ `
{		 
public

 /
#TblGeneralKullaniciEkAlanController

 2
(

2 3
IGenericRepository

3 E
<

E F%
TblGeneralKullaniciEkAlan

F _
>

_ `
genericRepository

a r
,

r s
OctaPullContext	

t �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralKullaniciGrupTanimController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class 2
&TblGeneralKullaniciGrupTanimController 7
:8 9
BaseController: H
<H I(
TblGeneralKullaniciGrupTanimI e
>e f
{		 
public

 2
&TblGeneralKullaniciGrupTanimController

 5
(

5 6
IGenericRepository

6 H
<

H I(
TblGeneralKullaniciGrupTanim

I e
>

e f
genericRepository

g x
,

x y
OctaPullContext	

z �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralLidosDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblGeneralLidosDurumController /
:0 1
BaseController2 @
<@ A 
TblGeneralLidosDurumA U
>U V
{		 
public

 *
TblGeneralLidosDurumController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblGeneralLidosDurum

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralLidosElusTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class ,
 TblGeneralLidosElusTipController 1
:2 3
BaseController4 B
<B C"
TblGeneralLidosElusTipC Y
>Y Z
{		 
public

 ,
 TblGeneralLidosElusTipController

 /
(

/ 0
IGenericRepository

0 B
<

B C"
TblGeneralLidosElusTip

C Y
>

Y Z
genericRepository

[ l
,

l m
OctaPullContext

n }
context	

~ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralLidosTalepTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralLidosTalepTipController 2
:3 4
BaseController5 C
<C D#
TblGeneralLidosTalepTipD [
>[ \
{		 
public

 -
!TblGeneralLidosTalepTipController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralLidosTalepTip

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
\C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralModulController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class %
TblGeneralModulController *
:+ ,
BaseController- ;
<; <
TblGeneralModul< K
>K L
{		 
public

 %
TblGeneralModulController

 (
(

( )
IGenericRepository

) ;
<

; <
TblGeneralModul

< K
>

K L
genericRepository

M ^
,

^ _
OctaPullContext

` o
context

p w
)

w x
:

y z
base

{ 
(	

 �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
_C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralOdemeTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class (
TblGeneralOdemeTipController -
:. /
BaseController0 >
<> ?
TblGeneralOdemeTip? Q
>Q R
{		 
public

 (
TblGeneralOdemeTipController

 +
(

+ ,
IGenericRepository

, >
<

> ?
TblGeneralOdemeTip

? Q
>

Q R
genericRepository

S d
,

d e
OctaPullContext

f u
context

v }
)

} ~
:	

 �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralOnayDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralOnayDurumController .
:/ 0
BaseController1 ?
<? @
TblGeneralOnayDurum@ S
>S T
{		 
public

 )
TblGeneralOnayDurumController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralOnayDurum

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralParaBirimiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblGeneralParaBirimiController /
:0 1
BaseController2 @
<@ A 
TblGeneralParaBirimiA U
>U V
{		 
public

 *
TblGeneralParaBirimiController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblGeneralParaBirimi

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
_C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class (
TblGeneralRedDurumController -
:. /
BaseController0 >
<> ?
TblGeneralRedDurum? Q
>Q R
{		 
public

 (
TblGeneralRedDurumController

 +
(

+ ,
IGenericRepository

, >
<

> ?
TblGeneralRedDurum

? Q
>

Q R
genericRepository

S d
,

d e
OctaPullContext

f u
context

v }
)

} ~
:	

 �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedDurumYetkiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralRedDurumYetkiController 2
:3 4
BaseController5 C
<C D#
TblGeneralRedDurumYetkiD [
>[ \
{		 
public

 -
!TblGeneralRedDurumYetkiController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralRedDurumYetki

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedNedeniController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblGeneralRedNedeniController .
:/ 0
BaseController1 ?
<? @
TblGeneralRedNedeni@ S
>S T
{		 
public

 )
TblGeneralRedNedeniController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblGeneralRedNedeni

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedNedenYeriController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class ,
 TblGeneralRedNedenYeriController 1
:2 3
BaseController4 B
<B C"
TblGeneralRedNedenYeriC Y
>Y Z
{		 
public

 ,
 TblGeneralRedNedenYeriController

 /
(

/ 0
IGenericRepository

0 B
<

B C"
TblGeneralRedNedenYeri

C Y
>

Y Z
genericRepository

[ l
,

l m
OctaPullContext

n }
context	

~ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedNedenYetkiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralRedNedenYetkiController 2
:3 4
BaseController5 C
<C D#
TblGeneralRedNedenYetkiD [
>[ \
{		 
public

 -
!TblGeneralRedNedenYetkiController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralRedNedenYetki

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRedYeriController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblGeneralRedYeriController ,
:- .
BaseController/ =
<= >
TblGeneralRedYeri> O
>O P
{		 
public

 '
TblGeneralRedYeriController

 *
(

* +
IGenericRepository

+ =
<

= >
TblGeneralRedYeri

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRehberColumnsController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralRehberColumnsController 2
:3 4
BaseController5 C
<C D"
TblGeneralRehberColumnD Z
>Z [
{		 
public

 -
!TblGeneralRehberColumnsController

 0
(

0 1
IGenericRepository

1 C
<

C D"
TblGeneralRehberColumn

D Z
>

Z [
genericRepository

\ m
,

m n
OctaPullContext

o ~
context	

 �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
]C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRehberController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class &
TblGeneralRehberController +
:, -
BaseController. <
<< =
TblGeneralRehber= M
>M N
{		 
public

 &
TblGeneralRehberController

 )
(

) *
IGenericRepository

* <
<

< =
TblGeneralRehber

= M
>

M N
genericRepository

O `
,

` a
OctaPullContext

b q
context

r y
)

y z
:

{ |
base	

} �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
bC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralRehberViewsController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class +
TblGeneralRehberViewsController 0
:1 2
BaseController3 A
<A B 
TblGeneralRehberViewB V
>V W
{		 
public

 +
TblGeneralRehberViewsController

 .
(

. /
IGenericRepository

/ A
<

A B 
TblGeneralRehberView

B V
>

V W
genericRepository

X i
,

i j
OctaPullContext

k z
context	

{ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
[C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralSubeController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class $
TblGeneralSubeController )
:* +
BaseController, :
<: ;
TblGeneralSube; I
>I J
{		 
public

 $
TblGeneralSubeController

 '
(

' (
IGenericRepository

( :
<

: ;
TblGeneralSube

; I
>

I J
genericRepository

K \
,

\ ]
OctaPullContext

^ m
context

n u
)

u v
:

w x
base

y }
(

} ~
genericRepository	

~ �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
dC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralSubeKullaniciController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class -
!TblGeneralSubeKullaniciController 2
:3 4
BaseController5 C
<C D#
TblGeneralSubeKullaniciD [
>[ \
{		 
public

 -
!TblGeneralSubeKullaniciController

 0
(

0 1
IGenericRepository

1 C
<

C D#
TblGeneralSubeKullanici

D [
>

[ \
genericRepository

] n
,

n o
OctaPullContext

p 
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
[C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralUlkeController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class $
TblGeneralUlkeController )
:* +
BaseController, :
<: ;
TblGeneralUlke; I
>I J
{		 
public

 $
TblGeneralUlkeController

 '
(

' (
IGenericRepository

( :
<

: ;
TblGeneralUlke

; I
>

I J
genericRepository

K \
,

\ ]
OctaPullContext

^ m
context

n u
)

u v
:

w x
base

y }
(

} ~
genericRepository	

~ �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
fC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralUserApplicationController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class /
#TblGeneralUserApplicationController 4
:5 6
BaseController7 E
<E F%
TblGeneralUserApplicationF _
>_ `
{		 
public

 /
#TblGeneralUserApplicationController

 2
(

2 3
IGenericRepository

3 E
<

E F%
TblGeneralUserApplication

F _
>

_ `
genericRepository

a r
,

r s
OctaPullContext	

t �
context


� �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
cC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralVergiDairesiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class ,
 TblGeneralVergiDairesiController 1
:2 3
BaseController4 B
<B C"
TblGeneralVergiDairesiC Y
>Y Z
{		 
public

 ,
 TblGeneralVergiDairesiController

 /
(

/ 0
IGenericRepository

0 B
<

B C"
TblGeneralVergiDairesi

C Y
>

Y Z
genericRepository

[ l
,

l m
OctaPullContext

n }
context	

~ �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
aC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblGeneralVisitDurumController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class *
TblGeneralVisitDurumController /
:0 1
BaseController2 @
<@ A 
TblGeneralVisitDurumA U
>U V
{		 
public

 *
TblGeneralVisitDurumController

 -
(

- .
IGenericRepository

. @
<

@ A 
TblGeneralVisitDurum

A U
>

U V
genericRepository

W h
,

h i
OctaPullContext

j y
context	

z �
)


� �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblOptionsController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class  
TblOptionsController %
:& '
BaseController( 6
<6 7
	TblOption7 @
>@ A
{		 
public

  
TblOptionsController

 #
(

# $
IGenericRepository

$ 6
<

6 7
	TblOption

7 @
>

@ A
genericRepository

B S
,

S T
OctaPullContext

U d
context

e l
)

l m
:

n o
base

p t
(

t u
genericRepository	

u �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSocialFeedController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblSocialFeedController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblSocialFeedController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSocialFeedKisiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblSocialFeedKisiController ,
:- .
BaseController/ =
<= >
TblSocialFeedKisi> O
>O P
{		 
public

 '
TblSocialFeedKisiController

 *
(

* +
IGenericRepository

+ =
<

= >
TblSocialFeedKisi

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSocialFeedLinkController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblSocialFeedLinkController ,
:- .
BaseController/ =
<= >
TblSocialFeedLink> O
>O P
{		 
public

 '
TblSocialFeedLinkController

 *
(

* +
IGenericRepository

+ =
<

= >
TblSocialFeedLink

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
]C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSocialFeedTipController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class &
TblSocialFeedTipController +
:, -
BaseController. <
<< =
TblSocialFeedTip= M
>M N
{		 
public

 &
TblSocialFeedTipController

 )
(

) *
IGenericRepository

* <
<

< =
TblSocialFeedTip

= M
>

M N
genericRepository

O `
,

` a
OctaPullContext

b q
context

r y
)

y z
:

{ |
base	

} �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSocialLinkController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class #
TblSocialLinkController (
:) *
BaseController+ 9
<9 :

>G H
{		 
public

 #
TblSocialLinkController

 &
(

& '
IGenericRepository

' 9
<

9 :


: G
>

G H
genericRepository

I Z
,

Z [
OctaPullContext

\ k
context

l s
)

s t
:

u v
base

w {
(

{ |
genericRepository	

| �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
XC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSODavetController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class !
TblSSODavetController &
:' (
BaseController) 7
<7 8

>E F
{		 
public

 !
TblSSODavetController

 $
(

$ %
IGenericRepository

% 7
<

7 8


8 E
>

E F
genericRepository

G X
,

X Y
OctaPullContext

Z i
context

j q
)

q r
:

s t
base

u y
(

y z
genericRepository	

z �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
]C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSODavetDetayController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class &
TblSSODavetDetayController +
:, -
BaseController. <
<< =
TblSsodavetDetay= M
>M N
{		 
public

 &
TblSSODavetDetayController

 )
(

) *
IGenericRepository

* <
<

< =
TblSsodavetDetay

= M
>

M N
genericRepository

O `
,

` a
OctaPullContext

b q
context

r y
)

y z
:

{ |
base	

} �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOHostController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class  
TblSSOHostController %
:& '
BaseController( 6
<6 7

TblSsohost7 A
>A B
{		 
public

  
TblSSOHostController

 #
(

# $
IGenericRepository

$ 6
<

6 7

TblSsohost

7 A
>

A B
genericRepository

C T
,

T U
OctaPullContext

V e
context

f m
)

m n
:

o p
base

q u
(

u v
genericRepository	

v �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOIzinController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class  
TblSSOIzinController %
:& '
BaseController( 6
<6 7

TblSsoizin7 A
>A B
{		 
public

  
TblSSOIzinController

 #
(

# $
IGenericRepository

$ 6
<

6 7

TblSsoizin

7 A
>

A B
genericRepository

C T
,

T U
OctaPullContext

V e
context

f m
)

m n
:

o p
base

q u
(

u v
genericRepository	

v �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
\C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOKullaniciController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class %
TblSSOKullaniciController *
:+ ,
BaseController- ;
<; <
TblSsokullanici< K
>K L
,L M
IBaseControllerN ]
<] ^
TblSsokullanici^ m
>m n
{		 
public

 %
TblSSOKullaniciController

 (
(

( )
IGenericRepository

) ;
<

; <
TblSsokullanici

< K
>

K L
genericRepository

M ^
,

^ _
OctaPullContext

` o
context

p w
)

w x
:

y z
base

{ 
(	

 �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
`C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOKullaniciTipiController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class )
TblSSOKullaniciTipiController .
:/ 0
BaseController1 ?
<? @
TblSsokullaniciTipi@ S
>S T
{		 
public

 )
TblSSOKullaniciTipiController

 ,
(

, -
IGenericRepository

- ?
<

? @
TblSsokullaniciTipi

@ S
>

S T
genericRepository

U f
,

f g
OctaPullContext

h w
context

x 
)	

 �
:


� �
base


� �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
XC:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOTokenController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class !
TblSSOTokenController &
:' (
BaseController) 7
<7 8
TblSsotoken8 C
>C D
{		 
public

 !
TblSSOTokenController

 $
(

$ %
IGenericRepository

% 7
<

7 8
TblSsotoken

8 C
>

C D
genericRepository

E V
,

V W
OctaPullContext

X g
context

h o
)

o p
:

q r
base

s w
(

w x
genericRepository	

x �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
^C:\Users\fatih\source\repos\CrudProject\CrudProject\Controllers\TblSSOYonlendirmeController.cs
	namespace 	
CrudProject
 
. 
Controllers !
{ 
public 

class '
TblSSOYonlendirmeController ,
:- .
BaseController/ =
<= >
TblSsoyonlendirme> O
>O P
{		 
public

 '
TblSSOYonlendirmeController

 *
(

* +
IGenericRepository

+ =
<

= >
TblSsoyonlendirme

> O
>

O P
genericRepository

Q b
,

b c
OctaPullContext

d s
context

t {
)

{ |
:

} ~
base	

 �
(


� �
genericRepository


� �
,


� �
context


� �
)


� �
{ 	
} 	
}
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\IDataProtectionKeysRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface )
IDataProtectionKeysRepository 2
:3 4
IGenericRepository5 G
<G H
DataProtectionKeyH Y
>Y Z
{ 
} 
}		 �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblCMSAppMenuRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblCMSAppMenuRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblCMSAppNavigationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblCMSAppNavigationRepository 3
:4 5
IGenericRepository6 H
<H I
TblCmsappNavigationI \
>\ ]
{ 
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblCMSNavYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface %
ITblCMSNavYetkiRepository .
:/ 0
IGenericRepository1 C
<C D
TblCmsnavYetkiD R
>R S
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblCmsVersionRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblCmsVersionRepository -
:/ 0
IGenericRepository1 C
<C D

>Q R
{ 
} 
} �
vC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblDigiBIDatabaseDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 0
$ITblDigiBIDatabaseDosyalarRepository 9
:: ;
IGenericRepository< N
<N O%
TblDigiBidatabaseDosyalarO h
>h i
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblDigiBIDatabaselerRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblDigiBIDatabaselerRepository 4
:5 6
IGenericRepository7 I
<I J 
TblDigiBidatabaselerJ ^
>^ _
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblDigiBIDosyaSistemiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblDigiBIDosyaSistemiRepository 5
:6 7
IGenericRepository8 J
<J K!
TblDigiBidosyaSistemiK `
>` a
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblDigiBIFavoriDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblDigiBIFavoriDosyalarRepository 7
:8 9
IGenericRepository: L
<L M#
TblDigiBifavoriDosyalarM d
>d e
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblDigiBIPaylasimRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblDigiBIPaylasimRepository 1
:2 3
IGenericRepository4 F
<F G
TblDigiBipaylasimG X
>X Y
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblFileDosyaSistemiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblFileDosyaSistemiRepository 3
:4 5
IGenericRepository6 H
<H I
TblFileDosyaSistemiI \
>\ ]
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblFileFavoriDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblFileFavoriDosyalarRepository 5
:6 7
IGenericRepository8 J
<J K!
TblFileFavoriDosyalarK `
>` a
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblGeneralApplicationRepository 5
:6 7
IGenericRepository8 J
<J K!
TblGeneralApplicationK `
>` a
{ 
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBankaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface &
ITblGeneralBankaRepository /
:0 1
IGenericRepository2 D
<D E
TblGeneralBankaE T
>T U
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBankaSubeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralBankaSubeRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralBankaSubeI \
>\ ]
{ 
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBelgeDurumlariRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface /
#ITblGeneralBelgeDurumlariRepository 8
:9 :
IGenericRepository; M
<M N$
TblGeneralBelgeDurumlariN f
>f g
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBnkBelgeDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralBnkBelgeDurumRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralBnkBelgeDurumM d
>d e
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBnkEftDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblGeneralBnkEftDurumRepository 5
:6 7
IGenericRepository8 J
<J K!
TblGeneralBnkEftDurumK `
>` a
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBnkHarDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblGeneralBnkHarDurumRepository 5
:6 7
IGenericRepository8 J
<J K!
TblGeneralBnkHarDurumK `
>` a
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBnkHarKynkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblGeneralBnkHarKynkRepository 4
:5 6
IGenericRepository7 I
<I J 
TblGeneralBnkHarKynkJ ^
>^ _
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralBnkHarTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralBnkHarTipRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralBnkHarTipI \
>\ ]
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralDilRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblGeneralDilRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
vC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralEEvrakDurumlariRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 0
$ITblGeneralEEvrakDurumlariRepository 9
:< =
IGenericRepository> P
<P Q%
TblGeneralEevrakDurumlariQ j
>j k
{ 
} 
} �
wC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralEFatMukellefMailRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 1
%ITblGeneralEFatMukellefMailRepository :
:= >
IGenericRepository? Q
<Q R&
TblGeneralEfatMukellefMailR l
>l m
{ 
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralEFatMukellefRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface -
!ITblGeneralEFatMukellefRepository 6
:7 8
IGenericRepository; M
<M N"
TblGeneralEfatMukellefN d
>d e
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralFavorilerRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralFavorilerRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralFavorilerI \
>\ ]
{ 
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralFirmaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface &
ITblGeneralFirmaRepository /
:0 1
IGenericRepository4 F
<F G
TblGeneralFirmaG V
>V W
{ 
} 
}		 �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralGondSekliRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralGondSekliRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralGondSekliI \
>\ ]
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralGrupKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralGrupKullaniciRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralGrupKullaniciM d
>d e
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralGunRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblGeneralGunRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIlceRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface %
ITblGeneralIlceRepository .
:/ 0
IGenericRepository1 C
<C D
TblGeneralIlceD R
>R S
{ 
} 
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIlRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface #
ITblGeneralIlRepository ,
:- .
IGenericRepository/ A
<A B
TblGeneralIlB N
>N O
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIntegrationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblGeneralIntegrationRepository 5
:6 7
IGenericRepository8 J
<J K!
TblGeneralIntegrationK `
>` a
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIslemBelgeTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralIslemBelgeTipRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralIslemBelgeTipM d
>d e
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIslemKilitRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblGeneralIslemKilitRepository 4
:5 6
IGenericRepository7 I
<I J 
TblGeneralIslemKilitJ ^
>^ _
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIslemSeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralIslemSeriRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralIslemSeriI \
>\ ]
{ 
} 
} �
yC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIslemSeriTanimlamaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 3
'ITblGeneralIslemSeriTanimlamaRepository <
:= >
IGenericRepository? Q
<Q R(
TblGeneralIslemSeriTanimlamaR n
>n o
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIslemTipiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralIslemTipiRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralIslemTipiI \
>\ ]
{ 
} 
} �
yC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIsletmeApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 3
'ITblGeneralIsletmeApplicationRepository <
:= >
IGenericRepository? Q
<Q R(
TblGeneralIsletmeApplicationR n
>n o
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralIsletmeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblGeneralIsletmeRepository 1
:3 4
IGenericRepository5 G
<G H
TblGeneralIsletmeH Y
>Y Z
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralKoyRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblGeneralKoyRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralKulGrupEkranRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface -
!ITblGeneralKulGrupEkranRepository 6
:8 9
IGenericRepository: L
<L M"
TblGeneralKulGrupEkranM c
>c d
{ 
} 
} �
vC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralKullaniciEkAlanRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 0
$ITblGeneralKullaniciEkAlanRepository 9
:: ;
IGenericRepository< N
<N O%
TblGeneralKullaniciEkAlanO h
>h i
{ 
} 
} �
yC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralKullaniciGrupTanimRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 3
'ITblGeneralKullaniciGrupTanimRepository <
:= >
IGenericRepository? Q
<Q R(
TblGeneralKullaniciGrupTanimR n
>n o
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralLidosDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblGeneralLidosDurumRepository 4
:5 6
IGenericRepository7 I
<I J 
TblGeneralLidosDurumJ ^
>^ _
{ 
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralLidosElusTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface -
!ITblGeneralLidosElusTipRepository 6
:7 8
IGenericRepository9 K
<K L"
TblGeneralLidosElusTipL b
>b c
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralLidosTalepTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralLidosTalepTipRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralLidosTalepTipM d
>d e
{ 
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralModulRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface &
ITblGeneralModulRepository /
:0 1
IGenericRepository2 D
<D E
TblGeneralModulE T
>T U
{ 
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralOdemeTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface )
ITblGeneralOdemeTipRepository 2
:3 4
IGenericRepository5 G
<G H
TblGeneralOdemeTipH Z
>Z [
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralOnayDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralOnayDurumRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralOnayDurumI \
>\ ]
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralParaBirimiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblGeneralParaBirimiRepository 4
:5 6
IGenericRepository7 I
<I J 
TblGeneralParaBirimiJ ^
>^ _
{ 
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface )
ITblGeneralRedDurumRepository 2
:3 4
IGenericRepository5 G
<G H
TblGeneralRedDurumH Z
>Z [
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedDurumYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralRedDurumYetkiRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralRedDurumYetkiM d
>d e
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedNedeniRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblGeneralRedNedeniRepository 3
:4 5
IGenericRepository6 H
<H I
TblGeneralRedNedeniI \
>\ ]
{ 
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedNedenYeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface -
!ITblGeneralRedNedenYeriRepository 6
:7 8
IGenericRepository9 K
<K L"
TblGeneralRedNedenYeriL b
>b c
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedNedenYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralRedNedenYetkiRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralRedNedenYetkiM d
>d e
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRedYeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblGeneralRedYeriRepository 1
:2 3
IGenericRepository4 F
<F G
TblGeneralRedYeriG X
>X Y
{ 
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRehberColumnsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralRehberColumnsRepository 7
:8 9
IGenericRepository: L
<L M"
TblGeneralRehberColumnM c
>c d
{ 
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRehberRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface '
ITblGeneralRehberRepository 0
:1 2
IGenericRepository3 E
<E F
TblGeneralRehberF V
>V W
{ 
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralRehberViewsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface ,
 ITblGeneralRehberViewsRepository 5
:5 6
IGenericRepository7 I
<I J 
TblGeneralRehberViewJ ^
>^ _
{ 
} 
}		 �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralSubeKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface .
"ITblGeneralSubeKullaniciRepository 7
:8 9
IGenericRepository: L
<L M#
TblGeneralSubeKullaniciM d
>d e
{ 
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralSubeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface %
ITblGeneralSubeRepository .
:/ 0
IGenericRepository1 C
<C D
TblGeneralSubeD R
>R S
{ 
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralUlkeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface %
ITblGeneralUlkeRepository .
:/ 0
IGenericRepository1 C
<C D
TblGeneralUlkeD R
>R S
{ 
} 
} �
vC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralUserApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface 0
$ITblGeneralUserApplicationRepository 9
:: ;
IGenericRepository< N
<N O%
TblGeneralUserApplicationO h
>h i
{ 
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralVergiDairesiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface -
!ITblGeneralVergiDairesiRepository 6
:7 8
IGenericRepository9 K
<K L"
TblGeneralVergiDairesiL b
>b c
{ 
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblGeneralVisitDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface +
ITblGeneralVisitDurumRepository 4
:5 6
IGenericRepository7 I
<I J 
TblGeneralVisitDurumJ ^
>^ _
{ 
} 
} �
gC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblOptionsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface !
ITblOptionsRepository *
:+ ,
IGenericRepository- ?
<? @
	TblOption@ I
>I J
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSocialFeedKisiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblSocialFeedKisiRepository 1
:4 5
IGenericRepository6 H
<H I
TblSocialFeedKisiI Z
>Z [
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSocialFeedLinkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblSocialFeedLinkRepository 1
:2 3
IGenericRepository4 F
<F G
TblSocialFeedLinkG X
>X Y
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSocialFeedRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblSocialFeedRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSocialFeedTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface '
ITblSocialFeedTipRepository 0
:1 2
IGenericRepository3 E
<E F
TblSocialFeedTipF V
>V W
{ 
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSocialLinkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface $
ITblSocialLinkRepository -
:. /
IGenericRepository0 B
<B C

>P Q
{ 
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSODavetDetayRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface '
ITblSSODavetDetayRepository 0
:1 2
IGenericRepository3 E
<E F
TblSsodavetDetayF V
>V W
{ 
} 
} �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSODavetRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface "
ITblSSODavetRepository +
:, -
IGenericRepository. @
<@ A
TblSsodavetA L
>L M
{ 
} 
} �
gC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOHostRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface !
ITblSSOHostRepository *
:+ ,
IGenericRepository- ?
<? @

TblSsohost@ J
>J K
{ 
} 
} �
gC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOIzinRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface !
ITblSSOIzinRepository *
:+ ,
IGenericRepository- ?
<? @

TblSsoizin@ J
>J K
{ 
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface &
ITblSSOKullaniciRepository /
:0 1
IGenericRepository2 D
<D E
TblSsokullaniciE T
>T U
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOKullaniciTipiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface *
ITblSSOKullaniciTipiRepository 3
:4 5
IGenericRepository6 H
<H I
TblSsokullaniciTipiI \
>\ ]
{ 
} 
} �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOTokenRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface "
ITblSSOTokenRepository +
:, -
IGenericRepository. @
<@ A
TblSsotokenA L
>L M
{ 
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Abstract\ITblSSOYonlendirmeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Abstract( 0
{ 
public 

	interface (
ITblSSOYonlendirmeRepository 1
:2 3
IGenericRepository4 F
<F G
TblSsoyonlendirmeG X
>X Y
{ 
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfDataProtectionKeysRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class *
EfDataProtectionKeysRepository /
:0 1
EfGenericRepository2 E
<E F
DataProtectionKeyF W
>W X
,X Y)
IDataProtectionKeysRepositoryZ w
{ 
public *
EfDataProtectionKeysRepository -
(- .
OctaPullContext. =
context> E
)E F
:G H
baseI M
(M N
contextN U
)U V
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblCMSAppMenuRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblCMSAppMenuRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
,P Q$
ITblCMSAppMenuRepositoryR j
{ 
public %
EfTblCMSAppMenuRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
} 	
} 
}
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblCMSAppNavigationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblCMSAppNavigationRepository 0
:1 2
EfGenericRepository3 F
<F G
TblCmsappNavigationG Z
>Z [
,\ ]*
ITblCMSAppNavigationRepository] {
{ 
public +
EfTblCMSAppNavigationRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblCMSNavYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class &
EfTblCMSNavYetkiRepository +
:, -
EfGenericRepository. A
<A B
TblCmsnavYetkiB P
>P Q
,R S%
ITblCMSNavYetkiRepositoryT m
{ 
public &
EfTblCMSNavYetkiRepository )
() *
OctaPullContext* 9
context: A
)A B
:C D
baseE I
(I J
contextJ Q
)Q R
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblCmsVersionRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblCmsVersionRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
{ 
public %
EfTblCmsVersionRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
wC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblDigiBIDatabaseDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 1
%EfTblDigiBIDatabaseDosyalarRepository 6
:7 8
EfGenericRepository9 L
<L M%
TblDigiBidatabaseDosyalarM f
>f g
{ 
public 1
%EfTblDigiBIDatabaseDosyalarRepository 4
(4 5
OctaPullContext5 D
contextE L
)L M
:N O
baseP T
(T U
contextU \
)\ ]
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblDigiBIDatabaselerRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblDigiBIDatabaselerRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblDigiBidatabaselerH \
>\ ]
{ 
public ,
 EfTblDigiBIDatabaselerRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblDigiBIDosyaSistemiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblDigiBIDosyaSistemiRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblDigiBidosyaSistemiI ^
>^ _
{ 
public -
!EfTblDigiBIDosyaSistemiRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblDigiBIFavoriDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblDigiBIFavoriDosyalarRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblDigiBifavoriDosyalarK b
>b c
{ 
public /
#EfTblDigiBIFavoriDosyalarRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblDigiBIPaylasimRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class )
EfTblDigiBIPaylasimRepository .
:/ 0
EfGenericRepository1 D
<D E
TblDigiBipaylasimE V
>V W
{ 
public )
EfTblDigiBIPaylasimRepository ,
(, -
OctaPullContext- <
context= D
)D E
:F G
baseH L
(L M
contextM T
)T U
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblFileDosyaSistemiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblFileDosyaSistemiRepository 0
:1 2
EfGenericRepository3 F
<F G
TblFileDosyaSistemiG Z
>Z [
,\ ]*
ITblFileDosyaSistemiRepository^ |
{ 
public +
EfTblFileDosyaSistemiRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblFileFavoriDosyalarRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblFileFavoriDosyalarRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblFileFavoriDosyalarI ^
>^ _
,` a-
 ITblFileFavoriDosyalarRepository	b �
{ 
public -
!EfTblFileFavoriDosyalarRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblGeneralApplicationRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblGeneralApplicationI ^
>^ _
,` a-
 ITblGeneralApplicationRepository	b �
{ 
public -
!EfTblGeneralApplicationRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBankaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class '
EfTblGeneralBankaRepository ,
:- .
EfGenericRepository/ B
<B C
TblGeneralBankaC R
>R S
,T U&
ITblGeneralBankaRepositoryV p
{ 
public '
EfTblGeneralBankaRepository *
(* +
OctaPullContext+ :
context; B
)B C
:D E
baseF J
(J K
contextK R
)R S
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBankaSubeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralBankaSubeRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralBankaSubeG Z
>Z [
,\ ]*
ITblGeneralBankaSubeRepository^ |
{ 
public +
EfTblGeneralBankaSubeRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
vC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBelgeDurumlariRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 0
$EfTblGeneralBelgeDurumlariRepository 5
:6 7
EfGenericRepository8 K
<K L$
TblGeneralBelgeDurumlariL d
>d e
,f g0
#ITblGeneralBelgeDurumlariRepository	h �
{ 
public 0
$EfTblGeneralBelgeDurumlariRepository 3
(3 4
OctaPullContext4 C
contextD K
)K L
:M N
baseO S
(S T
contextT [
)[ \
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBnkBelgeDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralBnkBelgeDurumRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralBnkBelgeDurumK b
>b c
,d e/
"ITblGeneralBnkBelgeDurumRepository	f �
{ 
public /
#EfTblGeneralBnkBelgeDurumRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBnkEftDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblGeneralBnkEftDurumRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblGeneralBnkEftDurumI ^
>^ _
,` a-
 ITblGeneralBnkEftDurumRepository	b �
{ 
public -
!EfTblGeneralBnkEftDurumRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBnkHarDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblGeneralBnkHarDurumRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblGeneralBnkHarDurumI ^
>^ _
,` a-
 ITblGeneralBnkHarDurumRepository	b �
{ 
public -
!EfTblGeneralBnkHarDurumRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBnkHarKynkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblGeneralBnkHarKynkRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblGeneralBnkHarKynkH \
>\ ]
,^ _+
ITblGeneralBnkHarKynkRepository` 
{ 
public ,
 EfTblGeneralBnkHarKynkRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralBnkHarTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralBnkHarTipRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralBnkHarTipG Z
>Z [
,\ ]*
ITblGeneralBnkHarTipRepository^ |
{ 
public +
EfTblGeneralBnkHarTipRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralDilRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblGeneralDilRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
,P Q$
ITblGeneralDilRepositoryR j
{ 
public %
EfTblGeneralDilRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
wC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralEEvrakDurumlariRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 1
%EfTblGeneralEEvrakDurumlariRepository 6
:7 8
EfGenericRepository9 L
<L M%
TblGeneralEevrakDurumlariM f
>f g
,h i1
$ITblGeneralEEvrakDurumlariRepository	j �
{ 
public 1
%EfTblGeneralEEvrakDurumlariRepository 4
(4 5
OctaPullContext5 D
contextE L
)L M
:N O
baseP T
(T U
contextU \
)\ ]
{		 	
}

 	
} 
} �
xC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralEFatMukellefMailRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 2
&EfTblGeneralEFatMukellefMailRepository 7
:8 9
EfGenericRepository: M
<M N&
TblGeneralEfatMukellefMailN h
>h i
,j k2
%ITblGeneralEFatMukellefMailRepository	l �
{ 
public 2
&EfTblGeneralEFatMukellefMailRepository 5
(5 6
OctaPullContext6 E
contextF M
)M N
:O P
baseQ U
(U V
contextV ]
)] ^
{		 	
}

 	
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralEFatMukellefRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class .
"EfTblGeneralEFatMukellefRepository 3
:4 5
EfGenericRepository6 I
<I J"
TblGeneralEfatMukellefJ `
>` a
,b c.
!ITblGeneralEFatMukellefRepository	d �
{ 
public .
"EfTblGeneralEFatMukellefRepository 1
(1 2
OctaPullContext2 A
contextB I
)I J
:K L
baseM Q
(Q R
contextR Y
)Y Z
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralFavorilerRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralFavorilerRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralFavorilerG Z
>Z [
,\ ]*
ITblGeneralFavorilerRepository^ |
{ 
public +
EfTblGeneralFavorilerRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralFirmaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class '
EfTblGeneralFirmaRepository ,
:- .
EfGenericRepository/ B
<B C
TblGeneralFirmaC R
>R S
,T U&
ITblGeneralFirmaRepositoryV p
{ 
public '
EfTblGeneralFirmaRepository *
(* +
OctaPullContext+ :
context; B
)B C
:D E
baseF J
(J K
contextK R
)R S
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralGondSekliRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralGondSekliRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralGondSekliG Z
>Z [
{ 
public +
EfTblGeneralGondSekliRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralGrupKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralGrupKullaniciRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralGrupKullaniciK b
>b c
{ 
public /
#EfTblGeneralGrupKullaniciRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralGunRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblGeneralGunRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
{ 
public %
EfTblGeneralGunRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIlceRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class &
EfTblGeneralIlceRepository +
:, -
EfGenericRepository. A
<A B
TblGeneralIlceB P
>P Q
,R S%
ITblGeneralIlceRepositoryT m
{ 
public &
EfTblGeneralIlceRepository )
() *
OctaPullContext* 9
context: A
)A B
:C D
baseE I
(I J
contextJ Q
)Q R
{		 	
}

 	
} 
} �
jC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIlRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class $
EfTblGeneralIlRepository )
:* +
EfGenericRepository, ?
<? @
TblGeneralIl@ L
>L M
,N O#
ITblGeneralIlRepositoryP g
{ 
public $
EfTblGeneralIlRepository '
(' (
OctaPullContext( 7
context8 ?
)? @
:A B
baseC G
(G H
contextH O
)O P
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIntegrationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblGeneralIntegrationRepository 2
:3 4
EfGenericRepository5 H
<H I!
TblGeneralIntegrationI ^
>^ _
{ 
public -
!EfTblGeneralIntegrationRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIslemBelgeTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralIslemBelgeTipRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralIslemBelgeTipK b
>b c
{ 
public /
#EfTblGeneralIslemBelgeTipRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIslemKilitRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblGeneralIslemKilitRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblGeneralIslemKilitH \
>\ ]
{ 
public ,
 EfTblGeneralIslemKilitRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIslemSeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralIslemSeriRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralIslemSeriG Z
>Z [
{ 
public +
EfTblGeneralIslemSeriRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
zC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIslemSeriTanimlamaRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 4
(EfTblGeneralIslemSeriTanimlamaRepository 9
:: ;
EfGenericRepository< O
<O P(
TblGeneralIslemSeriTanimlamaP l
>l m
{ 
public 4
(EfTblGeneralIslemSeriTanimlamaRepository 7
(7 8
OctaPullContext8 G
contextH O
)O P
:Q R
baseS W
(W X
contextX _
)_ `
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIslemTipiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralIslemTipiRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralIslemTipiG Z
>Z [
,\ ]*
ITblGeneralIslemTipiRepository^ |
{ 
public +
EfTblGeneralIslemTipiRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
zC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIsletmeApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 4
(EfTblGeneralIsletmeApplicationRepository 9
:: ;
EfGenericRepository< O
<O P(
TblGeneralIsletmeApplicationP l
>l m
{ 
public 4
(EfTblGeneralIsletmeApplicationRepository 7
(7 8
OctaPullContext8 G
contextH O
)O P
:Q R
baseS W
(W X
contextX _
)_ `
{		 	
}

 	
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralIsletmeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class )
EfTblGeneralIsletmeRepository .
:/ 0
EfGenericRepository1 D
<D E
TblGeneralIsletmeE V
>V W
,X Y(
ITblGeneralIsletmeRepositoryZ v
{ 
public )
EfTblGeneralIsletmeRepository ,
(, -
OctaPullContext- <
context= D
)D E
:F G
baseH L
(L M
contextM T
)T U
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralKoyRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblGeneralKoyRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
,P Q$
ITblGeneralKoyRepositoryR j
{ 
public %
EfTblGeneralKoyRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralKulGrupEkranRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class .
"EfTblGeneralKulGrupEkranRepository 3
:4 5
EfGenericRepository6 I
<I J"
TblGeneralKulGrupEkranJ `
>` a
{ 
public .
"EfTblGeneralKulGrupEkranRepository 1
(1 2
OctaPullContext2 A
contextB I
)I J
:K L
baseM Q
(Q R
contextR Y
)Y Z
{		 	
}

 	
} 
} �
wC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralKullaniciEkAlanRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 1
%EfTblGeneralKullaniciEkAlanRepository 6
:7 8
EfGenericRepository9 L
<L M%
TblGeneralKullaniciEkAlanM f
>f g
{ 
public 1
%EfTblGeneralKullaniciEkAlanRepository 4
(4 5
OctaPullContext5 D
contextE L
)L M
:N O
baseP T
(T U
contextU \
)\ ]
{		 	
}

 	
} 
} �
zC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralKullaniciGrupTanimRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 4
(EfTblGeneralKullaniciGrupTanimRepository 9
:: ;
EfGenericRepository< O
<O P(
TblGeneralKullaniciGrupTanimP l
>l m
{ 
public 4
(EfTblGeneralKullaniciGrupTanimRepository 7
(7 8
OctaPullContext8 G
contextH O
)O P
:Q R
baseS W
(W X
contextX _
)_ `
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralLidosDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblGeneralLidosDurumRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblGeneralLidosDurumH \
>\ ]
{ 
public ,
 EfTblGeneralLidosDurumRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralLidosElusTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class .
"EfTblGeneralLidosElusTipRepository 3
:4 5
EfGenericRepository6 I
<I J"
TblGeneralLidosElusTipJ `
>` a
{ 
public .
"EfTblGeneralLidosElusTipRepository 1
(1 2
OctaPullContext2 A
contextB I
)I J
:K L
baseM Q
(Q R
contextR Y
)Y Z
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralLidosTalepTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralLidosTalepTipRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralLidosTalepTipK b
>b c
{ 
public /
#EfTblGeneralLidosTalepTipRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralModulRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class '
EfTblGeneralModulRepository ,
:- .
EfGenericRepository/ B
<B C
TblGeneralModulC R
>R S
{ 
public '
EfTblGeneralModulRepository *
(* +
OctaPullContext+ :
context; B
)B C
:D E
baseF J
(J K
contextK R
)R S
{		 	
}

 	
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralOdemeTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class *
EfTblGeneralOdemeTipRepository /
:0 1
EfGenericRepository2 E
<E F
TblGeneralOdemeTipF X
>X Y
{ 
public *
EfTblGeneralOdemeTipRepository -
(- .
OctaPullContext. =
context> E
)E F
:G H
baseI M
(M N
contextN U
)U V
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralOnayDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralOnayDurumRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralOnayDurumG Z
>Z [
{ 
public +
EfTblGeneralOnayDurumRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralParaBirimiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblGeneralParaBirimiRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblGeneralParaBirimiH \
>\ ]
{ 
public ,
 EfTblGeneralParaBirimiRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
pC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class *
EfTblGeneralRedDurumRepository /
:0 1
EfGenericRepository2 E
<E F
TblGeneralRedDurumF X
>X Y
{ 
public *
EfTblGeneralRedDurumRepository -
(- .
OctaPullContext. =
context> E
)E F
:G H
baseI M
(M N
contextN U
)U V
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedDurumYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralRedDurumYetkiRepository 4
:5 6
EfGenericRepository7 J
<J K
TblGeneralRedDurumK ]
>] ^
{ 
public /
#EfTblGeneralRedDurumYetkiRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedNedeniRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblGeneralRedNedeniRepository 0
:1 2
EfGenericRepository3 F
<F G
TblGeneralRedNedeniG Z
>Z [
{ 
public +
EfTblGeneralRedNedeniRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedNedenYeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class .
"EfTblGeneralRedNedenYeriRepository 3
:4 5
EfGenericRepository6 I
<I J"
TblGeneralRedNedenYeriJ `
>` a
{ 
public .
"EfTblGeneralRedNedenYeriRepository 1
(1 2
OctaPullContext2 A
contextB I
)I J
:K L
baseM Q
(Q R
contextR Y
)Y Z
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedNedenYetkiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralRedNedenYetkiRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralRedNedenYetkiK b
>b c
{ 
public /
#EfTblGeneralRedNedenYetkiRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRedYeriRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class )
EfTblGeneralRedYeriRepository .
:/ 0
EfGenericRepository1 D
<D E
TblGeneralRedYeriE V
>V W
{ 
public )
EfTblGeneralRedYeriRepository ,
(, -
OctaPullContext- <
context= D
)D E
:F G
baseH L
(L M
contextM T
)T U
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRehberColumnsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralRehberColumnsRepository 4
:5 6
EfGenericRepository7 J
<J K"
TblGeneralRehberColumnK a
>a b
{ 
public /
#EfTblGeneralRehberColumnsRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRehberRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class (
EfTblGeneralRehberRepository -
:. /
EfGenericRepository0 C
<C D
TblGeneralRehberD T
>T U
{ 
public (
EfTblGeneralRehberRepository +
(+ ,
OctaPullContext, ;
context< C
)C D
:E F
baseG K
(K L
contextL S
)S T
{		 	
}

 	
} 
} �
sC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralRehberViewsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class -
!EfTblGeneralRehberViewsRepository 2
:3 4
EfGenericRepository5 H
<H I 
TblGeneralRehberViewI ]
>] ^
{ 
public -
!EfTblGeneralRehberViewsRepository 0
(0 1
OctaPullContext1 @
contextA H
)H I
:J K
baseL P
(P Q
contextQ X
)X Y
{		 	
}

 	
} 
} �
uC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralSubeKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class /
#EfTblGeneralSubeKullaniciRepository 4
:5 6
EfGenericRepository7 J
<J K#
TblGeneralSubeKullaniciK b
>b c
,d e/
"ITblGeneralSubeKullaniciRepository	f �
{ 
public /
#EfTblGeneralSubeKullaniciRepository 2
(2 3
OctaPullContext3 B
contextC J
)J K
:L M
baseN R
(R S
contextS Z
)Z [
{		 	
}

 	
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralSubeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class &
EfTblGeneralSubeRepository +
:, -
EfGenericRepository. A
<A B
TblGeneralSubeB P
>P Q
,R S%
ITblGeneralSubeRepositoryT m
{ 
public &
EfTblGeneralSubeRepository )
() *
OctaPullContext* 9
context: A
)A B
:C D
baseE I
(I J
contextJ Q
)Q R
{		 	
}

 	
} 
} �
lC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralUlkeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class &
EfTblGeneralUlkeRepository +
:, -
EfGenericRepository. A
<A B
TblGeneralUlkeB P
>P Q
,R S%
ITblGeneralUlkeRepositoryT m
{ 
public &
EfTblGeneralUlkeRepository )
() *
OctaPullContext* 9
context: A
)A B
:C D
baseE I
(I J
contextJ Q
)Q R
{		 	
}

 	
} 
} �
wC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralUserApplicationRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class 1
%EfTblGeneralUserApplicationRepository 6
:7 8
EfGenericRepository9 L
<L M%
TblGeneralUserApplicationM f
>f g
{ 
public 1
%EfTblGeneralUserApplicationRepository 4
(4 5
OctaPullContext5 D
contextE L
)L M
:N O
baseP T
(T U
contextU \
)\ ]
{		 	
}

 	
} 
} �
tC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralVergiDairesiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class .
"EfTblGeneralVergiDairesiRepository 3
:4 5
EfGenericRepository6 I
<I J"
TblGeneralVergiDairesiJ `
>` a
{ 
public .
"EfTblGeneralVergiDairesiRepository 1
(1 2
OctaPullContext2 A
contextB I
)I J
:K L
baseM Q
(Q R
contextR Y
)Y Z
{		 	
}

 	
} 
} �
rC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblGeneralVisitDurumRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class ,
 EfTblGeneralVisitDurumRepository 1
:2 3
EfGenericRepository4 G
<G H 
TblGeneralVisitDurumH \
>\ ]
{ 
public ,
 EfTblGeneralVisitDurumRepository /
(/ 0
OctaPullContext0 ?
context@ G
)G H
:I J
baseK O
(O P
contextP W
)W X
{		 	
}

 	
} 
} �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblOptionsRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class "
EfTblOptionsRepository '
:( )
EfGenericRepository* =
<= >
	TblOption> G
>G H
{ 
public "
EfTblOptionsRepository %
(% &
OctaPullContext& 5
context6 =
)= >
:? @
baseA E
(E F
contextF M
)M N
{		 	
}

 	
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSocialFeedLinkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class )
EfTblSocialFeedLinkRepository .
:/ 0
EfGenericRepository1 D
<D E
TblSocialFeedLinkE V
>V W
{ 
public )
EfTblSocialFeedLinkRepository ,
(, -
OctaPullContext- <
context= D
)D E
:F G
baseH L
(L M
contextM T
)T U
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSocialFeedRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblSocialFeedRepository *
:+ ,
EfGenericRepository- @
<@ A
TblSocialFeedKisiA R
>R S
{ 
public %
EfTblSocialFeedRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSocialFeedTipRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class (
EfTblSocialFeedTipRepository -
:. /
EfGenericRepository0 C
<C D
TblSocialFeedTipD T
>T U
{ 
public (
EfTblSocialFeedTipRepository +
(+ ,
OctaPullContext, ;
context< C
)C D
:E F
baseG K
(K L
contextL S
)S T
{		 	
}

 	
} 
} �
kC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSocialLinkRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class %
EfTblSocialLinkRepository *
:+ ,
EfGenericRepository- @
<@ A

>N O
{ 
public %
EfTblSocialLinkRepository (
(( )
OctaPullContext) 8
context9 @
)@ A
:B C
baseD H
(H I
contextI P
)P Q
{		 	
}

 	
} 
} �
nC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSODavetDetayRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class (
EfTblSSODavetDetayRepository -
:. /
EfGenericRepository0 C
<C D
TblSsodavetDetayD T
>T U
{ 
public (
EfTblSSODavetDetayRepository +
(+ ,
OctaPullContext, ;
context< C
)C D
:E F
baseG K
(K L
contextL S
)S T
{		 	
}

 	
} 
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSODavetRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class #
EfTblSSODavetRepository (
:) *
EfGenericRepository+ >
<> ?
TblSsodavet? J
>J K
{ 
public #
EfTblSSODavetRepository &
(& '
OctaPullContext' 6
context7 >
)> ?
:@ A
baseB F
(F G
contextG N
)N O
{		 	
}

 	
} 
} �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOHostRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class "
EfTblSSOHostRepository '
:( )
EfGenericRepository* =
<= >

TblSsohost> H
>H I
{ 
public "
EfTblSSOHostRepository %
(% &
OctaPullContext& 5
context6 =
)= >
:? @
baseA E
(E F
contextF M
)M N
{		 	
}

 	
} 
} �
hC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOIzinRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class "
EfTblSSOIzinRepository '
:( )
EfGenericRepository* =
<= >

TblSsoizin> H
>H I
{ 
public "
EfTblSSOIzinRepository %
(% &
OctaPullContext& 5
context6 =
)= >
:? @
baseA E
(E F
contextF M
)M N
{		 	
}

 	
} 
} �
mC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOKullaniciRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class '
EfTblSSOKullaniciRepository ,
:- .
EfGenericRepository/ B
<B C
TblSsokullaniciC R
>R S
,T U&
ITblSSOKullaniciRepositoryV p
{ 
public '
EfTblSSOKullaniciRepository *
(* +
OctaPullContext+ :
context; B
)B C
:D E
baseF J
(J K
contextK R
)R S
{		 	
}

 	
} 
} �
qC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOKullaniciTipiRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class +
EfTblSSOKullaniciTipiRepository 0
:1 2
EfGenericRepository3 F
<F G
TblSsokullaniciTipiG Z
>Z [
{ 
public +
EfTblSSOKullaniciTipiRepository .
(. /
OctaPullContext/ >
context? F
)F G
:H I
baseJ N
(N O
contextO V
)V W
{		 	
}

 	
} 
} �
iC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOTokenRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class #
EfTblSSOTokenRepository (
:) *
EfGenericRepository+ >
<> ?
TblSsotoken? J
>J K
{ 
public #
EfTblSSOTokenRepository &
(& '
OctaPullContext' 6
context7 >
)> ?
:@ A
baseB F
(F G
contextG N
)N O
{		 	
}

 	
} 
} �
oC:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\Concrete\EfTblSSOYonlendirmeRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
.' (
Concrete( 0
{ 
public 

class )
EfTblSSOYonlendirmeRepository .
:/ 0
EfGenericRepository1 D
<D E
TblSsoyonlendirmeE V
>V W
{ 
public )
EfTblSSOYonlendirmeRepository ,
(, -
OctaPullContext- <
context= D
)D E
:F G
baseH L
(L M
contextM T
)T U
{		 	
}

 	
} 
} �
\C:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\EfGenericRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
{ 
public 

class 
EfGenericRepository $
<$ %
TEntity% ,
>, -
:. /
IGenericRepository0 B
<B C
TEntityC J
>J K
whereL Q
TEntityR Y
:Z [
class\ a
{		 
private

 
readonly

 
OctaPullContext

 (
_context

) 1
;

1 2
public 
EfGenericRepository "
(" #
OctaPullContext# 2
context3 :
): ;
{ 	
_context
=
context
;
} 	
public 
void 
Create 
( 
TEntity "
entity# )
)) *
{ 	
_context 
. 
Add 
( 
entity 
)  
;  !
} 	
public 
void 
Delete 
( 
TEntity "
entity# )
)) *
{ 	
_context 
. 
Remove 
( 
entity "
)" #
;# $
} 	
public 
IEnumerable 
< 
TEntity "
>" #
GetAll$ *
(* +
)+ ,
{ 	
return 
_context 
. 
Set 
<  
TEntity  '
>' (
(( )
)) *
.* +
ToList+ 1
(1 2
)2 3
;3 4
} 	
public 
TEntity 
GetById 
( 
long #
id$ &
)& '
{   	
return!! 
_context!! 
.!! 
Set!! 
<!!  
TEntity!!  '
>!!' (
(!!( )
)!!) *
.!!* +
Find!!+ /
(!!/ 0
id!!0 2
)!!2 3
;!!3 4
}"" 	
public$$ 
void$$ 
Update$$ 
($$ 
TEntity$$ "
entity$$# )
)$$) *
{%% 	
_context&& 
.&& 
Update&& 
(&& 
entity&& "
)&&" #
;&&# $
}'' 	
public)) 
TEntity)) 
Where)) 
()) 

Expression)) '
<))' (
Func))( ,
<)), -
TEntity))- 4
,))4 5
bool))6 :
>)): ;
>)); <
	predicate))= F
)))F G
{** 	

IQueryable++ 
<++ 
TEntity++ 
>++ 
query++  %
=++& '
_context++( 0
.++0 1
Set++1 4
<++4 5
TEntity++5 <
>++< =
(++= >
)++> ?
;++? @
query,, 
=,, 
query,, 
.,, 
Where,, 
(,,  
	predicate,,  )
),,) *
;,,* +
return-- 
query-- 
.-- 
FirstOrDefault-- '
(--' (
)--( )
;--) *
}.. 	
}// 
}00 �	
[C:\Users\fatih\source\repos\CrudProject\CrudProject\GenericRepository\IGenericRepository.cs
	namespace 	
CrudProject
 
. 
GenericRepository '
{ 
public 

	interface 
IGenericRepository '
<' (
TEntity( /
>/ 0
{ 
void 
Create
( 
TEntity 
entity "
)" #
;# $
void 
Update
( 
TEntity 
entity "
)" #
;# $
void		 
Delete		
(		 
TEntity		 
entity		 "
)		" #
;		# $
TEntity

 
GetById

 
(

 
long

 
id

 
)

  
;

  !
IEnumerable 
< 
TEntity 
> 
GetAll #
(# $
)$ %
;% &
TEntity 
Where 
( 

Expression  
<  !
Func! %
<% &
TEntity& -
,- .
bool/ 3
>3 4
>4 5
	predicate6 ?
)? @
;@ A
} 
} �
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\DataProtectionKey.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
DataProtectionKey *
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
?		 
FriendlyName		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
string

 
?

 
Xml

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} �
LC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\ErrorViewModel.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 

=>" $
!% &
string& ,
., -

(: ;
	RequestId; D
)D E
;E F
} 
}		 ��
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\OctaPullContext.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public		 

partial		 
class		 
OctaPullContext		 (
:		) *
	DbContext		+ 4
{

 
public 
OctaPullContext 
( 
DbContextOptions /
</ 0
OctaPullContext0 ?
>? @
optionsA H
)H I
: 
base 
( 
options 
) 
{
} 	
public 
virtual 
DbSet 
< 
DataProtectionKey .
>. /
DataProtectionKeys0 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
nullS W
!W X
;X Y
public 
virtual 
DbSet 
< 

>* +
TblCmsVersions, :
{; <
get= @
;@ A
setB E
;E F
}G H
=I J
nullK O
!O P
;P Q
public 
virtual 
DbSet 
< 

>* +
TblCmsappMenus, :
{; <
get= @
;@ A
setB E
;E F
}G H
=I J
nullK O
!O P
;P Q
public 
virtual 
DbSet 
< 
TblCmsappNavigation 0
>0 1 
TblCmsappNavigations2 F
{G H
getI L
;L M
setN Q
;Q R
}S T
=U V
nullW [
![ \
;\ ]
public 
virtual 
DbSet 
< 
TblCmsnavYetki +
>+ ,
TblCmsnavYetkis- <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
nullM Q
!Q R
;R S
public 
virtual 
DbSet 
< %
TblDigiBidatabaseDosyalar 6
>6 7&
TblDigiBidatabaseDosyalars8 R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
nullc g
!g h
;h i
public 
virtual 
DbSet 
<  
TblDigiBidatabaseler 1
>1 2!
TblDigiBidatabaselers3 H
{I J
getK N
;N O
setP S
;S T
}U V
=W X
nullY ]
!] ^
;^ _
public 
virtual 
DbSet 
< !
TblDigiBidosyaSistemi 2
>2 3"
TblDigiBidosyaSistemis4 J
{K L
getM P
;P Q
setR U
;U V
}W X
=Y Z
null[ _
!_ `
;` a
public 
virtual 
DbSet 
< #
TblDigiBifavoriDosyalar 4
>4 5$
TblDigiBifavoriDosyalars6 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
null_ c
!c d
;d e
public 
virtual 
DbSet 
< 
TblDigiBipaylasim .
>. /
TblDigiBipaylasims0 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
nullS W
!W X
;X Y
public 
virtual 
DbSet 
< 
TblFileDosyaSistemi 0
>0 1 
TblFileDosyaSistemis2 F
{G H
getI L
;L M
setN Q
;Q R
}S T
=U V
nullW [
![ \
;\ ]
public 
virtual 
DbSet 
< !
TblFileFavoriDosyalar 2
>2 3"
TblFileFavoriDosyalars4 J
{K L
getM P
;P Q
setR U
;U V
}W X
=Y Z
null[ _
!_ `
;` a
public 
virtual 
DbSet 
< !
TblGeneralApplication 2
>2 3"
TblGeneralApplications4 J
{K L
getM P
;P Q
setR U
;U V
}W X
=Y Z
null[ _
!_ `
;` a
public 
virtual 
DbSet 
< 
TblGeneralBanka ,
>, -
TblGeneralBankas. >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
nullO S
!S T
;T U
public   
virtual   
DbSet   
<   
TblGeneralBankaSube   0
>  0 1 
TblGeneralBankaSubes  2 F
{  G H
get  I L
;  L M
set  N Q
;  Q R
}  S T
=  U V
null  W [
!  [ \
;  \ ]
public!! 
virtual!! 
DbSet!! 
<!! $
TblGeneralBelgeDurumlari!! 5
>!!5 6%
TblGeneralBelgeDurumlaris!!7 P
{!!Q R
get!!S V
;!!V W
set!!X [
;!![ \
}!!] ^
=!!_ `
null!!a e
!!!e f
;!!f g
public"" 
virtual"" 
DbSet"" 
<"" #
TblGeneralBnkBelgeDurum"" 4
>""4 5$
TblGeneralBnkBelgeDurums""6 N
{""O P
get""Q T
;""T U
set""V Y
;""Y Z
}""[ \
=""] ^
null""_ c
!""c d
;""d e
public## 
virtual## 
DbSet## 
<## !
TblGeneralBnkEftDurum## 2
>##2 3"
TblGeneralBnkEftDurums##4 J
{##K L
get##M P
;##P Q
set##R U
;##U V
}##W X
=##Y Z
null##[ _
!##_ `
;##` a
public$$ 
virtual$$ 
DbSet$$ 
<$$ !
TblGeneralBnkHarDurum$$ 2
>$$2 3"
TblGeneralBnkHarDurums$$4 J
{$$K L
get$$M P
;$$P Q
set$$R U
;$$U V
}$$W X
=$$Y Z
null$$[ _
!$$_ `
;$$` a
public%% 
virtual%% 
DbSet%% 
<%%  
TblGeneralBnkHarKynk%% 1
>%%1 2!
TblGeneralBnkHarKynks%%3 H
{%%I J
get%%K N
;%%N O
set%%P S
;%%S T
}%%U V
=%%W X
null%%Y ]
!%%] ^
;%%^ _
public&& 
virtual&& 
DbSet&& 
<&& 
TblGeneralBnkHarTip&& 0
>&&0 1 
TblGeneralBnkHarTips&&2 F
{&&G H
get&&I L
;&&L M
set&&N Q
;&&Q R
}&&S T
=&&U V
null&&W [
!&&[ \
;&&\ ]
public'' 
virtual'' 
DbSet'' 
<'' 

>''* +
TblGeneralDils'', :
{''; <
get''= @
;''@ A
set''B E
;''E F
}''G H
=''I J
null''K O
!''O P
;''P Q
public(( 
virtual(( 
DbSet(( 
<(( %
TblGeneralEevrakDurumlari(( 6
>((6 7&
TblGeneralEevrakDurumlaris((8 R
{((S T
get((U X
;((X Y
set((Z ]
;((] ^
}((_ `
=((a b
null((c g
!((g h
;((h i
public)) 
virtual)) 
DbSet)) 
<)) "
TblGeneralEfatMukellef)) 3
>))3 4#
TblGeneralEfatMukellefs))5 L
{))M N
get))O R
;))R S
set))T W
;))W X
}))Y Z
=))[ \
null))] a
!))a b
;))b c
public** 
virtual** 
DbSet** 
<** &
TblGeneralEfatMukellefMail** 7
>**7 8'
TblGeneralEfatMukellefMails**9 T
{**U V
get**W Z
;**Z [
set**\ _
;**_ `
}**a b
=**c d
null**e i
!**i j
;**j k
public++ 
virtual++ 
DbSet++ 
<++ 
TblGeneralFavoriler++ 0
>++0 1 
TblGeneralFavorilers++2 F
{++G H
get++I L
;++L M
set++N Q
;++Q R
}++S T
=++U V
null++W [
!++[ \
;++\ ]
public,, 
virtual,, 
DbSet,, 
<,, 
TblGeneralFirma,, ,
>,,, -
TblGeneralFirmas,,. >
{,,? @
get,,A D
;,,D E
set,,F I
;,,I J
},,K L
=,,M N
null,,O S
!,,S T
;,,T U
public-- 
virtual-- 
DbSet-- 
<-- 
TblGeneralGondSekli-- 0
>--0 1 
TblGeneralGondSeklis--2 F
{--G H
get--I L
;--L M
set--N Q
;--Q R
}--S T
=--U V
null--W [
!--[ \
;--\ ]
public.. 
virtual.. 
DbSet.. 
<.. #
TblGeneralGrupKullanici.. 4
>..4 5$
TblGeneralGrupKullanicis..6 N
{..O P
get..Q T
;..T U
set..V Y
;..Y Z
}..[ \
=..] ^
null.._ c
!..c d
;..d e
public// 
virtual// 
DbSet// 
<// 

>//* +
TblGeneralGuns//, :
{//; <
get//= @
;//@ A
set//B E
;//E F
}//G H
=//I J
null//K O
!//O P
;//P Q
public00 
virtual00 
DbSet00 
<00 
TblGeneralIl00 )
>00) *

{009 :
get00; >
;00> ?
set00@ C
;00C D
}00E F
=00G H
null00I M
!00M N
;00N O
public11 
virtual11 
DbSet11 
<11 
TblGeneralIlce11 +
>11+ ,
TblGeneralIlces11- <
{11= >
get11? B
;11B C
set11D G
;11G H
}11I J
=11K L
null11M Q
!11Q R
;11R S
public22 
virtual22 
DbSet22 
<22 !
TblGeneralIntegration22 2
>222 3"
TblGeneralIntegrations224 J
{22K L
get22M P
;22P Q
set22R U
;22U V
}22W X
=22Y Z
null22[ _
!22_ `
;22` a
public33 
virtual33 
DbSet33 
<33 #
TblGeneralIslemBelgeTip33 4
>334 5$
TblGeneralIslemBelgeTips336 N
{33O P
get33Q T
;33T U
set33V Y
;33Y Z
}33[ \
=33] ^
null33_ c
!33c d
;33d e
public44 
virtual44 
DbSet44 
<44  
TblGeneralIslemKilit44 1
>441 2!
TblGeneralIslemKilits443 H
{44I J
get44K N
;44N O
set44P S
;44S T
}44U V
=44W X
null44Y ]
!44] ^
;44^ _
public55 
virtual55 
DbSet55 
<55 
TblGeneralIslemSeri55 0
>550 1 
TblGeneralIslemSeris552 F
{55G H
get55I L
;55L M
set55N Q
;55Q R
}55S T
=55U V
null55W [
!55[ \
;55\ ]
public66 
virtual66 
DbSet66 
<66 (
TblGeneralIslemSeriTanimlama66 9
>669 :)
TblGeneralIslemSeriTanimlamas66; X
{66Y Z
get66[ ^
;66^ _
set66` c
;66c d
}66e f
=66g h
null66i m
!66m n
;66n o
public77 
virtual77 
DbSet77 
<77 
TblGeneralIslemTipi77 0
>770 1 
TblGeneralIslemTipis772 F
{77G H
get77I L
;77L M
set77N Q
;77Q R
}77S T
=77U V
null77W [
!77[ \
;77\ ]
public88 
virtual88 
DbSet88 
<88 
TblGeneralIsletme88 .
>88. /
TblGeneralIsletmes880 B
{88C D
get88E H
;88H I
set88J M
;88M N
}88O P
=88Q R
null88S W
!88W X
;88X Y
public99 
virtual99 
DbSet99 
<99 (
TblGeneralIsletmeApplication99 9
>999 :)
TblGeneralIsletmeApplications99; X
{99Y Z
get99[ ^
;99^ _
set99` c
;99c d
}99e f
=99g h
null99i m
!99m n
;99n o
public:: 
virtual:: 
DbSet:: 
<:: 

>::* +
TblGeneralKoys::, :
{::; <
get::= @
;::@ A
set::B E
;::E F
}::G H
=::I J
null::K O
!::O P
;::P Q
public;; 
virtual;; 
DbSet;; 
<;; "
TblGeneralKulGrupEkran;; 3
>;;3 4#
TblGeneralKulGrupEkrans;;5 L
{;;M N
get;;O R
;;;R S
set;;T W
;;;W X
};;Y Z
=;;[ \
null;;] a
!;;a b
;;;b c
public<< 
virtual<< 
DbSet<< 
<<< %
TblGeneralKullaniciEkAlan<< 6
><<6 7&
TblGeneralKullaniciEkAlans<<8 R
{<<S T
get<<U X
;<<X Y
set<<Z ]
;<<] ^
}<<_ `
=<<a b
null<<c g
!<<g h
;<<h i
public== 
virtual== 
DbSet== 
<== (
TblGeneralKullaniciGrupTanim== 9
>==9 :)
TblGeneralKullaniciGrupTanims==; X
{==Y Z
get==[ ^
;==^ _
set==` c
;==c d
}==e f
===g h
null==i m
!==m n
;==n o
public>> 
virtual>> 
DbSet>> 
<>>  
TblGeneralLidosDurum>> 1
>>>1 2!
TblGeneralLidosDurums>>3 H
{>>I J
get>>K N
;>>N O
set>>P S
;>>S T
}>>U V
=>>W X
null>>Y ]
!>>] ^
;>>^ _
public?? 
virtual?? 
DbSet?? 
<?? "
TblGeneralLidosElusTip?? 3
>??3 4#
TblGeneralLidosElusTips??5 L
{??M N
get??O R
;??R S
set??T W
;??W X
}??Y Z
=??[ \
null??] a
!??a b
;??b c
public@@ 
virtual@@ 
DbSet@@ 
<@@ #
TblGeneralLidosTalepTip@@ 4
>@@4 5$
TblGeneralLidosTalepTips@@6 N
{@@O P
get@@Q T
;@@T U
set@@V Y
;@@Y Z
}@@[ \
=@@] ^
null@@_ c
!@@c d
;@@d e
publicAA 
virtualAA 
DbSetAA 
<AA 
TblGeneralModulAA ,
>AA, -
TblGeneralModulsAA. >
{AA? @
getAAA D
;AAD E
setAAF I
;AAI J
}AAK L
=AAM N
nullAAO S
!AAS T
;AAT U
publicBB 
virtualBB 
DbSetBB 
<BB 
TblGeneralOdemeTipBB /
>BB/ 0
TblGeneralOdemeTipsBB1 D
{BBE F
getBBG J
;BBJ K
setBBL O
;BBO P
}BBQ R
=BBS T
nullBBU Y
!BBY Z
;BBZ [
publicCC 
virtualCC 
DbSetCC 
<CC 
TblGeneralOnayDurumCC 0
>CC0 1 
TblGeneralOnayDurumsCC2 F
{CCG H
getCCI L
;CCL M
setCCN Q
;CCQ R
}CCS T
=CCU V
nullCCW [
!CC[ \
;CC\ ]
publicDD 
virtualDD 
DbSetDD 
<DD  
TblGeneralParaBirimiDD 1
>DD1 2!
TblGeneralParaBirimisDD3 H
{DDI J
getDDK N
;DDN O
setDDP S
;DDS T
}DDU V
=DDW X
nullDDY ]
!DD] ^
;DD^ _
publicEE 
virtualEE 
DbSetEE 
<EE 
TblGeneralRedDurumEE /
>EE/ 0
TblGeneralRedDurumsEE1 D
{EEE F
getEEG J
;EEJ K
setEEL O
;EEO P
}EEQ R
=EES T
nullEEU Y
!EEY Z
;EEZ [
publicFF 
virtualFF 
DbSetFF 
<FF #
TblGeneralRedDurumYetkiFF 4
>FF4 5$
TblGeneralRedDurumYetkisFF6 N
{FFO P
getFFQ T
;FFT U
setFFV Y
;FFY Z
}FF[ \
=FF] ^
nullFF_ c
!FFc d
;FFd e
publicGG 
virtualGG 
DbSetGG 
<GG "
TblGeneralRedNedenYeriGG 3
>GG3 4#
TblGeneralRedNedenYerisGG5 L
{GGM N
getGGO R
;GGR S
setGGT W
;GGW X
}GGY Z
=GG[ \
nullGG] a
!GGa b
;GGb c
publicHH 
virtualHH 
DbSetHH 
<HH #
TblGeneralRedNedenYetkiHH 4
>HH4 5$
TblGeneralRedNedenYetkisHH6 N
{HHO P
getHHQ T
;HHT U
setHHV Y
;HHY Z
}HH[ \
=HH] ^
nullHH_ c
!HHc d
;HHd e
publicII 
virtualII 
DbSetII 
<II 
TblGeneralRedNedeniII 0
>II0 1 
TblGeneralRedNedenisII2 F
{IIG H
getIII L
;IIL M
setIIN Q
;IIQ R
}IIS T
=IIU V
nullIIW [
!II[ \
;II\ ]
publicJJ 
virtualJJ 
DbSetJJ 
<JJ 
TblGeneralRedYeriJJ .
>JJ. /
TblGeneralRedYerisJJ0 B
{JJC D
getJJE H
;JJH I
setJJJ M
;JJM N
}JJO P
=JJQ R
nullJJS W
!JJW X
;JJX Y
publicKK 
virtualKK 
DbSetKK 
<KK 
TblGeneralRehberKK -
>KK- .
TblGeneralRehbersKK/ @
{KKA B
getKKC F
;KKF G
setKKH K
;KKK L
}KKM N
=KKO P
nullKKQ U
!KKU V
;KKV W
publicLL 
virtualLL 
DbSetLL 
<LL "
TblGeneralRehberColumnLL 3
>LL3 4#
TblGeneralRehberColumnsLL5 L
{LLM N
getLLO R
;LLR S
setLLT W
;LLW X
}LLY Z
=LL[ \
nullLL] a
!LLa b
;LLb c
publicMM 
virtualMM 
DbSetMM 
<MM  
TblGeneralRehberViewMM 1
>MM1 2!
TblGeneralRehberViewsMM3 H
{MMI J
getMMK N
;MMN O
setMMP S
;MMS T
}MMU V
=MMW X
nullMMY ]
!MM] ^
;MM^ _
publicNN 
virtualNN 
DbSetNN 
<NN 
TblGeneralSubeNN +
>NN+ ,
TblGeneralSubesNN- <
{NN= >
getNN? B
;NNB C
setNND G
;NNG H
}NNI J
=NNK L
nullNNM Q
!NNQ R
;NNR S
publicOO 
virtualOO 
DbSetOO 
<OO #
TblGeneralSubeKullaniciOO 4
>OO4 5$
TblGeneralSubeKullanicisOO6 N
{OOO P
getOOQ T
;OOT U
setOOV Y
;OOY Z
}OO[ \
=OO] ^
nullOO_ c
!OOc d
;OOd e
publicPP 
virtualPP 
DbSetPP 
<PP 
TblGeneralUlkePP +
>PP+ ,
TblGeneralUlkesPP- <
{PP= >
getPP? B
;PPB C
setPPD G
;PPG H
}PPI J
=PPK L
nullPPM Q
!PPQ R
;PPR S
publicQQ 
virtualQQ 
DbSetQQ 
<QQ %
TblGeneralUserApplicationQQ 6
>QQ6 7&
TblGeneralUserApplicationsQQ8 R
{QQS T
getQQU X
;QQX Y
setQQZ ]
;QQ] ^
}QQ_ `
=QQa b
nullQQc g
!QQg h
;QQh i
publicRR 
virtualRR 
DbSetRR 
<RR "
TblGeneralVergiDairesiRR 3
>RR3 4#
TblGeneralVergiDairesisRR5 L
{RRM N
getRRO R
;RRR S
setRRT W
;RRW X
}RRY Z
=RR[ \
nullRR] a
!RRa b
;RRb c
publicSS 
virtualSS 
DbSetSS 
<SS  
TblGeneralVisitDurumSS 1
>SS1 2!
TblGeneralVisitDurumsSS3 H
{SSI J
getSSK N
;SSN O
setSSP S
;SSS T
}SSU V
=SSW X
nullSSY ]
!SS] ^
;SS^ _
publicTT 
virtualTT 
DbSetTT 
<TT 
	TblOptionTT &
>TT& '

TblOptionsTT( 2
{TT3 4
getTT5 8
;TT8 9
setTT: =
;TT= >
}TT? @
=TTA B
nullTTC G
!TTG H
;TTH I
publicUU 
virtualUU 
DbSetUU 
<UU 

>UU* +
TblSocialFeedsUU, :
{UU; <
getUU= @
;UU@ A
setUUB E
;UUE F
}UUG H
=UUI J
nullUUK O
!UUO P
;UUP Q
publicVV 
virtualVV 
DbSetVV 
<VV 
TblSocialFeedKisiVV .
>VV. /
TblSocialFeedKisisVV0 B
{VVC D
getVVE H
;VVH I
setVVJ M
;VVM N
}VVO P
=VVQ R
nullVVS W
!VVW X
;VVX Y
publicWW 
virtualWW 
DbSetWW 
<WW 
TblSocialFeedLinkWW .
>WW. /
TblSocialFeedLinksWW0 B
{WWC D
getWWE H
;WWH I
setWWJ M
;WWM N
}WWO P
=WWQ R
nullWWS W
!WWW X
;WWX Y
publicXX 
virtualXX 
DbSetXX 
<XX 
TblSocialFeedTipXX -
>XX- .
TblSocialFeedTipsXX/ @
{XXA B
getXXC F
;XXF G
setXXH K
;XXK L
}XXM N
=XXO P
nullXXQ U
!XXU V
;XXV W
publicYY 
virtualYY 
DbSetYY 
<YY 

>YY* +
TblSocialLinksYY, :
{YY; <
getYY= @
;YY@ A
setYYB E
;YYE F
}YYG H
=YYI J
nullYYK O
!YYO P
;YYP Q
publicZZ 
virtualZZ 
DbSetZZ 
<ZZ 
TblSsodavetZZ (
>ZZ( )
TblSsodavetsZZ* 6
{ZZ7 8
getZZ9 <
;ZZ< =
setZZ> A
;ZZA B
}ZZC D
=ZZE F
nullZZG K
!ZZK L
;ZZL M
public[[ 
virtual[[ 
DbSet[[ 
<[[ 
TblSsodavetDetay[[ -
>[[- .
TblSsodavetDetays[[/ @
{[[A B
get[[C F
;[[F G
set[[H K
;[[K L
}[[M N
=[[O P
null[[Q U
![[U V
;[[V W
public\\ 
virtual\\ 
DbSet\\ 
<\\ 

TblSsohost\\ '
>\\' (
TblSsohosts\\) 4
{\\5 6
get\\7 :
;\\: ;
set\\< ?
;\\? @
}\\A B
=\\C D
null\\E I
!\\I J
;\\J K
public]] 
virtual]] 
DbSet]] 
<]] 

TblSsoizin]] '
>]]' (
TblSsoizins]]) 4
{]]5 6
get]]7 :
;]]: ;
set]]< ?
;]]? @
}]]A B
=]]C D
null]]E I
!]]I J
;]]J K
public^^ 
virtual^^ 
DbSet^^ 
<^^ 
TblSsokullanici^^ ,
>^^, -
TblSsokullanicis^^. >
{^^? @
get^^A D
;^^D E
set^^F I
;^^I J
}^^K L
=^^M N
null^^O S
!^^S T
;^^T U
public__ 
virtual__ 
DbSet__ 
<__ 
TblSsokullaniciTipi__ 0
>__0 1 
TblSsokullaniciTipis__2 F
{__G H
get__I L
;__L M
set__N Q
;__Q R
}__S T
=__U V
null__W [
!__[ \
;__\ ]
public`` 
virtual`` 
DbSet`` 
<`` 
TblSsotoken`` (
>``( )
TblSsotokens``* 6
{``7 8
get``9 <
;``< =
set``> A
;``A B
}``C D
=``E F
null``G K
!``K L
;``L M
publicaa 
virtualaa 
DbSetaa 
<aa 
TblSsoyonlendirmeaa .
>aa. /
TblSsoyonlendirmesaa0 B
{aaC D
getaaE H
;aaH I
setaaJ M
;aaM N
}aaO P
=aaQ R
nullaaS W
!aaW X
;aaX Y
publicbb 
virtualbb 
DbSetbb 
<bb 
	VwAlpatumbb &
>bb& '
VwAlpatabb( 0
{bb1 2
getbb3 6
;bb6 7
setbb8 ;
;bb; <
}bb= >
=bb? @
nullbbA E
!bbE F
;bbF G
publiccc 
virtualcc 
DbSetcc 
<cc 
	VwAppMenucc &
>cc& '

VwAppMenuscc( 2
{cc3 4
getcc5 8
;cc8 9
setcc: =
;cc= >
}cc? @
=ccA B
nullccC G
!ccG H
;ccH I
publicdd 
virtualdd 
DbSetdd 
<dd 
VwFavorilerInfodd ,
>dd, -
VwFavorilerInfosdd. >
{dd? @
getddA D
;ddD E
setddF I
;ddI J
}ddK L
=ddM N
nullddO S
!ddS T
;ddT U
publicee 
virtualee 
DbSetee 
<ee 
VwFeedee #
>ee# $
VwFeedsee% ,
{ee- .
getee/ 2
;ee2 3
setee4 7
;ee7 8
}ee9 :
=ee; <
nullee= A
!eeA B
;eeB C
publicff 
virtualff 
DbSetff 
<ff 
VwGeneralFirmInfoff .
>ff. /
VwGeneralFirmInfosff0 B
{ffC D
getffE H
;ffH I
setffJ M
;ffM N
}ffO P
=ffQ R
nullffS W
!ffW X
;ffX Y
publicgg 
virtualgg 
DbSetgg 
<gg "
VwGeneralGrupKullanicigg 3
>gg3 4#
VwGeneralGrupKullanicisgg5 L
{ggM N
getggO R
;ggR S
setggT W
;ggW X
}ggY Z
=gg[ \
nullgg] a
!gga b
;ggb c
publichh 
virtualhh 
DbSethh 
<hh &
VwGeneralGrupKullaniciInfohh 7
>hh7 8'
VwGeneralGrupKullaniciInfoshh9 T
{hhU V
gethhW Z
;hhZ [
sethh\ _
;hh_ `
}hha b
=hhc d
nullhhe i
!hhi j
;hhj k
publicii 
virtualii 
DbSetii 
<ii +
VwGeneralIsletmeApplicationInfoii <
>ii< =,
 VwGeneralIsletmeApplicationInfosii> ^
{ii_ `
getiia d
;iid e
setiif i
;iii j
}iik l
=iim n
nulliio s
!iis t
;iit u
publicjj 
virtualjj 
DbSetjj 
<jj  
VwGeneralIsletmeInfojj 1
>jj1 2!
VwGeneralIsletmeInfosjj3 H
{jjI J
getjjK N
;jjN O
setjjP S
;jjS T
}jjU V
=jjW X
nulljjY ]
!jj] ^
;jj^ _
publickk 
virtualkk 
DbSetkk 
<kk "
VwGeneralPasifKulanicikk 3
>kk3 4#
VwGeneralPasifKulaniciskk5 L
{kkM N
getkkO R
;kkR S
setkkT W
;kkW X
}kkY Z
=kk[ \
nullkk] a
!kka b
;kkb c
publicll 
virtualll 
DbSetll 
<ll '
VwGeneralRedDurumYetkiGenelll 8
>ll8 9(
VwGeneralRedDurumYetkiGenelsll: V
{llW X
getllY \
;ll\ ]
setll^ a
;lla b
}llc d
=lle f
nullllg k
!llk l
;lll m
publicmm 
virtualmm 
DbSetmm 
<mm %
VwGeneralRedNedenYeriInfomm 6
>mm6 7&
VwGeneralRedNedenYeriInfosmm8 R
{mmS T
getmmU X
;mmX Y
setmmZ ]
;mm] ^
}mm_ `
=mma b
nullmmc g
!mmg h
;mmh i
publicnn 
virtualnn 
DbSetnn 
<nn +
VwGeneralRedNedenYetkiDurumInfonn <
>nn< =,
 VwGeneralRedNedenYetkiDurumInfosnn> ^
{nn_ `
getnna d
;nnd e
setnnf i
;nni j
}nnk l
=nnm n
nullnno s
!nns t
;nnt u
publicoo 
virtualoo 
DbSetoo 
<oo &
VwGeneralRedNedenYetkiInfooo 7
>oo7 8'
VwGeneralRedNedenYetkiInfosoo9 T
{ooU V
getooW Z
;ooZ [
setoo\ _
;oo_ `
}ooa b
=ooc d
nullooe i
!ooi j
;ooj k
publicpp 
virtualpp 
DbSetpp 
<pp #
VwGeneralRedNedeniGenelpp 4
>pp4 5$
VwGeneralRedNedeniGenelspp6 N
{ppO P
getppQ T
;ppT U
setppV Y
;ppY Z
}pp[ \
=pp] ^
nullpp_ c
!ppc d
;ppd e
publicqq 
virtualqq 
DbSetqq 
<qq $
VwGeneralSubUrlFullYetkiqq 5
>qq5 6%
VwGeneralSubUrlFullYetkisqq7 P
{qqQ R
getqqS V
;qqV W
setqqX [
;qq[ \
}qq] ^
=qq_ `
nullqqa e
!qqe f
;qqf g
publicrr 
virtualrr 
DbSetrr 
<rr  
VwGeneralSubUrlYetkirr 1
>rr1 2!
VwGeneralSubUrlYetkisrr3 H
{rrI J
getrrK N
;rrN O
setrrP S
;rrS T
}rrU V
=rrW X
nullrrY ]
!rr] ^
;rr^ _
publicss 
virtualss 
DbSetss 
<ss 
VwGeneralSubeInfoss .
>ss. /
VwGeneralSubeInfosss0 B
{ssC D
getssE H
;ssH I
setssJ M
;ssM N
}ssO P
=ssQ R
nullssS W
!ssW X
;ssX Y
publictt 
virtualtt 
DbSettt 
<tt  
VwGeneralSubeKulInfott 1
>tt1 2!
VwGeneralSubeKulInfostt3 H
{ttI J
getttK N
;ttN O
setttP S
;ttS T
}ttU V
=ttW X
nullttY ]
!tt] ^
;tt^ _
publicuu 
virtualuu 
DbSetuu 
<uu  
VwIsletmeApplicationuu 1
>uu1 2!
VwIsletmeApplicationsuu3 H
{uuI J
getuuK N
;uuN O
setuuP S
;uuS T
}uuU V
=uuW X
nulluuY ]
!uu] ^
;uu^ _
publicvv 
virtualvv 
DbSetvv 
<vv 
VwKullaniciEkAlanvv .
>vv. /
VwKullaniciEkAlansvv0 B
{vvC D
getvvE H
;vvH I
setvvJ M
;vvM N
}vvO P
=vvQ R
nullvvS W
!vvW X
;vvX Y
publicww 
virtualww 
DbSetww 
<ww 
VwSubeKullaniciww ,
>ww, -
VwSubeKullanicisww. >
{ww? @
getwwA D
;wwD E
setwwF I
;wwI J
}wwK L
=wwM N
nullwwO S
!wwS T
;wwT U
publicxx 
virtualxx 
DbSetxx 
<xx 
VwUserApplicationxx .
>xx. /
VwUserApplicationsxx0 B
{xxC D
getxxE H
;xxH I
setxxJ M
;xxM N
}xxO P
=xxQ R
nullxxS W
!xxW X
;xxX Y
	protectedzz 
overridezz 
voidzz 

(zz- .#
DbContextOptionsBuilderzz. E
optionsBuilderzzF T
)zzT U
{{{ 	
if|| 
(|| 
!|| 
optionsBuilder|| 
.||  
IsConfigured||  ,
)||, -
{}} 
optionsBuilder~~ 
.~~ 
UseSqlServer~~ +
(~~+ ,
$str	~~, �
)
~~� �
;
~~� �
} 
}
�� 	
	protected
�� 
override
�� 
void
�� 
OnModelCreating
��  /
(
��/ 0
ModelBuilder
��0 <
modelBuilder
��= I
)
��I J
{
�� 	
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

��  -
>
��- .
(
��. /
entity
��/ 5
=>
��6 8
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� .
)
��. /
;
��/ 0
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Link
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Version
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblCmsappNavigation
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Description
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Name
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SubUrl
��' -
)
��- .
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblCmsnavYetki
��  .
>
��. /
(
��/ 0
entity
��0 6
=>
��7 9
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  '
TblDigiBidatabaseDosyalar
��  9
>
��9 :
(
��: ;
entity
��; A
=>
��B D
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- P
)
��P Q
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblDigiBidatabaseler
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- K
)
��K L
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U y
)
��y z
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BaglantiAdi
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblDigiBidatabaselers
��% :
)
��: ;
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblDigiBidatabaselers
��% :
)
��: ;
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblDigiBidatabaselers
��% :
)
��: ;
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' P
)
��P Q
;
��Q R
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblDigiBidosyaSistemi
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U z
)
��z {
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblDigiBidosyaSistemis
��% ;
)
��; <
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblDigiBidosyaSistemis
��% ;
)
��; <
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' P
)
��P Q
;
��Q R
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblDigiBidosyaSistemis
��% ;
)
��; <
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblDigiBifavoriDosyalar
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- N
)
��N O
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U |
)
��| }
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblDigiBifavoriDosyalars
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblDigiBifavoriDosyalars
��% =
)
��= >
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblDigiBifavoriDosyalars
��% =
)
��= >
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblDigiBipaylasim
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- H
)
��H I
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U v
)
��v w
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblDigiBipaylasims
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblDigiBipaylasims
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblDigiBipaylasims
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblFileDosyaSistemi
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -

UstDosyaId
��- 7
,
��7 8
e
��9 :
.
��: ;
Aciklama
��; C
}
��D E
,
��E F
$str
��G h
)
��h i
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U x
)
��x y
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Modul
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblFileDosyaSistemis
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Olusturan
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblFileDosyaSistemis
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
OlusturanId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
UstDosya
��% -
)
��- .
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
InverseUstDosya
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

UstDosyaId
��* 4
)
��4 5
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblFileDosyaSistemis
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' N
)
��N O
;
��O P
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblFileDosyaSistemis
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblFileFavoriDosyalar
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
DosyaId
��- 4
,
��4 5
e
��6 7
.
��7 8
UserId
��8 >
}
��? @
,
��@ A
$str
��B g
)
��g h
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Dosya
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblFileFavoriDosyalars
��% ;
)
��; <
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
DosyaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblFileFavoriDosyalars
��% ;
)
��; <
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
User
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblFileFavoriDosyalars
��% ;
)
��; <
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
UserId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblFileFavoriDosyalars
��% ;
)
��; <
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' P
)
��P Q
;
��Q R
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %$
TblFileFavoriDosyalars
��% ;
)
��; <
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblGeneralApplication
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Application
��' 2
,
��2 3
$str
��4 R
)
��R S
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Sira
��' +
,
��+ ,
$str
��- L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Application
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BaseApiOnEk
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BaseUrl
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Description
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IconHtml
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ParametreAktif
��' 5
)
��5 6
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Path
��' +
)
��+ ,
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralBanka
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- F
)
��F G
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kodu
��' +
,
��+ ,
$str
��- F
)
��F G
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Erpkodu
��' .
)
��. /
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 

�� "
(
��" #
$str
��# ,
)
��, -
;
��- .
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	GenelKodu
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kodu
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralBankaSube
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
BankaId
��- 4
,
��4 5
e
��6 7
.
��7 8
Id
��8 :
}
��; <
,
��< =
$str
��> _
)
��_ `
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kodu
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Erpkodu
��' .
)
��. /
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 

�� "
(
��" #
$str
��# ,
)
��, -
;
��- .
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Faks
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	GenelKodu
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kodu
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Telefon
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Banka
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralBankaSubes
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
BankaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Il
��% '
)
��' (
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralBankaSubes
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IlId
��* .
)
��. /
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
IlNavigation
��% 1
)
��1 2
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralBankaSubes
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
Id
��2 4
,
��4 5
p
��6 7
.
��7 8
IlId
��8 <
}
��= >
)
��> ?
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
IlceId
��0 6
,
��6 7
d
��8 9
.
��9 :
IlId
��: >
}
��? @
)
��@ A
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' N
)
��N O
;
��O P
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  &
TblGeneralBelgeDurumlari
��  8
>
��8 9
(
��9 :
entity
��: @
=>
��A C
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
DurumId
��- 4
,
��4 5
e
��6 7
.
��7 8
IslemTip
��8 @
}
��A B
,
��B C
$str
��D m
)
��m n
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BelgeDurumu
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ % 
IslemTipNavigation
��% 7
)
��7 8
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %'
TblGeneralBelgeDurumlaris
��% >
)
��> ?
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IslemTip
��* 2
)
��2 3
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' X
)
��X Y
;
��Y Z
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralBnkBelgeDurum
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
DurumId
��% ,
)
��, -
.
�� 
HasName
�� 
(
�� 
$str
�� =
)
��= >
;
��> ?
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DurumId
��' .
)
��. /
.
��/ 0!
ValueGeneratedNever
��0 C
(
��C D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BelgeDurumu
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblGeneralBnkEftDurum
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
DurumId
��% ,
)
��, -
;
��- .
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DurumId
��' .
)
��. /
.
��/ 0!
ValueGeneratedNever
��0 C
(
��C D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	HavaleEft
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblGeneralBnkHarDurum
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
TipId
��% *
)
��* +
;
��+ ,
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipId
��' ,
)
��, -
.
��- .!
ValueGeneratedNever
��. A
(
��A B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
HareketDurum
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B D
)
��D E
;
��E F
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblGeneralBnkHarKynk
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
KaynakTipId
��% 0
)
��0 1
;
��1 2
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KaynakTipId
��' 2
)
��2 3
.
��3 4!
ValueGeneratedNever
��4 G
(
��G H
)
��H I
;
��I J
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kaynak
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralBnkHarTip
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
TipId
��% *
)
��* +
;
��+ ,
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipId
��' ,
)
��, -
.
��- .!
ValueGeneratedNever
��. A
(
��A B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BankaHareket
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B D
)
��D E
;
��E F
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

��  -
>
��- .
(
��. /
entity
��/ 5
=>
��6 8
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� .
)
��. /
;
��/ 0
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- D
)
��D E
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaKod
��' .
,
��. /
$str
��0 J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, B
)
��B C
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaKod
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Lang
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  '
TblGeneralEevrakDurumlari
��  9
>
��9 :
(
��: ;
entity
��; A
=>
��B D
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BelgeDurumu
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  $
TblGeneralEfatMukellef
��  6
>
��6 7
(
��7 8
entity
��8 >
=>
��? A
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- M
)
��M N
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Vkn
��' *
,
��* +
$str
��, L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Erpkodu
��' .
)
��. /
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 

�� "
(
��" #
$str
��# ,
)
��, -
;
��- .
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Unvan
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Vkn
��' *
)
��* +
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 

�� "
(
��" #
$str
��# (
)
��( )
;
��) *
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  (
TblGeneralEfatMukellefMail
��  :
>
��: ;
(
��; <
entity
��< B
=>
��C E
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� ;
)
��; <
;
��< =
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- Q
)
��Q R
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -

MukellefId
��- 7
,
��7 8
e
��9 :
.
��: ;
EpostaAdres
��; F
}
��G H
,
��H I
$str
��J r
)
��r s
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
EpostaAdres
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Erpkodu
��' .
)
��. /
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 

�� "
(
��" #
$str
��# ,
)
��, -
;
��- .
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Mukellef
��% -
)
��- .
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %)
TblGeneralEfatMukellefMails
��% @
)
��@ A
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

MukellefId
��* 4
)
��4 5
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' ]
)
��] ^
;
��^ _
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralFavoriler
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
KisiId
��O U
,
��U V
e
��W X
.
��X Y
NavigationId
��Y e
}
��f g
,
��g h
$str��i �
)��� �
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralFavorilers
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Kisi
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralFavorilers
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KisiId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralFavorilers
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' N
)
��N O
;
��O P
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralFavorilers
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %%
TblGeneralSubeKullanici
��% <
)
��< =
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralFavorilers
��% 9
)
��9 :
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
SubeId
��J P
,
��P Q
p
��R S
.
��S T
KullaniciId
��T _
}
��` a
)
��a b
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
SubeId
��H N
,
��N O
d
��P Q
.
��Q R
KisiId
��R X
}
��Y Z
)
��Z [
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' W
)
��W X
;
��X Y
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralFirma
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- F
)
��F G
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
Adi
��: =
}
��> ?
,
��? @
$str
��A a
)
��a b
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
Id
��: <
}
��= >
,
��> ?
$str
��@ _
)
��_ `
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaKod
��: B
}
��C D
,
��D E
$str
��F f
)
��f g
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DaireNo
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FaxNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KapiNo
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
MersisNo
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
VergiDairesi
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
WebSiteAdres
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
YeniAlan
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralFirmas
��% 5
)
��5 6
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralGondSekli
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
GonderimSekliId
��% 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
GonderimSekliId
��' 6
)
��6 7
.
��7 8!
ValueGeneratedNever
��8 K
(
��K L
)
��L M
;
��M N
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralGrupKullanici
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
KullaniciId
��- 8
,
��8 9
e
��: ;
.
��; <
GrupId
��< B
}
��C D
,
��D E
$str
��F b
)
��b c
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Grup
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralGrupKullanicis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
GrupId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' `
)
��` a
;
��a b
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Kullanici
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralGrupKullanicis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

��  -
>
��- .
(
��. /
entity
��/ 5
=>
��6 8
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� .
)
��. /
;
��/ 0
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralIl
��  ,
>
��, -
(
��- .
entity
��. 4
=>
��5 7
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� -
)
��- .
;
��. /
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- C
)
��C D
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, A
)
��A B
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
UlkeId
��- 3
,
��3 4
e
��5 6
.
��6 7
Id
��7 9
}
��: ;
,
��; <
$str
��= V
)
��V W
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

MernisKodu
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	PlakaKodu
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelKodu
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Ulke
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %

��% 2
)
��2 3
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
UlkeId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' G
)
��G H
;
��H I
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralIlce
��  .
>
��. /
(
��/ 0
entity
��0 6
=>
��7 9
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- E
)
��E F
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
Id
��- /
,
��/ 0
e
��1 2
.
��2 3
IlId
��3 7
}
��8 9
,
��9 :
$str
��; T
)
��T U
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
IlId
��- 1
,
��1 2
e
��3 4
.
��4 5
Kod
��5 8
}
��9 :
,
��: ;
$str
��< V
)
��V W
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

MernisKodu
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Il
��% '
)
��' (
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralIlces
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IlId
��* .
)
��. /
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' G
)
��G H
;
��H I
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  #
TblGeneralIntegration
��  5
>
��5 6
(
��6 7
entity
��7 =
=>
��> @
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
VHareketTuru
��' 3
)
��3 4
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 

�� "
(
��" #
$str
��# 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
VOzelKod
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 

�� "
(
��" #
$str
��# .
)
��. /
;
��/ 0
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

VProjeKodu
��' 1
)
��1 2
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 

�� "
(
��" #
$str
��# 0
)
��0 1
;
��1 2
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralIslemBelgeTip
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
TipId
��% *
)
��* +
;
��+ ,
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipId
��' ,
)
��, -
.
��- .!
ValueGeneratedNever
��. A
(
��A B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipAciklama
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblGeneralIslemKilit
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IslemAdi
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IslemKod
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
App
��% (
)
��( )
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblGeneralIslemKilits
��% :
)
��: ;
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
AppId
��* /
)
��/ 0
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' V
)
��V W
;
��W X
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralIslemSeri
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
IslemTipiId
��E P
}
��Q R
,
��R S
$str
��T x
)
��x y
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
No
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Seri
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	IslemTipi
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %"
TblGeneralIslemSeris
��% 9
)
��9 :
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IslemTipiId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  *
TblGeneralIslemSeriTanimlama
��  <
>
��< =
(
��= >
entity
��> D
=>
��E G
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� =
)
��= >
;
��> ?
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- Z
)
��Z [
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
IslemTipiId
��O Z
,
��Z [
e
��\ ]
.
��] ^
IslemSerisi
��^ i
}
��j k
,
��k l
$str��m �
)��� �
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IslemSerisi
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	IslemTipi
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %+
TblGeneralIslemSeriTanimlamas
��% B
)
��B C
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IslemTipiId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' \
)
��\ ]
;
��] ^
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %+
TblGeneralIslemSeriTanimlamas
��% B
)
��B C
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Z
)
��Z [
;
��[ \
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %+
TblGeneralIslemSeriTanimlamas
��% B
)
��B C
.
�	�	 
HasPrincipalKey
�	�	 $
(
�	�	$ %
p
�	�	% &
=>
�	�	' )
new
�	�	* -
{
�	�	. /
p
�	�	0 1
.
�	�	1 2
FirmaId
�	�	2 9
,
�	�	9 :
p
�	�	; <
.
�	�	< =
Id
�	�	= ?
}
�	�	@ A
)
�	�	A B
.
�	�	 

�	�	 "
(
�	�	" #
d
�	�	# $
=>
�	�	% '
new
�	�	( +
{
�	�	, -
d
�	�	. /
.
�	�	/ 0
FirmaId
�	�	0 7
,
�	�	7 8
d
�	�	9 :
.
�	�	: ;
SubeId
�	�	; A
}
�	�	B C
)
�	�	C D
.
�	�	 
OnDelete
�	�	 
(
�	�	 
DeleteBehavior
�	�	 ,
.
�	�	, -

�	�	- :
)
�	�	: ;
.
�	�	 
HasConstraintName
�	�	 &
(
�	�	& '
$str
�	�	' W
)
�	�	W X
;
�	�	X Y
entity
�	�	 
.
�	�	 
HasOne
�	�	 
(
�	�	 
d
�	�	 
=>
�	�	  "
d
�	�	# $
.
�	�	$ %
TblGeneralFirma
�	�	% 4
)
�	�	4 5
.
�	�	 
WithMany
�	�	 
(
�	�	 
p
�	�	 
=>
�	�	  "
p
�	�	# $
.
�	�	$ %+
TblGeneralIslemSeriTanimlamas
�	�	% B
)
�	�	B C
.
�	�	 
HasPrincipalKey
�	�	 $
(
�	�	$ %
p
�	�	% &
=>
�	�	' )
new
�	�	* -
{
�	�	. /
p
�	�	0 1
.
�	�	1 2
	IsletmeId
�	�	2 ;
,
�	�	; <
p
�	�	= >
.
�	�	> ?
Id
�	�	? A
}
�	�	B C
)
�	�	C D
.
�	�	 

�	�	 "
(
�	�	" #
d
�	�	# $
=>
�	�	% '
new
�	�	( +
{
�	�	, -
d
�	�	. /
.
�	�	/ 0
	IsletmeId
�	�	0 9
,
�	�	9 :
d
�	�	; <
.
�	�	< =
FirmaId
�	�	= D
}
�	�	E F
)
�	�	F G
.
�	�	 
OnDelete
�	�	 
(
�	�	 
DeleteBehavior
�	�	 ,
.
�	�	, -

�	�	- :
)
�	�	: ;
.
�	�	 
HasConstraintName
�	�	 &
(
�	�	& '
$str
�	�	' X
)
�	�	X Y
;
�	�	Y Z
}
�	�	 
)
�	�	
;
�	�	 
modelBuilder
�	�	 
.
�	�	 
Entity
�	�	 
<
�	�	  !
TblGeneralIslemTipi
�	�	  3
>
�	�	3 4
(
�	�	4 5
entity
�	�	5 ;
=>
�	�	< >
{
�	�	 
entity
�	�	 
.
�	�	 
HasKey
�	�	 
(
�	�	 
e
�	�	 
=>
�	�	  "
e
�	�	# $
.
�	�	$ %
IslemTipiId
�	�	% 0
)
�	�	0 1
;
�	�	1 2
entity
�	�	 
.
�	�	 
ToTable
�	�	 
(
�	�	 
$str
�	�	 4
)
�	�	4 5
;
�	�	5 6
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
	IslemTipi
�	�	' 0
,
�	�	0 1
$str
�	�	2 S
)
�	�	S T
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
IslemTipiId
�	�	' 2
)
�	�	2 3
.
�	�	3 4!
ValueGeneratedNever
�	�	4 G
(
�	�	G H
)
�	�	H I
;
�	�	I J
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
	IslemTipi
�	�	' 0
)
�	�	0 1
.
�	�	1 2
HasMaxLength
�	�	2 >
(
�	�	> ?
$num
�	�	? A
)
�	�	A B
;
�	�	B C
}
�	�	 
)
�	�	
;
�	�	 
modelBuilder
�	�	 
.
�	�	 
Entity
�	�	 
<
�	�	  
TblGeneralIsletme
�	�	  1
>
�	�	1 2
(
�	�	2 3
entity
�	�	3 9
=>
�	�	: <
{
�	�	 
entity
�	�	 
.
�	�	 
ToTable
�	�	 
(
�	�	 
$str
�	�	 2
)
�	�	2 3
;
�	�	3 4
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Adi
�	�	' *
,
�	�	* +
$str
�	�	, F
)
�	�	F G
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
,
�	�	+ ,
$str
�	�	- H
)
�	�	H I
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
IsletmeUrlOnEk
�	�	' 5
,
�	�	5 6
$str
�	�	7 \
)
�	�	\ ]
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '

�	�	' 4
,
�	�	4 5
$str
�	�	6 Z
)
�	�	Z [
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Adi
�	�	' *
)
�	�	* +
.
�	�	+ ,
HasMaxLength
�	�	, 8
(
�	�	8 9
$num
�	�	9 <
)
�	�	< =
;
�	�	= >
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
)
�	�	+ ,
.
�	�	, - 
HasDefaultValueSql
�	�	- ?
(
�	�	? @
$str
�	�	@ K
)
�	�	K L
;
�	�	L M
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
IsletmeUrlOnEk
�	�	' 5
)
�	�	5 6
.
�	�	6 7
HasMaxLength
�	�	7 C
(
�	�	C D
$num
�	�	D F
)
�	�	F G
;
�	�	G H
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturanId
�	�	' 2
)
�	�	2 3
.
�	�	3 4 
HasDefaultValueSql
�	�	4 F
(
�	�	F G
$str
�	�	G O
)
�	�	O P
;
�	�	P Q
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturmaTarih
�	�	' 5
)
�	�	5 6
.
�	�	6 7 
HasDefaultValueSql
�	�	7 I
(
�	�	I J
$str
�	�	J W
)
�	�	W X
;
�	�	X Y
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '

�	�	' 4
)
�	�	4 5
.
�	�	5 6
HasMaxLength
�	�	6 B
(
�	�	B C
$num
�	�	C F
)
�	�	F G
;
�	�	G H
}
�	�	 
)
�	�	
;
�	�	 
modelBuilder
�	�	 
.
�	�	 
Entity
�	�	 
<
�	�	  *
TblGeneralIsletmeApplication
�	�	  <
>
�	�	< =
(
�	�	= >
entity
�	�	> D
=>
�	�	E G
{
�	�	 
entity
�	�	 
.
�	�	 
ToTable
�	�	 
(
�	�	 
$str
�	�	 =
)
�	�	= >
;
�	�	> ?
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
,
�	�	+ ,
$str
�	�	- S
)
�	�	S T
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
new
�	�	% (
{
�	�	) *
e
�	�	+ ,
.
�	�	, -
	IsletmeId
�	�	- 6
,
�	�	6 7
e
�	�	8 9
.
�	�	9 :

�	�	: G
}
�	�	H I
,
�	�	I J
$str
�	�	K x
)
�	�	x y
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
)
�	�	+ ,
.
�	�	, - 
HasDefaultValueSql
�	�	- ?
(
�	�	? @
$str
�	�	@ K
)
�	�	K L
;
�	�	L M
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturanId
�	�	' 2
)
�	�	2 3
.
�	�	3 4 
HasDefaultValueSql
�	�	4 F
(
�	�	F G
$str
�	�	G O
)
�	�	O P
;
�	�	P Q
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturmaTarih
�	�	' 5
)
�	�	5 6
.
�	�	6 7 
HasDefaultValueSql
�	�	7 I
(
�	�	I J
$str
�	�	J W
)
�	�	W X
;
�	�	X Y
entity
�	�	 
.
�	�	 
HasOne
�	�	 
(
�	�	 
d
�	�	 
=>
�	�	  "
d
�	�	# $
.
�	�	$ %
Application
�	�	% 0
)
�	�	0 1
.
�	�	 
WithMany
�	�	 
(
�	�	 
p
�	�	 
=>
�	�	  "
p
�	�	# $
.
�	�	$ %+
TblGeneralIsletmeApplications
�	�	% B
)
�	�	B C
.
�	�	 

�	�	 "
(
�	�	" #
d
�	�	# $
=>
�	�	% '
d
�	�	( )
.
�	�	) *

�	�	* 7
)
�	�	7 8
.
�	�	 
OnDelete
�	�	 
(
�	�	 
DeleteBehavior
�	�	 ,
.
�	�	, -

�	�	- :
)
�	�	: ;
.
�	�	 
HasConstraintName
�	�	 &
(
�	�	& '
$str
�	�	' ^
)
�	�	^ _
;
�	�	_ `
entity
�	�	 
.
�	�	 
HasOne
�	�	 
(
�	�	 
d
�	�	 
=>
�	�	  "
d
�	�	# $
.
�	�	$ %
Isletme
�	�	% ,
)
�	�	, -
.
�	�	 
WithMany
�	�	 
(
�	�	 
p
�	�	 
=>
�	�	  "
p
�	�	# $
.
�	�	$ %+
TblGeneralIsletmeApplications
�	�	% B
)
�	�	B C
.
�	�	 

�	�	 "
(
�	�	" #
d
�	�	# $
=>
�	�	% '
d
�	�	( )
.
�	�	) *
	IsletmeId
�	�	* 3
)
�	�	3 4
.
�	�	 
OnDelete
�	�	 
(
�	�	 
DeleteBehavior
�	�	 ,
.
�	�	, -

�	�	- :
)
�	�	: ;
.
�	�	 
HasConstraintName
�	�	 &
(
�	�	& '
$str
�	�	' Z
)
�	�	Z [
;
�	�	[ \
}
�	�	 
)
�	�	
;
�	�	 
modelBuilder
�	�	 
.
�	�	 
Entity
�	�	 
<
�	�	  

�	�	  -
>
�	�	- .
(
�	�	. /
entity
�	�	/ 5
=>
�	�	6 8
{
�	�	 
entity
�	�	 
.
�	�	 
ToTable
�	�	 
(
�	�	 
$str
�	�	 .
)
�	�	. /
;
�	�	/ 0
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
,
�	�	+ ,
$str
�	�	- D
)
�	�	D E
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
new
�	�	% (
{
�	�	) *
e
�	�	+ ,
.
�	�	, -
IlceId
�	�	- 3
,
�	�	3 4
e
�	�	5 6
.
�	�	6 7
Id
�	�	7 9
}
�	�	: ;
,
�	�	; <
$str
�	�	= W
)
�	�	W X
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
new
�	�	% (
{
�	�	) *
e
�	�	+ ,
.
�	�	, -
IlceId
�	�	- 3
,
�	�	3 4
e
�	�	5 6
.
�	�	6 7
Kodu
�	�	7 ;
}
�	�	< =
,
�	�	= >
$str
�	�	? [
)
�	�	[ \
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Adi
�	�	' *
)
�	�	* +
.
�	�	+ ,
HasMaxLength
�	�	, 8
(
�	�	8 9
$num
�	�	9 =
)
�	�	= >
;
�	�	> ?
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Guid
�	�	' +
)
�	�	+ ,
.
�	�	, - 
HasDefaultValueSql
�	�	- ?
(
�	�	? @
$str
�	�	@ K
)
�	�	K L
;
�	�	L M
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Kodu
�	�	' +
)
�	�	+ ,
.
�	�	, -
HasMaxLength
�	�	- 9
(
�	�	9 :
$num
�	�	: <
)
�	�	< =
;
�	�	= >
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '

MernisKodu
�	�	' 1
)
�	�	1 2
.
�	�	2 3
HasMaxLength
�	�	3 ?
(
�	�	? @
$num
�	�	@ B
)
�	�	B C
;
�	�	C D
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturanId
�	�	' 2
)
�	�	2 3
.
�	�	3 4 
HasDefaultValueSql
�	�	4 F
(
�	�	F G
$str
�	�	G O
)
�	�	O P
;
�	�	P Q
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
OlusturmaTarih
�	�	' 5
)
�	�	5 6
.
�	�	6 7 
HasDefaultValueSql
�	�	7 I
(
�	�	I J
$str
�	�	J W
)
�	�	W X
;
�	�	X Y
entity
�	�	 
.
�	�	 
HasOne
�	�	 
(
�	�	 
d
�	�	 
=>
�	�	  "
d
�	�	# $
.
�	�	$ %
Ilce
�	�	% )
)
�	�	) *
.
�	�	 
WithMany
�	�	 
(
�	�	 
p
�	�	 
=>
�	�	  "
p
�	�	# $
.
�	�	$ %
TblGeneralKoys
�	�	% 3
)
�	�	3 4
.
�	�	 

�	�	 "
(
�	�	" #
d
�	�	# $
=>
�	�	% '
d
�	�	( )
.
�	�	) *
IlceId
�	�	* 0
)
�	�	0 1
.
�	�	 
OnDelete
�	�	 
(
�	�	 
DeleteBehavior
�	�	 ,
.
�	�	, -

�	�	- :
)
�	�	: ;
.
�	�	 
HasConstraintName
�	�	 &
(
�	�	& '
$str
�	�	' H
)
�	�	H I
;
�	�	I J
}
�	�	 
)
�	�	
;
�	�	 
modelBuilder
�	�	 
.
�	�	 
Entity
�	�	 
<
�	�	  $
TblGeneralKulGrupEkran
�	�	  6
>
�	�	6 7
(
�	�	7 8
entity
�	�	8 >
=>
�	�	? A
{
�	�	 
entity
�	�	 
.
�	�	 
ToTable
�	�	 
(
�	�	 
$str
�	�	 7
)
�	�	7 8
;
�	�	8 9
entity
�	�	 
.
�	�	 
HasIndex
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
new
�	�	% (
{
�	�	) *
e
�	�	+ ,
.
�	�	, -
EkranId
�	�	- 4
,
�	�	4 5
e
�	�	6 7
.
�	�	7 8
GrupId
�	�	8 >
}
�	�	? @
,
�	�	@ A
$str
�	�	B h
)
�	�	h i
.
�	�	 
IsUnique
�	�	 
(
�	�	 
)
�	�	 
;
�	�	  
entity
�	�	 
.
�	�	 
Property
�	�	 
(
�	�	  
e
�	�	  !
=>
�	�	" $
e
�	�	% &
.
�	�	& '
Aktif
�	�	' ,
)
�	�	, -
.
�	�	 

IsRequired
�	�	 
(
�	�	  
)
�	�	  !
.
�	�	  
HasDefaultValueSql
�	�	 '
(
�	�	' (
$str
�	�	( /
)
�	�	/ 0
;
�	�	0 1
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Guid
�
�
' +
)
�
�
+ ,
.
�
�
, - 
HasDefaultValueSql
�
�
- ?
(
�
�
? @
$str
�
�
@ K
)
�
�
K L
;
�
�
L M
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturanId
�
�
' 2
)
�
�
2 3
.
�
�
3 4 
HasDefaultValueSql
�
�
4 F
(
�
�
F G
$str
�
�
G O
)
�
�
O P
;
�
�
P Q
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturmaTarih
�
�
' 5
)
�
�
5 6
.
�
�
6 7 
HasDefaultValueSql
�
�
7 I
(
�
�
I J
$str
�
�
J W
)
�
�
W X
;
�
�
X Y
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
	Onaylandi
�
�
' 0
)
�
�
0 1
.
�
�
 

IsRequired
�
�
 
(
�
�
  
)
�
�
  !
.
�
�
  
HasDefaultValueSql
�
�
 '
(
�
�
' (
$str
�
�
( /
)
�
�
/ 0
;
�
�
0 1
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Yil
�
�
' *
)
�
�
* +
.
�
�
+ , 
HasDefaultValueSql
�
�
, >
(
�
�
> ?
$str
�
�
? [
)
�
�
[ \
;
�
�
\ ]
}
�
�
 
)
�
�

;
�
�
 
modelBuilder
�
�
 
.
�
�
 
Entity
�
�
 
<
�
�
  '
TblGeneralKullaniciEkAlan
�
�
  9
>
�
�
9 :
(
�
�
: ;
entity
�
�
; A
=>
�
�
B D
{
�
�
 
entity
�
�
 
.
�
�
 
ToTable
�
�
 
(
�
�
 
$str
�
�
 :
)
�
�
: ;
;
�
�
; <
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Baslik
�
�
' -
)
�
�
- .
.
�
�
. /
HasMaxLength
�
�
/ ;
(
�
�
; <
$num
�
�
< ?
)
�
�
? @
;
�
�
@ A
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Application
�
�
% 0
)
�
�
0 1
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %(
TblGeneralKullaniciEkAlans
�
�
% ?
)
�
�
? @
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *

�
�
* 7
)
�
�
7 8
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' [
)
�
�
[ \
;
�
�
\ ]
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Modul
�
�
% *
)
�
�
* +
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %(
TblGeneralKullaniciEkAlans
�
�
% ?
)
�
�
? @
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
ModulId
�
�
* 1
)
�
�
1 2
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' U
)
�
�
U V
;
�
�
V W
}
�
�
 
)
�
�

;
�
�
 
modelBuilder
�
�
 
.
�
�
 
Entity
�
�
 
<
�
�
  *
TblGeneralKullaniciGrupTanim
�
�
  <
>
�
�
< =
(
�
�
= >
entity
�
�
> D
=>
�
�
E G
{
�
�
 
entity
�
�
 
.
�
�
 
ToTable
�
�
 
(
�
�
 
$str
�
�
 =
)
�
�
= >
;
�
�
> ?
entity
�
�
 
.
�
�
 
HasIndex
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
new
�
�
% (
{
�
�
) *
e
�
�
+ ,
.
�
�
, -
Kod
�
�
- 0
,
�
�
0 1
e
�
�
2 3
.
�
�
3 4
	IsletmeId
�
�
4 =
}
�
�
> ?
,
�
�
? @
$str
�
�
A n
)
�
�
n o
.
�
�
 
IsUnique
�
�
 
(
�
�
 
)
�
�
 
;
�
�
  
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Aciklama
�
�
' /
)
�
�
/ 0
.
�
�
0 1
HasMaxLength
�
�
1 =
(
�
�
= >
$num
�
�
> A
)
�
�
A B
;
�
�
B C
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Aktif
�
�
' ,
)
�
�
, -
.
�
�
 

IsRequired
�
�
 
(
�
�
  
)
�
�
  !
.
�
�
  
HasDefaultValueSql
�
�
 '
(
�
�
' (
$str
�
�
( /
)
�
�
/ 0
;
�
�
0 1
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Guid
�
�
' +
)
�
�
+ ,
.
�
�
, - 
HasDefaultValueSql
�
�
- ?
(
�
�
? @
$str
�
�
@ K
)
�
�
K L
;
�
�
L M
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Kod
�
�
' *
)
�
�
* +
.
�
�
+ ,
HasMaxLength
�
�
, 8
(
�
�
8 9
$num
�
�
9 ;
)
�
�
; <
;
�
�
< =
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturanId
�
�
' 2
)
�
�
2 3
.
�
�
3 4 
HasDefaultValueSql
�
�
4 F
(
�
�
F G
$str
�
�
G O
)
�
�
O P
;
�
�
P Q
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturmaTarih
�
�
' 5
)
�
�
5 6
.
�
�
6 7 
HasDefaultValueSql
�
�
7 I
(
�
�
I J
$str
�
�
J W
)
�
�
W X
;
�
�
X Y
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
	Onaylandi
�
�
' 0
)
�
�
0 1
.
�
�
 

IsRequired
�
�
 
(
�
�
  
)
�
�
  !
.
�
�
  
HasDefaultValueSql
�
�
 '
(
�
�
' (
$str
�
�
( /
)
�
�
/ 0
;
�
�
0 1
}
�
�
 
)
�
�

;
�
�
 
modelBuilder
�
�
 
.
�
�
 
Entity
�
�
 
<
�
�
  "
TblGeneralLidosDurum
�
�
  4
>
�
�
4 5
(
�
�
5 6
entity
�
�
6 <
=>
�
�
= ?
{
�
�
 
entity
�
�
 
.
�
�
 
ToTable
�
�
 
(
�
�
 
$str
�
�
 5
)
�
�
5 6
;
�
�
6 7
entity
�
�
 
.
�
�
 
HasIndex
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Kod
�
�
' *
,
�
�
* +
$str
�
�
, I
)
�
�
I J
.
�
�
 
IsUnique
�
�
 
(
�
�
 
)
�
�
 
;
�
�
  
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Ad
�
�
' )
)
�
�
) *
.
�
�
* +
HasMaxLength
�
�
+ 7
(
�
�
7 8
$num
�
�
8 :
)
�
�
: ;
;
�
�
; <
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Guid
�
�
' +
)
�
�
+ ,
.
�
�
, - 
HasDefaultValueSql
�
�
- ?
(
�
�
? @
$str
�
�
@ K
)
�
�
K L
;
�
�
L M
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Kod
�
�
' *
)
�
�
* +
.
�
�
+ ,
HasMaxLength
�
�
, 8
(
�
�
8 9
$num
�
�
9 ;
)
�
�
; <
;
�
�
< =
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturanId
�
�
' 2
)
�
�
2 3
.
�
�
3 4 
HasDefaultValueSql
�
�
4 F
(
�
�
F G
$str
�
�
G O
)
�
�
O P
;
�
�
P Q
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturmaTarih
�
�
' 5
)
�
�
5 6
.
�
�
6 7 
HasDefaultValueSql
�
�
7 I
(
�
�
I J
$str
�
�
J W
)
�
�
W X
;
�
�
X Y
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
RenkCode
�
�
' /
)
�
�
/ 0
.
�
�
0 1
HasMaxLength
�
�
1 =
(
�
�
= >
$num
�
�
> @
)
�
�
@ A
;
�
�
A B
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Yil
�
�
' *
)
�
�
* +
.
�
�
+ , 
HasDefaultValueSql
�
�
, >
(
�
�
> ?
$str
�
�
? [
)
�
�
[ \
;
�
�
\ ]
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Firma
�
�
% *
)
�
�
* +
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %#
TblGeneralLidosDurums
�
�
% :
)
�
�
: ;
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
FirmaId
�
�
* 1
)
�
�
1 2
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' P
)
�
�
P Q
;
�
�
Q R
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Isletme
�
�
% ,
)
�
�
, -
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %#
TblGeneralLidosDurums
�
�
% :
)
�
�
: ;
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
	IsletmeId
�
�
* 3
)
�
�
3 4
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' R
)
�
�
R S
;
�
�
S T
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Sube
�
�
% )
)
�
�
) *
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %#
TblGeneralLidosDurums
�
�
% :
)
�
�
: ;
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
SubeId
�
�
* 0
)
�
�
0 1
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' O
)
�
�
O P
;
�
�
P Q
}
�
�
 
)
�
�

;
�
�
 
modelBuilder
�
�
 
.
�
�
 
Entity
�
�
 
<
�
�
  $
TblGeneralLidosElusTip
�
�
  6
>
�
�
6 7
(
�
�
7 8
entity
�
�
8 >
=>
�
�
? A
{
�
�
 
entity
�
�
 
.
�
�
 
ToTable
�
�
 
(
�
�
 
$str
�
�
 7
)
�
�
7 8
;
�
�
8 9
entity
�
�
 
.
�
�
 
HasIndex
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Kod
�
�
' *
,
�
�
* +
$str
�
�
, K
)
�
�
K L
.
�
�
 
IsUnique
�
�
 
(
�
�
 
)
�
�
 
;
�
�
  
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Ad
�
�
' )
)
�
�
) *
.
�
�
* +
HasMaxLength
�
�
+ 7
(
�
�
7 8
$num
�
�
8 :
)
�
�
: ;
;
�
�
; <
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Guid
�
�
' +
)
�
�
+ ,
.
�
�
, - 
HasDefaultValueSql
�
�
- ?
(
�
�
? @
$str
�
�
@ K
)
�
�
K L
;
�
�
L M
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Kod
�
�
' *
)
�
�
* +
.
�
�
+ ,
HasMaxLength
�
�
, 8
(
�
�
8 9
$num
�
�
9 ;
)
�
�
; <
;
�
�
< =
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturanId
�
�
' 2
)
�
�
2 3
.
�
�
3 4 
HasDefaultValueSql
�
�
4 F
(
�
�
F G
$str
�
�
G O
)
�
�
O P
;
�
�
P Q
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
OlusturmaTarih
�
�
' 5
)
�
�
5 6
.
�
�
6 7 
HasDefaultValueSql
�
�
7 I
(
�
�
I J
$str
�
�
J W
)
�
�
W X
;
�
�
X Y
entity
�
�
 
.
�
�
 
Property
�
�
 
(
�
�
  
e
�
�
  !
=>
�
�
" $
e
�
�
% &
.
�
�
& '
Yil
�
�
' *
)
�
�
* +
.
�
�
+ , 
HasDefaultValueSql
�
�
, >
(
�
�
> ?
$str
�
�
? [
)
�
�
[ \
;
�
�
\ ]
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Isletme
�
�
% ,
)
�
�
, -
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %%
TblGeneralLidosElusTips
�
�
% <
)
�
�
< =
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
	IsletmeId
�
�
* 3
)
�
�
3 4
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' T
)
�
�
T U
;
�
�
U V
entity
�
�
 
.
�
�
 
HasOne
�
�
 
(
�
�
 
d
�
�
 
=>
�
�
  "
d
�
�
# $
.
�
�
$ %
Sube
�
�
% )
)
�
�
) *
.
�
�
 
WithMany
�
�
 
(
�
�
 
p
�
�
 
=>
�
�
  "
p
�
�
# $
.
�
�
$ %%
TblGeneralLidosElusTips
�
�
% <
)
�
�
< =
.
�
�
 

�
�
 "
(
�
�
" #
d
�
�
# $
=>
�
�
% '
d
�
�
( )
.
�
�
) *
SubeId
�
�
* 0
)
�
�
0 1
.
�
�
 
OnDelete
�
�
 
(
�
�
 
DeleteBehavior
�
�
 ,
.
�
�
, -

�
�
- :
)
�
�
: ;
.
�
�
 
HasConstraintName
�
�
 &
(
�
�
& '
$str
�
�
' Q
)
�
�
Q R
;
�
�
R S
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralLidosTalepTip
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
RenkCode
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Firma
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralLidosTalepTips
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
FirmaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralLidosTalepTips
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Sube
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralLidosTalepTips
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
SubeId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralModul
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��   
TblGeneralOdemeTip
��  2
>
��2 3
(
��3 4
entity
��4 :
=>
��; =
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- I
)
��I J
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralOnayDurum
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
DurumId
��% ,
)
��, -
;
��- .
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DurumId
��' .
)
��. /
.
��/ 0!
ValueGeneratedNever
��0 C
(
��C D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

OnayDurumu
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ C
)
��C D
;
��D E
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblGeneralParaBirimi
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- K
)
��K L
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, I
)
��I J
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Icon
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kisaltma
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��   
TblGeneralRedDurum
��  2
>
��2 3
(
��3 4
entity
��4 :
=>
��; =
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, G
)
��G H
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Id
��' )
)
��) *
.
��* +!
ValueGeneratedNever
��+ >
(
��> ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralRedDurumYetki
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Durum
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedDurumYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
DurumId
��* 1
)
��1 2
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' V
)
��V W
;
��W X
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %

NedenYetki
��% /
)
��/ 0
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedDurumYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
NedenYetkiId
��* 6
)
��6 7
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' [
)
��[ \
;
��\ ]
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  $
TblGeneralRedNedenYeri
��  6
>
��6 7
(
��7 8
entity
��8 >
=>
��? A
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Firma
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRedNedenYeris
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
FirmaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRedNedenYeris
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' T
)
��T U
;
��U V
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
RedNeden
��% -
)
��- .
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRedNedenYeris
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

RedNedenId
��* 4
)
��4 5
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' V
)
��V W
;
��W X
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Sube
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRedNedenYeris
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
SubeId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Yer
��% (
)
��( )
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRedNedenYeris
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
YerId
��* /
)
��/ 0
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' T
)
��T U
;
��U V
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralRedNedenYetki
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Firma
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedNedenYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
FirmaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedNedenYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
RedNeden
��% -
)
��- .
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedNedenYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

RedNedenId
��* 4
)
��4 5
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Sube
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralRedNedenYetkis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
SubeId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblGeneralRedNedeni
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, H
)
��H I
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Kod
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturanId
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturmaTarih
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Yil
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Firma
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedNedenis
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
FirmaId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Isletme
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedNedenis
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
	IsletmeId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Sube
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedNedenis
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
SubeId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
}
�
)
�
;
�
modelBuilder
�
.
�
Entity
�
<
�
TblGeneralRedYeri
�
>
�
(
�
entity
�
=>
�
{
�
entity
�
.
�
ToTable
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
e
�
.
�
Kod
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Ad
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Guid
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Kod
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturanId
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturmaTarih
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Yil
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Firma
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedYeris
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
FirmaId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Isletme
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedYeris
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
	IsletmeId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Sube
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRedYeris
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
SubeId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
}
�
)
�
;
�
modelBuilder
�
.
�
Entity
�
<
�
TblGeneralRehber
�
>
�
(
�
entity
�
=>
�
{
�
entity
�
.
�
ToTable
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
e
�
.
�
Guid
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
new
�
{
�
e
�
.
�
	IsletmeId
�
,
�
e
�
.
�
FirmaId
�
,
�
e
�
.
�
Id
�
}
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
new
�
{
�
e
�
.
�
	IsletmeId
�
,
�
e
�
.
�
FirmaId
�
,
�
e
�
.
�

RehberKodu
�
}
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Aciklama
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Adi
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Data
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Guid
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturanId
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
OlusturmaTarih
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�

RehberKodu
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
TabloAdi
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Url
�
)
�
.
�
HasMaxLength
�
(
�
$num
�
)
�
;
�
entity
�
.
�
Property
�
(
�
e
�
=>
�
e
�
.
�
Yil
�
)
�
.
�
HasDefaultValueSql
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
Isletme
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRehbers
�
)
�
.
�

�
(
�
d
�
=>
�
d
�
.
�
	IsletmeId
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
TblGeneralSube
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRehbers
�
)
�
.
�
HasPrincipalKey
�
(
�
p
�
=>
�
new
�
{
�
p
�
.
�
FirmaId
�
,
�
p
�
.
�
Id
�
}
�
)
�
.
�

�
(
�
d
�
=>
�
new
�
{
�
d
�
.
�
FirmaId
�
,
�
d
�
.
�
SubeId
�
}
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
entity
�
.
�
HasOne
�
(
�
d
�
=>
�
d
�
.
�
TblGeneralFirma
�
)
�
.
�
WithMany
�
(
�
p
�
=>
�
p
�
.
�
TblGeneralRehbers
�
)
�
.
�
HasPrincipalKey
�
(
�
p
�
=>
�
new
�
{
�
p
�
.
�
	IsletmeId
�
,
�
p
�
.
�
Id
�
}
�
)
�
.
�

�
(
�
d
�
=>
�
new
�
{
�
d
�
.
�
	IsletmeId
�
,
�
d
�
.
�
FirmaId
�
}
�
)
�
.
�
OnDelete
�
(
�
DeleteBehavior
�
.
�

�
)
�
.
�
HasConstraintName
�
(
�
$str
�
)
�
;
�
}
�
)
�
;
�
modelBuilder
�
.
�
Entity
�
<
�
TblGeneralRehberColumn
�
>
�
(
�
entity
�
=>
�
{
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
e
�
.
�
Guid
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�
.
�
HasIndex
�
(
�
e
�
=>
�
new
�
{
�
e
�
.
�
RehberId
�
,
�
e
�
.
�
Adi
�
}
�
,
�
$str
�
)
�
.
�
IsUnique
�
(
�
)
�
;
�
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	KisitTipi
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ModelPropertyAdi
��' 7
)
��7 8
.
��8 9
HasMaxLength
��9 E
(
��E F
$num
��F I
)
��I J
;
��J K
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

RehberKodu
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Tip
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRehberColumns
��% <
)
��< =
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRehberColumns
��% <
)
��< =
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %%
TblGeneralRehberColumns
��% <
)
��< =
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralRehber
��% 5
)
��5 6
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %5
'TblGeneralRehberColumnTblGeneralRehbers
��% L
)
��L M
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
Id
��J L
}
��M N
)
��N O
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
RehberId
��H P
}
��Q R
)
��R S
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %(
TblGeneralRehberNavigation
��% ?
)
��? @
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %?
1TblGeneralRehberColumnTblGeneralRehberNavigations
��% V
)
��V W
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J

RehberKodu
��J T
}
��U V
)
��V W
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H

RehberKodu
��H R
}
��S T
)
��T U
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' T
)
��T U
;
��U V
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblGeneralRehberView
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- L
)
��L M
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
RehberId
��- 5
,
��5 6
e
��7 8
.
��8 9
Adi
��9 <
}
��= >
,
��> ?
$str
��@ g
)
��g h
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Tip
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblGeneralRehberViews
��% :
)
��: ;
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblGeneralRehberViews
��% :
)
��: ;
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' P
)
��P Q
;
��Q R
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblGeneralRehberViews
��% :
)
��: ;
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralRehber
��% 5
)
��5 6
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %#
TblGeneralRehberViews
��% :
)
��: ;
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
Id
��J L
}
��M N
)
��N O
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
RehberId
��H P
}
��Q R
)
��R S
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralSube
��  .
>
��. /
(
��/ 0
entity
��0 6
=>
��7 9
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
FirmaId
��- 4
,
��4 5
e
��6 7
.
��7 8
Adi
��8 ;
}
��< =
,
��= >
$str
��? \
)
��\ ]
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
FirmaId
��- 4
,
��4 5
e
��6 7
.
��7 8
Id
��8 :
}
��; <
,
��< =
$str
��> Z
)
��Z [
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
FirmaId
��- 4
,
��4 5
e
��6 7
.
��7 8
SubeKod
��8 ?
}
��@ A
,
��A B
$str
��C d
)
��d e
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- E
)
��E F
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DaireNo
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FaxNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KapiNo
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Logo
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
MersisNo
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
WebSiteAdres
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Firma
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralSubes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
FirmaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' J
)
��J K
;
��K L
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Il
��% '
)
��' (
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralSubes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IlId
��* .
)
��. /
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' G
)
��G H
;
��H I
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Ilce
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralSubes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
IlceId
��* 0
)
��0 1
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' I
)
��I J
;
��J K
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
MahKoy
��% +
)
��+ ,
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralSubes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
MahKoyId
��* 2
)
��2 3
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' H
)
��H I
;
��I J
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Ulke
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralSubes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
UlkeId
��* 0
)
��0 1
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' I
)
��I J
;
��J K
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
TblGeneralSubeKullanici
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- N
)
��N O
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
KullaniciId
��O Z
}
��[ \
,
��\ ]
$str��^ �
)��� �
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DavetTarihi
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G T
)
��T U
;
��U V
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralSubeKullanicis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Kullanici
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralSubeKullanicis
��% =
)
��= >
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralSubeKullanicis
��% =
)
��= >
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' R
)
��R S
;
��S T
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %&
TblGeneralSubeKullanicis
��% =
)
��= >
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblGeneralUlke
��  .
>
��. /
(
��/ 0
entity
��0 6
=>
��7 9
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- E
)
��E F
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaKod
��' .
,
��. /
$str
��0 K
)
��K L
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
,
��* +
$str
��, C
)
��C D
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaKod
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UlkeTelKodu
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	ParaBirim
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblGeneralUlkes
��% 4
)
��4 5
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
ParaBirimId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  '
TblGeneralUserApplication
��  9
>
��9 :
(
��: ;
entity
��; A
=>
��B D
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- P
)
��P Q
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
KullaniciId
��O Z
,
��Z [
e
��\ ]
.
��] ^

��^ k
}
��l m
,
��m n
$str��o �
)��� �
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Application
��% 0
)
��0 1
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

��* 7
)
��7 8
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Kullanici
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' T
)
��T U
;
��U V
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' U
)
��U V
;
��V W
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %%
TblGeneralSubeKullanici
��% <
)
��< =
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %(
TblGeneralUserApplications
��% ?
)
��? @
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
SubeId
��J P
,
��P Q
p
��R S
.
��S T
KullaniciId
��T _
}
��` a
)
��a b
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
SubeId
��H N
,
��N O
d
��P Q
.
��Q R
KullaniciId
��R ]
}
��^ _
)
��_ `
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' ]
)
��] ^
;
��^ _
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  $
TblGeneralVergiDairesi
��  6
>
��6 7
(
��7 8
entity
��8 >
=>
��? A
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
TblGeneralVisitDurum
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasKey
�� 
(
�� 
e
�� 
=>
��  "
e
��# $
.
��$ %
	DurumTipi
��% .
)
��. /
;
��/ 0
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	DurumTipi
��' 0
)
��0 1
.
��1 2!
ValueGeneratedNever
��2 E
(
��E F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
	TblOption
��  )
>
��) *
(
��* +
entity
��+ 1
=>
��2 4
{
�� 
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- A
)
��A B
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U o
)
��o p
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	GroupName
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Modul
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Name
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	ParamType
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Summary
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %

TblOptions
��% /
)
��/ 0
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' H
)
��H I
;
��I J
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %

TblOptions
��% /
)
��/ 0
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' E
)
��E F
;
��F G
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %

TblOptions
��% /
)
��/ 0
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' F
)
��F G
;
��G H
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

��  -
>
��- .
(
��. /
entity
��/ 5
=>
��6 8
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� .
)
��. /
;
��/ 0
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- D
)
��D E
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeId
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaId
��: A
,
��A B
e
��C D
.
��D E
SubeId
��E K
,
��K L
e
��M N
.
��N O
Id
��O Q
}
��R S
,
��S T
$str
��U r
)
��r s
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Text
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSocialFeeds
��% 3
)
��3 4
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' K
)
��K L
;
��L M
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Tip
��% (
)
��( )
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSocialFeeds
��% 3
)
��3 4
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
TipId
��* /
)
��/ 0
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' J
)
��J K
;
��K L
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSocialFeeds
��% 3
)
��3 4
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' H
)
��H I
;
��I J
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSocialFeeds
��% 3
)
��3 4
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' I
)
��I J
;
��J K
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSocialFeedKisi
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- H
)
��H I
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	ResimLink
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedKisis
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Kisi
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedKisis
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KisiId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedKisis
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedKisis
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %

��% 2
)
��2 3
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedKisis
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
SubeId
��J P
,
��P Q
p
��R S
.
��S T
Id
��T V
}
��W X
)
��X Y
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
SubeId
��H N
,
��N O
d
��P Q
.
��Q R
FeedId
��R X
}
��Y Z
)
��Z [
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' K
)
��K L
;
��L M
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSocialFeedLink
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- H
)
��H I
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedLinks
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Link
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedLinks
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
LinkId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' K
)
��K L
;
��L M
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedLinks
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaId
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeId
��; A
}
��B C
)
��C D
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedLinks
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
}
��E F
)
��F G
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %

��% 2
)
��2 3
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSocialFeedLinks
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
FirmaId
��? F
,
��F G
p
��H I
.
��I J
SubeId
��J P
,
��P Q
p
��R S
.
��S T
Id
��T V
}
��W X
)
��X Y
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeId
��0 9
,
��9 :
d
��; <
.
��< =
FirmaId
��= D
,
��D E
d
��F G
.
��G H
SubeId
��H N
,
��N O
d
��P Q
.
��Q R
FeedId
��R X
}
��Y Z
)
��Z [
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' K
)
��K L
;
��L M
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSocialFeedTip
��  0
>
��0 1
(
��1 2
entity
��2 8
=>
��9 ;
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
,
��* +
$str
��, E
)
��E F
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- G
)
��G H
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

��  -
>
��- .
(
��. /
entity
��/ 5
=>
��6 8
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� .
)
��. /
;
��/ 0
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- D
)
��D E
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Link
��' +
,
��+ ,
$str
��- D
)
��D E
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Tanim
��' ,
,
��, -
$str
��. F
)
��F G
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aktif
��' ,
)
��, -
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	KisaTanim
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Link
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	Onaylandi
��' 0
)
��0 1
.
�� 

IsRequired
�� 
(
��  
)
��  !
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Tanim
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSsodavet
��  +
>
��+ ,
(
��, -
entity
��- 3
=>
��4 6
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� ,
)
��, -
;
��- .
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSsodavetDetay
��  0
>
��0 1
(
��1 2
entity
��2 8
=>
��9 ;
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Firma
��% *
)
��* +
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsodavetDetays
��% 6
)
��6 7
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
FirmaId
��* 1
)
��1 2
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsodavetDetays
��% 6
)
��6 7
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' N
)
��N O
;
��O P
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Master
��% +
)
��+ ,
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsodavetDetays
��% 6
)
��6 7
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
MasterId
��* 2
)
��2 3
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' H
)
��H I
;
��I J
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Sube
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsodavetDetays
��% 6
)
��6 7
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
SubeId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' K
)
��K L
;
��L M
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

TblSsohost
��  *
>
��* +
(
��+ ,
entity
��, 2
=>
��3 5
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� +
)
��+ ,
;
��, -
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FirmaId
��' .
)
��. /
.
��/ 0 
HasDefaultValueSql
��0 B
(
��B C
$str
��C K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SubeId
��' -
)
��- .
.
��. / 
HasDefaultValueSql
��/ A
(
��A B
$str
��B J
)
��J K
;
��K L
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Yil
��' *
)
��* +
.
��+ , 
HasDefaultValueSql
��, >
(
��> ?
$str
��? [
)
��[ \
;
��\ ]
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Isletme
��% ,
)
��, -
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsohosts
��% 0
)
��0 1
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeId
��* 3
)
��3 4
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' H
)
��H I
;
��I J
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  

TblSsoizin
��  *
>
��* +
(
��+ ,
entity
��, 2
=>
��3 5
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� +
)
��+ ,
;
��, -
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Kullanici
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsoizins
��% 0
)
��0 1
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' F
)
��F G
;
��G H
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSsokullanici
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- F
)
��F G
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UserName
��' /
,
��/ 0
$str
��1 N
)
��N O
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AuthType
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Name
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ProfilResmi
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SurName
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Telefon
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TimeZone
��' /
)
��/ 0
.
��0 1 
HasDefaultValueSql
��1 C
(
��C D
$str
��D ^
)
��^ _
;
��_ `
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UserName
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
KullaniciTip
��% 1
)
��1 2
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsokullanicis
��% 5
)
��5 6
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciTipId
��* 8
)
��8 9
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  !
TblSsokullaniciTipi
��  3
>
��3 4
(
��4 5
entity
��5 ;
=>
��< >
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
,
��/ 0
$str
��1 R
)
��R S
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- J
)
��J K
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Aciklama
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DegisiklikTarih
��' 6
)
��6 7
.
��7 8

��8 E
(
��E F
$str
��F P
)
��P Q
;
��Q R
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
�� 

�� "
(
��" #
$str
��# -
)
��- .
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( 5
)
��5 6
;
��6 7
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSsotoken
��  +
>
��+ ,
(
��, -
entity
��- 3
=>
��4 6
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� ,
)
��, -
;
��- .
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	AuthToken
��- 6
,
��6 7
e
��8 9
.
��9 :
AccessToken
��: E
}
��F G
,
��G H
$str
��I e
)
��e f
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- B
)
��B C
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	RequestId
��- 6
,
��6 7
e
��8 9
.
��9 :
	AuthToken
��: C
}
��D E
,
��E F
$str
��G d
)
��d e
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AccessToken
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G R
)
��R S
;
��S T
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AuthCode
��' /
)
��/ 0
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" $
)
��$ %
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	AuthToken
��' 0
)
��0 1
.
��1 2 
HasDefaultValueSql
��2 D
(
��D E
$str
��E P
)
��P Q
;
��Q R
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	ExpiresOn
��' 0
)
��0 1
.
��1 2 
HasDefaultValueSql
��2 D
(
��D E
$str
��E R
)
��R S
;
��S T
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IssuedOn
��' /
)
��/ 0
.
��0 1 
HasDefaultValueSql
��1 C
(
��C D
$str
��D Q
)
��Q R
;
��R S
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KillMsg
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
LastOperationDate
��' 8
)
��8 9
.
�� 

�� "
(
��" #
$str
��# -
)
��- .
.
��  
HasDefaultValueSql
�� '
(
��' (
$str
��( 5
)
��5 6
;
��6 7
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	RequestId
��' 0
)
��0 1
.
��1 2 
HasDefaultValueSql
��2 D
(
��D E
$str
��E P
)
��P Q
;
��Q R
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Source
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
User
��% )
)
��) *
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ %
TblSsotokens
��% 1
)
��1 2
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
UserId
��* 0
)
��0 1
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' G
)
��G H
;
��H I
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
TblSsoyonlendirme
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
ToTable
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
,
��+ ,
$str
��- H
)
��H I
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
HasIndex
�� 
(
��  
e
��  !
=>
��" $
new
��% (
{
��) *
e
��+ ,
.
��, -
	IsletmeNo
��- 6
,
��6 7
e
��8 9
.
��9 :
FirmaNo
��: A
,
��A B
e
��C D
.
��D E
KullaniciId
��E P
,
��P Q
e
��R S
.
��S T

��T a
}
��b c
,
��c d
$str��e �
)��� �
.
�� 
IsUnique
�� 
(
�� 
)
�� 
;
��  
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Guid
��' +
)
��+ ,
.
��, - 
HasDefaultValueSql
��- ?
(
��? @
$str
��@ K
)
��K L
;
��L M
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IsletmeUrlOnEk
��' 5
)
��5 6
.
��6 7
HasMaxLength
��7 C
(
��C D
$num
��D F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturanId
��' 2
)
��2 3
.
��3 4 
HasDefaultValueSql
��4 F
(
��F G
$str
��G O
)
��O P
;
��P Q
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
OlusturmaTarih
��' 5
)
��5 6
.
��6 7 
HasDefaultValueSql
��7 I
(
��I J
$str
��J W
)
��W X
;
��X Y
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
Application
��% 0
)
��0 1
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSsoyonlendirmes
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *

��* 7
)
��7 8
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' S
)
��S T
;
��T U
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %!
IsletmeNoNavigation
��% 8
)
��8 9
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSsoyonlendirmes
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
	IsletmeNo
��* 3
)
��3 4
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' O
)
��O P
;
��P Q
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
	Kullanici
��% .
)
��. /
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSsoyonlendirmes
��% 7
)
��7 8
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
d
��( )
.
��) *
KullaniciId
��* 5
)
��5 6
.
�� 
OnDelete
�� 
(
�� 
DeleteBehavior
�� ,
.
��, -

��- :
)
��: ;
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralSube
��% 3
)
��3 4
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSsoyonlendirmes
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
FirmaId
��2 9
,
��9 :
p
��; <
.
��< =
Id
��= ?
}
��@ A
)
��A B
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
FirmaNo
��0 7
,
��7 8
d
��9 :
.
��: ;
SubeNo
��; A
}
��B C
)
��C D
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' L
)
��L M
;
��M N
entity
�� 
.
�� 
HasOne
�� 
(
�� 
d
�� 
=>
��  "
d
��# $
.
��$ %
TblGeneralFirma
��% 4
)
��4 5
.
�� 
WithMany
�� 
(
�� 
p
�� 
=>
��  "
p
��# $
.
��$ % 
TblSsoyonlendirmes
��% 7
)
��7 8
.
�� 
HasPrincipalKey
�� $
(
��$ %
p
��% &
=>
��' )
new
��* -
{
��. /
p
��0 1
.
��1 2
	IsletmeId
��2 ;
,
��; <
p
��= >
.
��> ?
Id
��? A
}
��B C
)
��C D
.
�� 

�� "
(
��" #
d
��# $
=>
��% '
new
��( +
{
��, -
d
��. /
.
��/ 0
	IsletmeNo
��0 9
,
��9 :
d
��; <
.
��< =
FirmaNo
��= D
}
��E F
)
��F G
.
�� 
HasConstraintName
�� &
(
��& '
$str
��' M
)
��M N
;
��N O
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
	VwAlpatum
��  )
>
��) *
(
��* +
entity
��+ 1
=>
��2 4
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� (
)
��( )
;
��) *
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DaireNo
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FaxNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlAdi
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlceAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

IsletmeAdi
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KapiNo
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	MahKoyAdi
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
MersisNo
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UlkeAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
VergiDairesi
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
WebSiteAdres
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
	VwAppMenu
��  )
>
��) *
(
��* +
entity
��+ 1
=>
��2 4
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� )
)
��) *
;
��* +
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AppGuid
��' .
)
��. /
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" #
)
��# $
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwFavorilerInfo
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Url
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwFeed
��  &
>
��& '
(
��' (
entity
��( .
=>
��/ 1
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� &
)
��& '
;
��' (
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AdSoyad
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Link
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	ResimLink
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? B
)
��B C
;
��C D
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Text
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipAciklama
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TipAdi
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< ?
)
��? @
;
��@ A
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwGeneralFirmInfo
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DaireNo
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FaxNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlAdi
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlceAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

IsletmeAdi
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KapiNo
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	MahKoyAdi
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
MersisNo
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UlkeAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
VergiDairesi
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
WebSiteAdres
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  $
VwGeneralGrupKullanici
��  6
>
��6 7
(
��7 8
entity
��8 >
=>
��? A
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AdSoyad
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Soyad
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  (
VwGeneralGrupKullaniciInfo
��  :
>
��: ;
(
��; <
entity
��< B
=>
��C E
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AdSoyad
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KisaAd
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ProfilResmi
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SoyAd
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  -
VwGeneralIsletmeApplicationInfo
��  ?
>
��? @
(
��@ A
entity
��A G
=>
��H J
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Application
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BaseApiOnEk
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
VwGeneralIsletmeInfo
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FirmaAdi
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

IsletmeAdi
��' 1
)
��1 2
.
��2 3
HasMaxLength
��3 ?
(
��? @
$num
��@ C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IsletmeUrlOnEk
��' 5
)
��5 6
.
��6 7
HasMaxLength
��7 C
(
��C D
$num
��D F
)
��F G
;
��G H
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SubeAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C F
)
��F G
;
��G H
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  $
VwGeneralPasifKulanici
��  6
>
��6 7
(
��7 8
entity
��8 >
=>
��? A
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ApprovedAciklama
��' 7
)
��7 8
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" #
)
��# $
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Name
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SurName
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Telefon
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UserName
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  )
VwGeneralRedDurumYetkiGenel
��  ;
>
��; <
(
��< =
entity
��= C
=>
��D F
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  '
VwGeneralRedNedenYeriInfo
��  9
>
��9 :
(
��: ;
entity
��; A
=>
��B D
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	RedNedeni
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
RedNedeniKod
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
YerAdi
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
YerKod
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  -
VwGeneralRedNedenYetkiDurumInfo
��  ?
>
��? @
(
��@ A
entity
��A G
=>
��H J
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DurumAd
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
NedenAd
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
YerAd
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  (
VwGeneralRedNedenYetkiInfo
��  :
>
��: ;
(
��; <
entity
��< B
=>
��C E
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DurumAd
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
NedenAd
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  %
VwGeneralRedNedeniGenel
��  7
>
��7 8
(
��8 9
entity
��9 ?
=>
��@ B
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Kod
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 ;
)
��; <
;
��< =
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	RedNedeni
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? A
)
��A B
;
��B C
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  &
VwGeneralSubUrlFullYetki
��  8
>
��8 9
(
��9 :
entity
��: @
=>
��A C
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Name
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
SubUrl
��' -
)
��- .
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
VwGeneralSubUrlYetki
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwGeneralSubeInfo
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adi
��' *
)
��* +
.
��+ ,
HasMaxLength
��, 8
(
��8 9
$num
��9 <
)
��< =
;
��= >
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Adres
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
DaireNo
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Email
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
FaxNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlAdi
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IlceAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
KapiNo
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
	MahKoyAdi
��' 0
)
��0 1
.
��1 2
HasMaxLength
��2 >
(
��> ?
$num
��? C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
MersisNo
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
TelNo
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '

��' 4
)
��4 5
.
��5 6
HasMaxLength
��6 B
(
��B C
$num
��C E
)
��E F
;
��F G
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
UlkeAdi
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
WebSiteAdres
��' 3
)
��3 4
.
��4 5
HasMaxLength
��5 A
(
��A B
$num
��B E
)
��E F
;
��F G
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
VwGeneralSubeKulInfo
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Firma
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; >
)
��> ?
;
��? @
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Isletme
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Sube
��' +
)
��+ ,
.
��, -
HasMaxLength
��- 9
(
��9 :
$num
��: =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  "
VwIsletmeApplication
��  4
>
��4 5
(
��5 6
entity
��6 <
=>
��= ?
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Application
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwKullaniciEkAlan
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Baslik
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
ModulAdi
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwSubeKullanici
��  /
>
��/ 0
(
��0 1
entity
��1 7
=>
��8 :
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
AdSoyad
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Eposta
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Soyad
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
}
�� 
)
��
;
�� 
modelBuilder
�� 
.
�� 
Entity
�� 
<
��  
VwUserApplication
��  1
>
��1 2
(
��2 3
entity
��3 9
=>
��: <
{
�� 
entity
�� 
.
�� 
HasNoKey
�� 
(
��  
)
��  !
;
��! "
entity
�� 
.
�� 
ToView
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Ad
��' )
)
��) *
.
��* +
HasMaxLength
��+ 7
(
��7 8
$num
��8 :
)
��: ;
;
��; <
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Application
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A C
)
��C D
;
��D E
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
BaseUrl
��' .
)
��. /
.
��/ 0
HasMaxLength
��0 <
(
��< =
$num
��= @
)
��@ A
;
��A B
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Description
��' 2
)
��2 3
.
��3 4
HasMaxLength
��4 @
(
��@ A
$num
��A D
)
��D E
;
��E F
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Eposta
��' -
)
��- .
.
��. /
HasMaxLength
��/ ;
(
��; <
$num
��< ?
)
��? @
;
��@ A
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
IconHtml
��' /
)
��/ 0
.
��0 1
HasMaxLength
��1 =
(
��= >
$num
��> A
)
��A B
;
��B C
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Path
��' +
)
��+ ,
.
�� 
HasMaxLength
�� !
(
��! "
$num
��" %
)
��% &
.
�� 
	IsUnicode
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
entity
�� 
.
�� 
Property
�� 
(
��  
e
��  !
=>
��" $
e
��% &
.
��& '
Soyad
��' ,
)
��, -
.
��- .
HasMaxLength
��. :
(
��: ;
$num
��; =
)
��= >
;
��> ?
}
�� 
)
��
;
�� $
OnModelCreatingPartial
�� "
(
��" #
modelBuilder
��# /
)
��/ 0
;
��0 1
}
�� 	
partial
�� 
void
�� $
OnModelCreatingPartial
�� +
(
��+ ,
ModelBuilder
��, 8
modelBuilder
��9 E
)
��E F
;
��F G
}
�� 
}�� �!
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblCmsappMenu.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
public

 

partial

 
class

 


 &
{ 
public 

( 
) 
{

= 
new 
HashSet  '
<' (

>5 6
(6 7
)7 8
;8 9
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Sira 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
long 
NavigationId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
Icon 
{ 
get !
;! "
set# &
;& '
}( )
public   
long   
?   
MasterId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public!! 
bool!! 

{!!" #
get!!$ '
;!!' (
set!!) ,
;!!, -
}!!. /
public"" 
bool"" 
DisUrl"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public$$ 
virtual$$ 

?$$$ %
Master$$& ,
{$$- .
get$$/ 2
;$$2 3
set$$4 7
;$$7 8
}$$9 :
public%% 
virtual%% 
TblCmsappNavigation%% *

Navigation%%+ 5
{%%6 7
get%%8 ;
;%%; <
set%%= @
;%%@ A
}%%B C
=%%D E
null%%F J
!%%J K
;%%K L
public&& 
virtual&& 
ICollection&& "
<&&" #

>&&0 1

{&&@ A
get&&B E
;&&E F
set&&G J
;&&J K
}&&L M
}(( 
})) �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblCmsappNavigation.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblCmsappNavigation ,
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
long 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
SubUrl 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 
ICollection 
< 
TblGeneralFavoriler .
>. /

Favorilers0 :
{; <
get= @
;@ A
setB E
;E F
}F G
} 
} �
LC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblCmsnavYetki.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblCmsnavYetki '
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
? 
KullaniciId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
long 
? 
	KulGrupId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
NavigationId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblCmsVersion.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
AppType 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
PlatformType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
string 
? 
Link 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblDigiBidatabaseDosyalar.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class %
TblDigiBidatabaseDosyalar 2
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
SubeKodu 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public
DateTime
OlusturmaTarih
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 

DatabaseId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
DosyaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
	FirmaKodu 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
IsletmeKodu 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �$
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblDigiBidatabaseler.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblDigiBidatabaseler -
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
long		 
Revizyon		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
Silindi

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
string 
? 
UserName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 

ServerName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
DatabaseName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
long 
DosyaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
Tip 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
IsletmeFirmaEkle $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
BaglantiAdi "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public   
virtual   
TblGeneralFirma   &
TblGeneralFirma  ' 6
{  7 8
get  9 <
;  < =
set  > A
;  A B
}  C D
=  E F
null  G K
!  K L
;  L M
public!! 
virtual!! 
TblGeneralSube!! %
TblGeneralSube!!& 4
{!!5 6
get!!7 :
;!!: ;
set!!< ?
;!!? @
}!!A B
=!!C D
null!!E I
!!!I J
;!!J K
}"" 
}## �"
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblDigiBidosyaSistemi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblDigiBidosyaSistemi .
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
? 

UstDosyaId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
? 
Aciklama 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Tip 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Yol 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
long 
Boyut 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
}   
}!! �
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblDigiBifavoriDosyalar.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblDigiBifavoriDosyalar 0
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
DosyaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
} 
} �
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblDigiBipaylasim.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblDigiBipaylasim *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
DosyaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
PaylasimTipi #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
} 
} �.
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblFileDosyaSistemi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblFileDosyaSistemi ,
{ 
public 
TblFileDosyaSistemi "
(" #
)# $
{		 	
InverseUstDosya

 
=

 
new

 !
HashSet

" )
<

) *
TblFileDosyaSistemi

* =
>

= >
(

> ?
)

? @
;

@ A"
TblFileFavoriDosyalars "
=# $
new% (
HashSet) 0
<0 1!
TblFileFavoriDosyalar1 F
>F G
(G H
)H I
;I J
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
? 

UstDosyaId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
? 
Aciklama 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Tip 
{ 
get 
; 
set !
;! "
}# $
public   
string   
Yol   
{   
get   
;    
set  ! $
;  $ %
}  & '
=  ( )
null  * .
!  . /
;  / 0
public!! 
long!! 
Boyut!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
public"" 
string"" 
?"" 
Modul"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public$$ 
virtual$$ 
TblGeneralIsletme$$ (
Isletme$$) 0
{$$1 2
get$$3 6
;$$6 7
set$$8 ;
;$$; <
}$$= >
=$$? @
null$$A E
!$$E F
;$$F G
public%% 
virtual%% 
TblSsokullanici%% &
	Olusturan%%' 0
{%%1 2
get%%3 6
;%%6 7
set%%8 ;
;%%; <
}%%= >
=%%? @
null%%A E
!%%E F
;%%F G
public&& 
virtual&& 
TblGeneralFirma&& &
TblGeneralFirma&&' 6
{&&7 8
get&&9 <
;&&< =
set&&> A
;&&A B
}&&C D
=&&E F
null&&G K
!&&K L
;&&L M
public'' 
virtual'' 
TblGeneralSube'' %
TblGeneralSube''& 4
{''5 6
get''7 :
;'': ;
set''< ?
;''? @
}''A B
=''C D
null''E I
!''I J
;''J K
public(( 
virtual(( 
TblFileDosyaSistemi(( *
?((* +
UstDosya((, 4
{((5 6
get((7 :
;((: ;
set((< ?
;((? @
}((A B
public)) 
virtual)) 
ICollection)) "
<))" #
TblFileDosyaSistemi))# 6
>))6 7
InverseUstDosya))8 G
{))H I
get))J M
;))M N
set))O R
;))R S
}))T U
public** 
virtual** 
ICollection** "
<**" #!
TblFileFavoriDosyalar**# 8
>**8 9"
TblFileFavoriDosyalars**: P
{**Q R
get**S V
;**V W
set**X [
;**[ \
}**] ^
}++ 
},, � 
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblFileFavoriDosyalar.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblFileFavoriDosyalar .
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
DosyaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
TblFileDosyaSistemi *
Dosya+ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public 
virtual 
TblSsokullanici &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
null< @
!@ A
;A B
} 
} �/
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralApplication.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblGeneralApplication .
{ 
public !
TblGeneralApplication $
($ %
)% &
{		 	!
TblGeneralIslemKilits

 !
=

" #
new

$ '
HashSet

( /
<

/ 0 
TblGeneralIslemKilit

0 D
>

D E
(

E F
)

F G
;

G H)
TblGeneralIsletmeApplications )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIsletmeApplication8 T
>T U
(U V
)V W
;W X&
TblGeneralKullaniciEkAlans &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralKullaniciEkAlan5 N
>N O
(O P
)P Q
;Q R&
TblGeneralUserApplications
=
new
HashSet
<
TblGeneralUserApplication
>
(
)
;
TblSsoyonlendirmes 
=  
new! $
HashSet% ,
<, -
TblSsoyonlendirme- >
>> ?
(? @
)@ A
;A B
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Sira 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Application !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Path 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
IconHtml 
{  !
get" %
;% &
set' *
;* +
}, -
public   
string   
?   
BaseUrl   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public!! 
bool!! 
	SystemApp!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
bool"" 
?"" 
ParametreAktif"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
public## 
string## 
?## 
BaseApiOnEk## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
public$$ 
bool$$ 

DisariAcik$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
public&& 
virtual&& 
ICollection&& "
<&&" # 
TblGeneralIslemKilit&&# 7
>&&7 8!
TblGeneralIslemKilits&&9 N
{&&O P
get&&Q T
;&&T U
set&&V Y
;&&Y Z
}&&[ \
public'' 
virtual'' 
ICollection'' "
<''" #(
TblGeneralIsletmeApplication''# ?
>''? @)
TblGeneralIsletmeApplications''A ^
{''_ `
get''a d
;''d e
set''f i
;''i j
}''k l
public(( 
virtual(( 
ICollection(( "
<((" #%
TblGeneralKullaniciEkAlan((# <
>((< =&
TblGeneralKullaniciEkAlans((> X
{((Y Z
get(([ ^
;((^ _
set((` c
;((c d
}((e f
public)) 
virtual)) 
ICollection)) "
<))" #%
TblGeneralUserApplication))# <
>))< =&
TblGeneralUserApplications))> X
{))Y Z
get))[ ^
;))^ _
set))` c
;))c d
}))e f
public** 
virtual** 
ICollection** "
<**" #
TblSsoyonlendirme**# 4
>**4 5
TblSsoyonlendirmes**6 H
{**I J
get**K N
;**N O
set**P S
;**S T
}**U V
}++ 
},, �
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBanka.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralBanka (
{ 
public 
TblGeneralBanka 
( 
)  
{		 	 
TblGeneralBankaSubes

  
=

! "
new

# &
HashSet

' .
<

. /
TblGeneralBankaSube

/ B
>

B C
(

C D
)

D E
;

E F
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kodu 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
? 
	GenelKodu  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Tip 
{ 
get 
; 
set !
;! "
}# $
public 
string 
? 
Erpkodu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
ICollection "
<" #
TblGeneralBankaSube# 6
>6 7 
TblGeneralBankaSubes8 L
{M N
getO R
;R S
setT W
;W X
}Y Z
} 
} �#
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBankaSube.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralBankaSube ,
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
BankaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Kodu 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
long 
IlId 
{ 
get 
; 
set  #
;# $
}% &
public 
long 
IlceId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Adres 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
string 
Telefon 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
string 
Faks 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
? 
	GenelKodu  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
Erpkodu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
TblGeneralBanka &
Banka' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIl #
Il$ &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 
virtual 
TblGeneralIlce %
IlNavigation& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
}   
}!! �	
VC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBelgeDurumlari.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class $
TblGeneralBelgeDurumlari 1
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
int		 
DurumId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
long

 
IslemTip

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
BelgeDurumu !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public
virtual
TblGeneralIslemTipi
IslemTipNavigation
{
get
;
set
;
}
=
null
!
;
} 
} �
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBnkBelgeDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralBnkBelgeDurum 0
{ 
public 
long 
DurumId 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
?		 
BelgeDurumu		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
}

 
} �
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBnkEftDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblGeneralBnkEftDurum .
{ 
public 
long 
DurumId 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
	HavaleEft		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
=		. /
null		0 4
!		4 5
;		5 6
}

 
} �
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBnkHarDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblGeneralBnkHarDurum .
{ 
public 
long 
TipId 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
?		 
HareketDurum		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
}

 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBnkHarKynk.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralBnkHarKynk -
{ 
public 
long 
KaynakTipId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
?		 
Kaynak		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
} �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralBnkHarTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralBnkHarTip ,
{ 
public 
long 
TipId 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
?		 
BankaHareket		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
}

 
} �
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralDil.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
KisaKod 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Lang 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
} 
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralEevrakDurumlari.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class %
TblGeneralEevrakDurumlari 2
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
int		 
DurumId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
BelgeDurumu

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
null

2 6
!

6 7
;

7 8
} 
} �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralEfatMukellef.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralEfatMukellef /
{ 
public "
TblGeneralEfatMukellef %
(% &
)& '
{		 	'
TblGeneralEfatMukellefMails

 '
=

( )
new

* -
HashSet

. 5
<

5 6&
TblGeneralEfatMukellefMail

6 P
>

P Q
(

Q R
)

R S
;

S T
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Vkn 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Unvan 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
int 
Tip 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 
Tarih 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
Erpkodu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
ICollection "
<" #&
TblGeneralEfatMukellefMail# =
>= >'
TblGeneralEfatMukellefMails? Z
{[ \
get] `
;` a
setb e
;e f
}g h
} 
} �
XC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralEfatMukellefMail.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class &
TblGeneralEfatMukellefMail 3
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 

MukellefId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
EpostaAdres !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
string 
? 
Erpkodu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual "
TblGeneralEfatMukellef -
Mukellef. 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
} 
} �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralFavoriler.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralFavoriler ,
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
KisiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
NavigationId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblSsokullanici &
Kisi' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
null< @
!@ A
;A B
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public 
virtual #
TblGeneralSubeKullanici .#
TblGeneralSubeKullanici/ F
{G H
getI L
;L M
setN Q
;Q R
}S T
=U V
nullW [
![ \
;\ ]
} 
} ǈ
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralFirma.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralFirma (
{ 
public 
TblGeneralFirma 
( 
)  
{		 	!
TblDigiBidatabaselers

 !
=

" #
new

$ '
HashSet

( /
<

/ 0 
TblDigiBidatabaseler

0 D
>

D E
(

E F
)

F G
;

G H"
TblDigiBidosyaSistemis "
=# $
new% (
HashSet) 0
<0 1!
TblDigiBidosyaSistemi1 F
>F G
(G H
)H I
;I J$
TblDigiBifavoriDosyalars $
=% &
new' *
HashSet+ 2
<2 3#
TblDigiBifavoriDosyalar3 J
>J K
(K L
)L M
;M N
TblDigiBipaylasims
=
new
HashSet
<
TblDigiBipaylasim
>
(
)
;
TblFileDosyaSistemis  
=! "
new# &
HashSet' .
<. /
TblFileDosyaSistemi/ B
>B C
(C D
)D E
;E F"
TblFileFavoriDosyalars "
=# $
new% (
HashSet) 0
<0 1!
TblFileFavoriDosyalar1 F
>F G
(G H
)H I
;I J 
TblGeneralFavorilers  
=! "
new# &
HashSet' .
<. /
TblGeneralFavoriler/ B
>B C
(C D
)D E
;E F)
TblGeneralIslemSeriTanimlamas )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIslemSeriTanimlama8 T
>T U
(U V
)V W
;W X!
TblGeneralLidosDurums !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralLidosDurum0 D
>D E
(E F
)F G
;G H$
TblGeneralLidosTalepTips $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralLidosTalepTip3 J
>J K
(K L
)L M
;M N#
TblGeneralRedNedenYeris #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRedNedenYeri2 H
>H I
(I J
)J K
;K L$
TblGeneralRedNedenYetkis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralRedNedenYetki3 J
>J K
(K L
)L M
;M N 
TblGeneralRedNedenis  
=! "
new# &
HashSet' .
<. /
TblGeneralRedNedeni/ B
>B C
(C D
)D E
;E F
TblGeneralRedYeris 
=  
new! $
HashSet% ,
<, -
TblGeneralRedYeri- >
>> ?
(? @
)@ A
;A B#
TblGeneralRehberColumns #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRehberColumn2 H
>H I
(I J
)J K
;K L!
TblGeneralRehberViews !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralRehberView0 D
>D E
(E F
)F G
;G H
TblGeneralRehbers 
= 
new  #
HashSet$ +
<+ ,
TblGeneralRehber, <
>< =
(= >
)> ?
;? @$
TblGeneralSubeKullanicis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralSubeKullanici3 J
>J K
(K L
)L M
;M N
TblGeneralSubes 
= 
new !
HashSet" )
<) *
TblGeneralSube* 8
>8 9
(9 :
): ;
;; <&
TblGeneralUserApplications &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralUserApplication5 N
>N O
(O P
)P Q
;Q R

TblOptions 
= 
new 
HashSet $
<$ %
	TblOption% .
>. /
(/ 0
)0 1
;1 2
TblSocialFeedKisis 
=  
new! $
HashSet% ,
<, -
TblSocialFeedKisi- >
>> ?
(? @
)@ A
;A B
TblSocialFeedLinks   
=    
new  ! $
HashSet  % ,
<  , -
TblSocialFeedLink  - >
>  > ?
(  ? @
)  @ A
;  A B
TblSocialFeeds!! 
=!! 
new!!  
HashSet!!! (
<!!( )

>!!6 7
(!!7 8
)!!8 9
;!!9 :
TblSsodavetDetays"" 
="" 
new""  #
HashSet""$ +
<""+ ,
TblSsodavetDetay"", <
>""< =
(""= >
)""> ?
;""? @
TblSsoyonlendirmes## 
=##  
new##! $
HashSet##% ,
<##, -
TblSsoyonlendirme##- >
>##> ?
(##? @
)##@ A
;##A B
}$$ 	
public&& 
long&& 
Id&& 
{&& 
get&& 
;&& 
set&& !
;&&! "
}&&# $
public'' 
bool'' 
Silindi'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
public(( 
long(( 
Revizyon(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public)) 
DateTime)) 
OlusturmaTarih)) &
{))' (
get))) ,
;)), -
set)). 1
;))1 2
}))3 4
public** 
DateTime** 
?** 
DegisiklikTarih** (
{**) *
get**+ .
;**. /
set**0 3
;**3 4
}**5 6
public++ 
long++ 
OlusturanId++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public,, 
long,, 
?,, 
DegistirenId,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
public-- 
Guid-- 
Guid-- 
{-- 
get-- 
;-- 
set--  #
;--# $
}--% &
public.. 
bool.. 
Aktif.. 
{.. 
get.. 
;..  
set..! $
;..$ %
}..& '
public// 
bool// 
	Onaylandi// 
{// 
get//  #
;//# $
set//% (
;//( )
}//* +
public00 
long00 
	IsletmeId00 
{00 
get00  #
;00# $
set00% (
;00( )
}00* +
public11 
int11 
FirmaKod11 
{11 
get11 !
;11! "
set11# &
;11& '
}11( )
public22 
string22 
Adi22 
{22 
get22 
;22  
set22! $
;22$ %
}22& '
=22( )
null22* .
!22. /
;22/ 0
public33 
string33 

{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
=332 3
null334 8
!338 9
;339 :
public44 
string44 
?44 
VergiDairesi44 #
{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
public55 
string55 
?55 
MersisNo55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
public66 
string66 
?66 

{66% &
get66' *
;66* +
set66, /
;66/ 0
}661 2
public77 
string77 
?77 
WebSiteAdres77 #
{77$ %
get77& )
;77) *
set77+ .
;77. /
}770 1
public88 
string88 
?88 
Email88 
{88 
get88 "
;88" #
set88$ '
;88' (
}88) *
public99 
bool99 
AcikAdresMi99 
{99  !
get99" %
;99% &
set99' *
;99* +
}99, -
public:: 
string:: 
?:: 
Adres:: 
{:: 
get:: "
;::" #
set::$ '
;::' (
}::) *
public;; 
long;; 
?;; 
UlkeId;; 
{;; 
get;; !
;;;! "
set;;# &
;;;& '
};;( )
public<< 
long<< 
?<< 
IlId<< 
{<< 
get<< 
;<<  
set<<! $
;<<$ %
}<<& '
public== 
long== 
?== 
IlceId== 
{== 
get== !
;==! "
set==# &
;==& '
}==( )
public>> 
long>> 
?>> 
MahKoyId>> 
{>> 
get>>  #
;>># $
set>>% (
;>>( )
}>>* +
public?? 
string?? 
??? 
KapiNo?? 
{?? 
get??  #
;??# $
set??% (
;??( )
}??* +
public@@ 
string@@ 
?@@ 
DaireNo@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicAA 
stringAA 
?AA 
TelNoAA 
{AA 
getAA "
;AA" #
setAA$ '
;AA' (
}AA) *
publicBB 
stringBB 
?BB 
FaxNoBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
publicCC 
stringCC 
?CC 
YeniAlanCC 
{CC  !
getCC" %
;CC% &
setCC' *
;CC* +
}CC, -
publicEE 
virtualEE 
TblGeneralIsletmeEE (
IsletmeEE) 0
{EE1 2
getEE3 6
;EE6 7
setEE8 ;
;EE; <
}EE= >
=EE? @
nullEEA E
!EEE F
;EEF G
publicFF 
virtualFF 
ICollectionFF "
<FF" # 
TblDigiBidatabaselerFF# 7
>FF7 8!
TblDigiBidatabaselersFF9 N
{FFO P
getFFQ T
;FFT U
setFFV Y
;FFY Z
}FF[ \
publicGG 
virtualGG 
ICollectionGG "
<GG" #!
TblDigiBidosyaSistemiGG# 8
>GG8 9"
TblDigiBidosyaSistemisGG: P
{GGQ R
getGGS V
;GGV W
setGGX [
;GG[ \
}GG] ^
publicHH 
virtualHH 
ICollectionHH "
<HH" ##
TblDigiBifavoriDosyalarHH# :
>HH: ;$
TblDigiBifavoriDosyalarsHH< T
{HHU V
getHHW Z
;HHZ [
setHH\ _
;HH_ `
}HHa b
publicII 
virtualII 
ICollectionII "
<II" #
TblDigiBipaylasimII# 4
>II4 5
TblDigiBipaylasimsII6 H
{III J
getIIK N
;IIN O
setIIP S
;IIS T
}IIU V
publicJJ 
virtualJJ 
ICollectionJJ "
<JJ" #
TblFileDosyaSistemiJJ# 6
>JJ6 7 
TblFileDosyaSistemisJJ8 L
{JJM N
getJJO R
;JJR S
setJJT W
;JJW X
}JJY Z
publicKK 
virtualKK 
ICollectionKK "
<KK" #!
TblFileFavoriDosyalarKK# 8
>KK8 9"
TblFileFavoriDosyalarsKK: P
{KKQ R
getKKS V
;KKV W
setKKX [
;KK[ \
}KK] ^
publicLL 
virtualLL 
ICollectionLL "
<LL" #
TblGeneralFavorilerLL# 6
>LL6 7 
TblGeneralFavorilersLL8 L
{LLM N
getLLO R
;LLR S
setLLT W
;LLW X
}LLY Z
publicMM 
virtualMM 
ICollectionMM "
<MM" #(
TblGeneralIslemSeriTanimlamaMM# ?
>MM? @)
TblGeneralIslemSeriTanimlamasMMA ^
{MM_ `
getMMa d
;MMd e
setMMf i
;MMi j
}MMk l
publicNN 
virtualNN 
ICollectionNN "
<NN" # 
TblGeneralLidosDurumNN# 7
>NN7 8!
TblGeneralLidosDurumsNN9 N
{NNO P
getNNQ T
;NNT U
setNNV Y
;NNY Z
}NN[ \
publicOO 
virtualOO 
ICollectionOO "
<OO" ##
TblGeneralLidosTalepTipOO# :
>OO: ;$
TblGeneralLidosTalepTipsOO< T
{OOU V
getOOW Z
;OOZ [
setOO\ _
;OO_ `
}OOa b
publicPP 
virtualPP 
ICollectionPP "
<PP" #"
TblGeneralRedNedenYeriPP# 9
>PP9 :#
TblGeneralRedNedenYerisPP; R
{PPS T
getPPU X
;PPX Y
setPPZ ]
;PP] ^
}PP_ `
publicQQ 
virtualQQ 
ICollectionQQ "
<QQ" ##
TblGeneralRedNedenYetkiQQ# :
>QQ: ;$
TblGeneralRedNedenYetkisQQ< T
{QQU V
getQQW Z
;QQZ [
setQQ\ _
;QQ_ `
}QQa b
publicRR 
virtualRR 
ICollectionRR "
<RR" #
TblGeneralRedNedeniRR# 6
>RR6 7 
TblGeneralRedNedenisRR8 L
{RRM N
getRRO R
;RRR S
setRRT W
;RRW X
}RRY Z
publicSS 
virtualSS 
ICollectionSS "
<SS" #
TblGeneralRedYeriSS# 4
>SS4 5
TblGeneralRedYerisSS6 H
{SSI J
getSSK N
;SSN O
setSSP S
;SSS T
}SSU V
publicTT 
virtualTT 
ICollectionTT "
<TT" #"
TblGeneralRehberColumnTT# 9
>TT9 :#
TblGeneralRehberColumnsTT; R
{TTS T
getTTU X
;TTX Y
setTTZ ]
;TT] ^
}TT_ `
publicUU 
virtualUU 
ICollectionUU "
<UU" # 
TblGeneralRehberViewUU# 7
>UU7 8!
TblGeneralRehberViewsUU9 N
{UUO P
getUUQ T
;UUT U
setUUV Y
;UUY Z
}UU[ \
publicVV 
virtualVV 
ICollectionVV "
<VV" #
TblGeneralRehberVV# 3
>VV3 4
TblGeneralRehbersVV5 F
{VVG H
getVVI L
;VVL M
setVVN Q
;VVQ R
}VVS T
publicWW 
virtualWW 
ICollectionWW "
<WW" ##
TblGeneralSubeKullaniciWW# :
>WW: ;$
TblGeneralSubeKullanicisWW< T
{WWU V
getWWW Z
;WWZ [
setWW\ _
;WW_ `
}WWa b
publicXX 
virtualXX 
ICollectionXX "
<XX" #
TblGeneralSubeXX# 1
>XX1 2
TblGeneralSubesXX3 B
{XXC D
getXXE H
;XXH I
setXXJ M
;XXM N
}XXO P
publicYY 
virtualYY 
ICollectionYY "
<YY" #%
TblGeneralUserApplicationYY# <
>YY< =&
TblGeneralUserApplicationsYY> X
{YYY Z
getYY[ ^
;YY^ _
setYY` c
;YYc d
}YYe f
publicZZ 
virtualZZ 
ICollectionZZ "
<ZZ" #
	TblOptionZZ# ,
>ZZ, -

TblOptionsZZ. 8
{ZZ9 :
getZZ; >
;ZZ> ?
setZZ@ C
;ZZC D
}ZZE F
public[[ 
virtual[[ 
ICollection[[ "
<[[" #
TblSocialFeedKisi[[# 4
>[[4 5
TblSocialFeedKisis[[6 H
{[[I J
get[[K N
;[[N O
set[[P S
;[[S T
}[[U V
public\\ 
virtual\\ 
ICollection\\ "
<\\" #
TblSocialFeedLink\\# 4
>\\4 5
TblSocialFeedLinks\\6 H
{\\I J
get\\K N
;\\N O
set\\P S
;\\S T
}\\U V
public]] 
virtual]] 
ICollection]] "
<]]" #

>]]0 1
TblSocialFeeds]]2 @
{]]A B
get]]C F
;]]F G
set]]H K
;]]K L
}]]M N
public^^ 
virtual^^ 
ICollection^^ "
<^^" #
TblSsodavetDetay^^# 3
>^^3 4
TblSsodavetDetays^^5 F
{^^G H
get^^I L
;^^L M
set^^N Q
;^^Q R
}^^S T
public__ 
virtual__ 
ICollection__ "
<__" #
TblSsoyonlendirme__# 4
>__4 5
TblSsoyonlendirmes__6 H
{__I J
get__K N
;__N O
set__P S
;__S T
}__U V
}`` 
}aa �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralGondSekli.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralGondSekli ,
{ 
public 
long 
GonderimSekliId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
?		 

{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
}

 
} �
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralGrupKullanici.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralGrupKullanici 0
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
OlusturanId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
GrupId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual (
TblGeneralKullaniciGrupTanim 3
Grup4 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
nullI M
!M N
;N O
public 
virtual 
TblSsokullanici &
	Kullanici' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} 
} �
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralGun.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
double 
BasKm 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
? 
BitKm 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 

PlasiyerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
GunBasTarih #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 
GunBitTarih $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �&
JC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIl.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralIl %
{ 
public 
TblGeneralIl 
( 
) 
{		 	 
TblGeneralBankaSubes

  
=

! "
new

# &
HashSet

' .
<

. /
TblGeneralBankaSube

/ B
>

B C
(

C D
)

D E
;

E F
TblGeneralIlces 
= 
new !
HashSet" )
<) *
TblGeneralIlce* 8
>8 9
(9 :
): ;
;; <
TblGeneralSubes 
= 
new !
HashSet" )
<) *
TblGeneralSube* 8
>8 9
(9 :
): ;
;; <
}
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
UlkeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
? 
TelKodu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
	PlakaKodu  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 

MernisKodu !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
double 
? 
Latitude 
{  !
get" %
;% &
set' *
;* +
}, -
public   
double   
?   

Longtitude   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
public"" 
virtual"" 
TblGeneralUlke"" %
Ulke""& *
{""+ ,
get""- 0
;""0 1
set""2 5
;""5 6
}""7 8
=""9 :
null""; ?
!""? @
;""@ A
public## 
virtual## 
ICollection## "
<##" #
TblGeneralBankaSube### 6
>##6 7 
TblGeneralBankaSubes##8 L
{##M N
get##O R
;##R S
set##T W
;##W X
}##Y Z
public$$ 
virtual$$ 
ICollection$$ "
<$$" #
TblGeneralIlce$$# 1
>$$1 2
TblGeneralIlces$$3 B
{$$C D
get$$E H
;$$H I
set$$J M
;$$M N
}$$O P
public%% 
virtual%% 
ICollection%% "
<%%" #
TblGeneralSube%%# 1
>%%1 2
TblGeneralSubes%%3 B
{%%C D
get%%E H
;%%H I
set%%J M
;%%M N
}%%O P
}&& 
}'' �!
LC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIlce.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralIlce '
{ 
public 
TblGeneralIlce 
( 
) 
{		 	 
TblGeneralBankaSubes

  
=

! "
new

# &
HashSet

' .
<

. /
TblGeneralBankaSube

/ B
>

B C
(

C D
)

D E
;

E F
TblGeneralKoys 
= 
new  
HashSet! (
<( )

>6 7
(7 8
)8 9
;9 :
TblGeneralSubes 
= 
new !
HashSet" )
<) *
TblGeneralSube* 8
>8 9
(9 :
): ;
;; <
}
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
IlId 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
? 

MernisKodu !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
virtual 
TblGeneralIl #
Il$ &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 
virtual 
ICollection "
<" #
TblGeneralBankaSube# 6
>6 7 
TblGeneralBankaSubes8 L
{M N
getO R
;R S
setT W
;W X
}Y Z
public   
virtual   
ICollection   "
<  " #

>  0 1
TblGeneralKoys  2 @
{  A B
get  C F
;  F G
set  H K
;  K L
}  M N
public!! 
virtual!! 
ICollection!! "
<!!" #
TblGeneralSube!!# 1
>!!1 2
TblGeneralSubes!!3 B
{!!C D
get!!E H
;!!H I
set!!J M
;!!M N
}!!O P
}"" 
}## �
SC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIntegration.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class !
TblGeneralIntegration .
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Tip 
{ 
get 
; 
set !
;! "
}# $
public 
string 

VProjeKodu  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
string 
VOzelKod 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
VHareketTuru "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
} 
} �
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIslemBelgeTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralIslemBelgeTip 0
{ 
public 
long 
TipId 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
TipAciklama		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
=		0 1
null		2 6
!		6 7
;		7 8
}

 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIslemKilit.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralIslemKilit -
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
IslemAdi 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
IslemKod 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 

KilitTarih #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
long 
AppId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual !
TblGeneralApplication ,
App- 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} 
} �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIslemSeri.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralIslemSeri ,
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
? 
	IsletmeId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
? 
FirmaId 
{ 
get "
;" #
set$ '
;' (
}) *
public
DateTime
OlusturmaTarih
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
IslemTipiId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Seri 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
No 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
virtual 
TblGeneralIslemTipi *
	IslemTipi+ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
} 
} � 
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIslemSeriTanimlama.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class (
TblGeneralIslemSeriTanimlama 5
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
IslemTipiId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
IslemSerisi !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
bool 
VarsayilanMi  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
TblGeneralIslemTipi *
	IslemTipi+ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
} 
} �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIslemTipi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralIslemTipi ,
{ 
public 
TblGeneralIslemTipi "
(" #
)# $
{		 	%
TblGeneralBelgeDurumlaris

 %
=

& '
new

( +
HashSet

, 3
<

3 4$
TblGeneralBelgeDurumlari

4 L
>

L M
(

M N
)

N O
;

O P)
TblGeneralIslemSeriTanimlamas )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIslemSeriTanimlama8 T
>T U
(U V
)V W
;W X 
TblGeneralIslemSeris  
=! "
new# &
HashSet' .
<. /
TblGeneralIslemSeri/ B
>B C
(C D
)D E
;E F
}
public 
long 
IslemTipiId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	IslemTipi 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
bool 
IslemSeriGoster #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
virtual 
ICollection "
<" #$
TblGeneralBelgeDurumlari# ;
>; <%
TblGeneralBelgeDurumlaris= V
{W X
getY \
;\ ]
set^ a
;a b
}c d
public 
virtual 
ICollection "
<" #(
TblGeneralIslemSeriTanimlama# ?
>? @)
TblGeneralIslemSeriTanimlamasA ^
{_ `
geta d
;d e
setf i
;i j
}k l
public 
virtual 
ICollection "
<" #
TblGeneralIslemSeri# 6
>6 7 
TblGeneralIslemSeris8 L
{M N
getO R
;R S
setT W
;W X
}Y Z
} 
} �{
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIsletme.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralIsletme *
{ 
public 
TblGeneralIsletme  
(  !
)! "
{		 	!
TblDigiBidatabaselers

 !
=

" #
new

$ '
HashSet

( /
<

/ 0 
TblDigiBidatabaseler

0 D
>

D E
(

E F
)

F G
;

G H"
TblDigiBidosyaSistemis "
=# $
new% (
HashSet) 0
<0 1!
TblDigiBidosyaSistemi1 F
>F G
(G H
)H I
;I J$
TblDigiBifavoriDosyalars $
=% &
new' *
HashSet+ 2
<2 3#
TblDigiBifavoriDosyalar3 J
>J K
(K L
)L M
;M N
TblDigiBipaylasims
=
new
HashSet
<
TblDigiBipaylasim
>
(
)
;
TblFileDosyaSistemis  
=! "
new# &
HashSet' .
<. /
TblFileDosyaSistemi/ B
>B C
(C D
)D E
;E F"
TblFileFavoriDosyalars "
=# $
new% (
HashSet) 0
<0 1!
TblFileFavoriDosyalar1 F
>F G
(G H
)H I
;I J 
TblGeneralFavorilers  
=! "
new# &
HashSet' .
<. /
TblGeneralFavoriler/ B
>B C
(C D
)D E
;E F
TblGeneralFirmas 
= 
new "
HashSet# *
<* +
TblGeneralFirma+ :
>: ;
(; <
)< =
;= >)
TblGeneralIslemSeriTanimlamas )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIslemSeriTanimlama8 T
>T U
(U V
)V W
;W X)
TblGeneralIsletmeApplications )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIsletmeApplication8 T
>T U
(U V
)V W
;W X!
TblGeneralLidosDurums !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralLidosDurum0 D
>D E
(E F
)F G
;G H#
TblGeneralLidosElusTips #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralLidosElusTip2 H
>H I
(I J
)J K
;K L$
TblGeneralLidosTalepTips $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralLidosTalepTip3 J
>J K
(K L
)L M
;M N#
TblGeneralRedNedenYeris #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRedNedenYeri2 H
>H I
(I J
)J K
;K L$
TblGeneralRedNedenYetkis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralRedNedenYetki3 J
>J K
(K L
)L M
;M N 
TblGeneralRedNedenis  
=! "
new# &
HashSet' .
<. /
TblGeneralRedNedeni/ B
>B C
(C D
)D E
;E F
TblGeneralRedYeris 
=  
new! $
HashSet% ,
<, -
TblGeneralRedYeri- >
>> ?
(? @
)@ A
;A B#
TblGeneralRehberColumns #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRehberColumn2 H
>H I
(I J
)J K
;K L!
TblGeneralRehberViews !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralRehberView0 D
>D E
(E F
)F G
;G H
TblGeneralRehbers 
= 
new  #
HashSet$ +
<+ ,
TblGeneralRehber, <
>< =
(= >
)> ?
;? @$
TblGeneralSubeKullanicis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralSubeKullanici3 J
>J K
(K L
)L M
;M N&
TblGeneralUserApplications &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralUserApplication5 N
>N O
(O P
)P Q
;Q R

TblOptions   
=   
new   
HashSet   $
<  $ %
	TblOption  % .
>  . /
(  / 0
)  0 1
;  1 2
TblSocialFeedKisis!! 
=!!  
new!!! $
HashSet!!% ,
<!!, -
TblSocialFeedKisi!!- >
>!!> ?
(!!? @
)!!@ A
;!!A B
TblSocialFeedLinks"" 
=""  
new""! $
HashSet""% ,
<"", -
TblSocialFeedLink""- >
>""> ?
(""? @
)""@ A
;""A B
TblSocialFeeds## 
=## 
new##  
HashSet##! (
<##( )

>##6 7
(##7 8
)##8 9
;##9 :
TblSsodavetDetays$$ 
=$$ 
new$$  #
HashSet$$$ +
<$$+ ,
TblSsodavetDetay$$, <
>$$< =
($$= >
)$$> ?
;$$? @
TblSsohosts%% 
=%% 
new%% 
HashSet%% %
<%%% &

TblSsohost%%& 0
>%%0 1
(%%1 2
)%%2 3
;%%3 4
TblSsoyonlendirmes&& 
=&&  
new&&! $
HashSet&&% ,
<&&, -
TblSsoyonlendirme&&- >
>&&> ?
(&&? @
)&&@ A
;&&A B
}'' 	
public)) 
long)) 
Id)) 
{)) 
get)) 
;)) 
set)) !
;))! "
}))# $
public** 
bool** 
Silindi** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
public++ 
long++ 
Revizyon++ 
{++ 
get++ "
;++" #
set++$ '
;++' (
}++) *
public,, 
DateTime,, 
OlusturmaTarih,, &
{,,' (
get,,) ,
;,,, -
set,,. 1
;,,1 2
},,3 4
public-- 
DateTime-- 
?-- 
DegisiklikTarih-- (
{--) *
get--+ .
;--. /
set--0 3
;--3 4
}--5 6
public.. 
long.. 
OlusturanId.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public// 
long// 
?// 
DegistirenId// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
public00 
Guid00 
Guid00 
{00 
get00 
;00 
set00  #
;00# $
}00% &
public11 
bool11 
Aktif11 
{11 
get11 
;11  
set11! $
;11$ %
}11& '
public22 
bool22 
	Onaylandi22 
{22 
get22  #
;22# $
set22% (
;22( )
}22* +
public33 
string33 
Adi33 
{33 
get33 
;33  
set33! $
;33$ %
}33& '
=33( )
null33* .
!33. /
;33/ 0
public44 
string44 

{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
=442 3
null444 8
!448 9
;449 :
public55 
string55 
IsletmeUrlOnEk55 $
{55% &
get55' *
;55* +
set55, /
;55/ 0
}551 2
=553 4
null555 9
!559 :
;55: ;
public77 
virtual77 
ICollection77 "
<77" # 
TblDigiBidatabaseler77# 7
>777 8!
TblDigiBidatabaselers779 N
{77O P
get77Q T
;77T U
set77V Y
;77Y Z
}77[ \
public88 
virtual88 
ICollection88 "
<88" #!
TblDigiBidosyaSistemi88# 8
>888 9"
TblDigiBidosyaSistemis88: P
{88Q R
get88S V
;88V W
set88X [
;88[ \
}88] ^
public99 
virtual99 
ICollection99 "
<99" ##
TblDigiBifavoriDosyalar99# :
>99: ;$
TblDigiBifavoriDosyalars99< T
{99U V
get99W Z
;99Z [
set99\ _
;99_ `
}99a b
public:: 
virtual:: 
ICollection:: "
<::" #
TblDigiBipaylasim::# 4
>::4 5
TblDigiBipaylasims::6 H
{::I J
get::K N
;::N O
set::P S
;::S T
}::U V
public;; 
virtual;; 
ICollection;; "
<;;" #
TblFileDosyaSistemi;;# 6
>;;6 7 
TblFileDosyaSistemis;;8 L
{;;M N
get;;O R
;;;R S
set;;T W
;;;W X
};;Y Z
public<< 
virtual<< 
ICollection<< "
<<<" #!
TblFileFavoriDosyalar<<# 8
><<8 9"
TblFileFavoriDosyalars<<: P
{<<Q R
get<<S V
;<<V W
set<<X [
;<<[ \
}<<] ^
public== 
virtual== 
ICollection== "
<==" #
TblGeneralFavoriler==# 6
>==6 7 
TblGeneralFavorilers==8 L
{==M N
get==O R
;==R S
set==T W
;==W X
}==Y Z
public>> 
virtual>> 
ICollection>> "
<>>" #
TblGeneralFirma>># 2
>>>2 3
TblGeneralFirmas>>4 D
{>>E F
get>>G J
;>>J K
set>>L O
;>>O P
}>>Q R
public?? 
virtual?? 
ICollection?? "
<??" #(
TblGeneralIslemSeriTanimlama??# ?
>??? @)
TblGeneralIslemSeriTanimlamas??A ^
{??_ `
get??a d
;??d e
set??f i
;??i j
}??k l
public@@ 
virtual@@ 
ICollection@@ "
<@@" #(
TblGeneralIsletmeApplication@@# ?
>@@? @)
TblGeneralIsletmeApplications@@A ^
{@@_ `
get@@a d
;@@d e
set@@f i
;@@i j
}@@k l
publicAA 
virtualAA 
ICollectionAA "
<AA" # 
TblGeneralLidosDurumAA# 7
>AA7 8!
TblGeneralLidosDurumsAA9 N
{AAO P
getAAQ T
;AAT U
setAAV Y
;AAY Z
}AA[ \
publicBB 
virtualBB 
ICollectionBB "
<BB" #"
TblGeneralLidosElusTipBB# 9
>BB9 :#
TblGeneralLidosElusTipsBB; R
{BBS T
getBBU X
;BBX Y
setBBZ ]
;BB] ^
}BB_ `
publicCC 
virtualCC 
ICollectionCC "
<CC" ##
TblGeneralLidosTalepTipCC# :
>CC: ;$
TblGeneralLidosTalepTipsCC< T
{CCU V
getCCW Z
;CCZ [
setCC\ _
;CC_ `
}CCa b
publicDD 
virtualDD 
ICollectionDD "
<DD" #"
TblGeneralRedNedenYeriDD# 9
>DD9 :#
TblGeneralRedNedenYerisDD; R
{DDS T
getDDU X
;DDX Y
setDDZ ]
;DD] ^
}DD_ `
publicEE 
virtualEE 
ICollectionEE "
<EE" ##
TblGeneralRedNedenYetkiEE# :
>EE: ;$
TblGeneralRedNedenYetkisEE< T
{EEU V
getEEW Z
;EEZ [
setEE\ _
;EE_ `
}EEa b
publicFF 
virtualFF 
ICollectionFF "
<FF" #
TblGeneralRedNedeniFF# 6
>FF6 7 
TblGeneralRedNedenisFF8 L
{FFM N
getFFO R
;FFR S
setFFT W
;FFW X
}FFY Z
publicGG 
virtualGG 
ICollectionGG "
<GG" #
TblGeneralRedYeriGG# 4
>GG4 5
TblGeneralRedYerisGG6 H
{GGI J
getGGK N
;GGN O
setGGP S
;GGS T
}GGU V
publicHH 
virtualHH 
ICollectionHH "
<HH" #"
TblGeneralRehberColumnHH# 9
>HH9 :#
TblGeneralRehberColumnsHH; R
{HHS T
getHHU X
;HHX Y
setHHZ ]
;HH] ^
}HH_ `
publicII 
virtualII 
ICollectionII "
<II" # 
TblGeneralRehberViewII# 7
>II7 8!
TblGeneralRehberViewsII9 N
{IIO P
getIIQ T
;IIT U
setIIV Y
;IIY Z
}II[ \
publicJJ 
virtualJJ 
ICollectionJJ "
<JJ" #
TblGeneralRehberJJ# 3
>JJ3 4
TblGeneralRehbersJJ5 F
{JJG H
getJJI L
;JJL M
setJJN Q
;JJQ R
}JJS T
publicKK 
virtualKK 
ICollectionKK "
<KK" ##
TblGeneralSubeKullaniciKK# :
>KK: ;$
TblGeneralSubeKullanicisKK< T
{KKU V
getKKW Z
;KKZ [
setKK\ _
;KK_ `
}KKa b
publicLL 
virtualLL 
ICollectionLL "
<LL" #%
TblGeneralUserApplicationLL# <
>LL< =&
TblGeneralUserApplicationsLL> X
{LLY Z
getLL[ ^
;LL^ _
setLL` c
;LLc d
}LLe f
publicMM 
virtualMM 
ICollectionMM "
<MM" #
	TblOptionMM# ,
>MM, -

TblOptionsMM. 8
{MM9 :
getMM; >
;MM> ?
setMM@ C
;MMC D
}MME F
publicNN 
virtualNN 
ICollectionNN "
<NN" #
TblSocialFeedKisiNN# 4
>NN4 5
TblSocialFeedKisisNN6 H
{NNI J
getNNK N
;NNN O
setNNP S
;NNS T
}NNU V
publicOO 
virtualOO 
ICollectionOO "
<OO" #
TblSocialFeedLinkOO# 4
>OO4 5
TblSocialFeedLinksOO6 H
{OOI J
getOOK N
;OON O
setOOP S
;OOS T
}OOU V
publicPP 
virtualPP 
ICollectionPP "
<PP" #

>PP0 1
TblSocialFeedsPP2 @
{PPA B
getPPC F
;PPF G
setPPH K
;PPK L
}PPM N
publicQQ 
virtualQQ 
ICollectionQQ "
<QQ" #
TblSsodavetDetayQQ# 3
>QQ3 4
TblSsodavetDetaysQQ5 F
{QQG H
getQQI L
;QQL M
setQQN Q
;QQQ R
}QQS T
publicRR 
virtualRR 
ICollectionRR "
<RR" #

TblSsohostRR# -
>RR- .
TblSsohostsRR/ :
{RR; <
getRR= @
;RR@ A
setRRB E
;RRE F
}RRG H
publicSS 
virtualSS 
ICollectionSS "
<SS" #
TblSsoyonlendirmeSS# 4
>SS4 5
TblSsoyonlendirmesSS6 H
{SSI J
getSSK N
;SSN O
setSSP S
;SSS T
}SSU V
}TT 
}UU �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralIsletmeApplication.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class (
TblGeneralIsletmeApplication 5
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
virtual !
TblGeneralApplication ,
Application- 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
nullI M
!M N
;N O
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} 
} �
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralKoy.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 

( 
) 
{		 	
TblGeneralSubes

 
=

 
new

 !
HashSet

" )
<

) *
TblGeneralSube

* 8
>

8 9
(

9 :
)

: ;
;

; <
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
IlceId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Kodu 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
? 

MernisKodu !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
virtual 
TblGeneralIlce %
Ilce& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
public 
virtual 
ICollection "
<" #
TblGeneralSube# 1
>1 2
TblGeneralSubes3 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralKulGrupEkran.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralKulGrupEkran /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
GrupId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
EkranId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralKullaniciEkAlan.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class %
TblGeneralKullaniciEkAlan 2
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
ModulId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Baslik 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 
int !
KullTnmSahaDegerTipId (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual !
TblGeneralApplication ,
Application- 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
nullI M
!M N
;N O
public 
virtual 
TblGeneralModul &
Modul' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
} 
} �
ZC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralKullaniciGrupTanim.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class (
TblGeneralKullaniciGrupTanim 5
{ 
public (
TblGeneralKullaniciGrupTanim +
(+ ,
), -
{		 	$
TblGeneralGrupKullanicis

 $
=

% &
new

' *
HashSet

+ 2
<

2 3#
TblGeneralGrupKullanici

3 J
>

J K
(

K L
)

L M
;

M N
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
virtual 
ICollection "
<" ##
TblGeneralGrupKullanici# :
>: ;$
TblGeneralGrupKullanicis< T
{U V
getW Z
;Z [
set\ _
;_ `
}a b
} 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralLidosDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralLidosDurum -
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
RenkCode 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralSube %
Sube& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
} 
} �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralLidosElusTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralLidosElusTip /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
bool 

Varsayilan 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralSube %
Sube& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
} 
} �"
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralLidosTalepTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralLidosTalepTip 0
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
RenkCode 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
bool 
?  
NumuneListesineDusur )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
?  
TartimdaUrunSecilsin )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
? 
MudiZorunluOlmasin '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralSube %
Sube& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
}   
}!! �
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralModul.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralModul (
{ 
public 
TblGeneralModul 
( 
)  
{		 	&
TblGeneralKullaniciEkAlans

 &
=

' (
new

) ,
HashSet

- 4
<

4 5%
TblGeneralKullaniciEkAlan

5 N
>

N O
(

O P
)

P Q
;

Q R
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
ICollection "
<" #%
TblGeneralKullaniciEkAlan# <
>< =&
TblGeneralKullaniciEkAlans> X
{Y Z
get[ ^
;^ _
set` c
;c d
}e f
} 
} �
PC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralOdemeTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralOdemeTip +
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
} 
} �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralOnayDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralOnayDurum ,
{ 
public 
long 
DurumId 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 

OnayDurumu		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
=		/ 0
null		1 5
!		5 6
;		6 7
}

 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralParaBirimi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralParaBirimi -
{ 
public  
TblGeneralParaBirimi #
(# $
)$ %
{		 	
TblGeneralUlkes

 
=

 
new

 !
HashSet

" )
<

) *
TblGeneralUlke

* 8
>

8 9
(

9 :
)

: ;
;

; <
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
? 
KisaAdi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Kisaltma 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
? 
Icon 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
TblGeneralUlke# 1
>1 2
TblGeneralUlkes3 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} �
PC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralRedDurum +
{ 
public 
TblGeneralRedDurum !
(! "
)" #
{		 	$
TblGeneralRedDurumYetkis

 $
=

% &
new

' *
HashSet

+ 2
<

2 3#
TblGeneralRedDurumYetki

3 J
>

J K
(

K L
)

L M
;

M N
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
virtual 
ICollection "
<" ##
TblGeneralRedDurumYetki# :
>: ;$
TblGeneralRedDurumYetkis< T
{U V
getW Z
;Z [
set\ _
;_ `
}a b
} 
}   �
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedDurumYetki.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralRedDurumYetki 0
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
? 
NedenYetkiId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
? 
DurumId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
TblGeneralRedDurum )
?) *
Durum+ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
virtual #
TblGeneralRedNedenYetki .
?. /

NedenYetki0 :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} �$
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedNedeni.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralRedNedeni ,
{ 
public 
TblGeneralRedNedeni "
(" #
)# $
{		 	#
TblGeneralRedNedenYeris

 #
=

$ %
new

& )
HashSet

* 1
<

1 2"
TblGeneralRedNedenYeri

2 H
>

H I
(

I J
)

J K
;

K L$
TblGeneralRedNedenYetkis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralRedNedenYetki3 J
>J K
(K L
)L M
;M N
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public   
virtual   
TblGeneralIsletme   (
Isletme  ) 0
{  1 2
get  3 6
;  6 7
set  8 ;
;  ; <
}  = >
=  ? @
null  A E
!  E F
;  F G
public!! 
virtual!! 
TblGeneralSube!! %
Sube!!& *
{!!+ ,
get!!- 0
;!!0 1
set!!2 5
;!!5 6
}!!7 8
=!!9 :
null!!; ?
!!!? @
;!!@ A
public"" 
virtual"" 
ICollection"" "
<""" #"
TblGeneralRedNedenYeri""# 9
>""9 :#
TblGeneralRedNedenYeris""; R
{""S T
get""U X
;""X Y
set""Z ]
;""] ^
}""_ `
public## 
virtual## 
ICollection## "
<##" ##
TblGeneralRedNedenYetki### :
>##: ;$
TblGeneralRedNedenYetkis##< T
{##U V
get##W Z
;##Z [
set##\ _
;##_ `
}##a b
}$$ 
}%% �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedNedenYeri.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralRedNedenYeri /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public
long
FirmaId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 

RedNedenId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
YerId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralRedNedeni *
RedNeden+ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
nullD H
!H I
;I J
public 
virtual 
TblGeneralSube %
Sube& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
public 
virtual 
TblGeneralRedYeri (
Yer) ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
} 
} �"
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedNedenYetki.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralRedNedenYetki 0
{ 
public #
TblGeneralRedNedenYetki &
(& '
)' (
{		 	$
TblGeneralRedDurumYetkis

 $
=

% &
new

' *
HashSet

+ 2
<

2 3#
TblGeneralRedDurumYetki

3 J
>

J K
(

K L
)

L M
;

M N
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 

RedNedenId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
DurumId 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public   
virtual   
TblGeneralRedNedeni   *
RedNeden  + 3
{  4 5
get  6 9
;  9 :
set  ; >
;  > ?
}  @ A
=  B C
null  D H
!  H I
;  I J
public!! 
virtual!! 
TblGeneralSube!! %
Sube!!& *
{!!+ ,
get!!- 0
;!!0 1
set!!2 5
;!!5 6
}!!7 8
=!!9 :
null!!; ?
!!!? @
;!!@ A
public"" 
virtual"" 
ICollection"" "
<""" ##
TblGeneralRedDurumYetki""# :
>"": ;$
TblGeneralRedDurumYetkis""< T
{""U V
get""W Z
;""Z [
set""\ _
;""_ `
}""a b
}## 
}$$ �!
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRedYeri.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralRedYeri *
{ 
public 
TblGeneralRedYeri  
(  !
)! "
{		 	#
TblGeneralRedNedenYeris

 #
=

$ %
new

& )
HashSet

* 1
<

1 2"
TblGeneralRedNedenYeri

2 H
>

H I
(

I J
)

J K
;

K L
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public   
virtual   
TblGeneralSube   %
Sube  & *
{  + ,
get  - 0
;  0 1
set  2 5
;  5 6
}  7 8
=  9 :
null  ; ?
!  ? @
;  @ A
public!! 
virtual!! 
ICollection!! "
<!!" #"
TblGeneralRedNedenYeri!!# 9
>!!9 :#
TblGeneralRedNedenYeris!!; R
{!!S T
get!!U X
;!!X Y
set!!Z ]
;!!] ^
}!!_ `
}"" 
}## �6
NC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRehber.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralRehber )
{ 
public 
TblGeneralRehber 
(  
)  !
{		 	=
1TblGeneralRehberColumnTblGeneralRehberNavigations

 =
=

> ?
new

@ C
HashSet

D K
<

K L"
TblGeneralRehberColumn

L b
>

b c
(

c d
)

d e
;

e f3
'TblGeneralRehberColumnTblGeneralRehbers 3
=4 5
new6 9
HashSet: A
<A B"
TblGeneralRehberColumnB X
>X Y
(Y Z
)Z [
;[ \!
TblGeneralRehberViews !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralRehberView0 D
>D E
(E F
)F G
;G H
}
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

RehberKodu  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
? 
Adi 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
Url   
{   
get   
;    
set  ! $
;  $ %
}  & '
=  ( )
null  * .
!  . /
;  / 0
public!! 
string!! 
?!! 
Data!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public"" 
int"" 
?"" 
RaporTip"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public## 
long## 
?## 
ReportingRaporId## %
{##& '
get##( +
;##+ ,
set##- 0
;##0 1
}##2 3
public$$ 
long$$ 
?$$ 
MenuId$$ 
{$$ 
get$$ !
;$$! "
set$$# &
;$$& '
}$$( )
public%% 
int%% 
?%% 
	IslemTipi%% 
{%% 
get%%  #
;%%# $
set%%% (
;%%( )
}%%* +
public&& 
bool&& 
?&& 
SistemMi&& 
{&& 
get&&  #
;&&# $
set&&% (
;&&( )
}&&* +
public'' 
Guid'' 
?'' 
UygulamaGuid'' !
{''" #
get''$ '
;''' (
set'') ,
;'', -
}''. /
public(( 
string(( 
?(( 
TabloAdi(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
virtual** 
TblGeneralIsletme** (
Isletme**) 0
{**1 2
get**3 6
;**6 7
set**8 ;
;**; <
}**= >
=**? @
null**A E
!**E F
;**F G
public++ 
virtual++ 
TblGeneralFirma++ &
TblGeneralFirma++' 6
{++7 8
get++9 <
;++< =
set++> A
;++A B
}++C D
=++E F
null++G K
!++K L
;++L M
public,, 
virtual,, 
TblGeneralSube,, %
TblGeneralSube,,& 4
{,,5 6
get,,7 :
;,,: ;
set,,< ?
;,,? @
},,A B
=,,C D
null,,E I
!,,I J
;,,J K
public-- 
virtual-- 
ICollection-- "
<--" #"
TblGeneralRehberColumn--# 9
>--9 :=
1TblGeneralRehberColumnTblGeneralRehberNavigations--; l
{--m n
get--o r
;--r s
set--t w
;--w x
}--y z
public.. 
virtual.. 
ICollection.. "
<.." #"
TblGeneralRehberColumn..# 9
>..9 :3
'TblGeneralRehberColumnTblGeneralRehbers..; b
{..c d
get..e h
;..h i
set..j m
;..m n
}..o p
public// 
virtual// 
ICollection// "
<//" # 
TblGeneralRehberView//# 7
>//7 8!
TblGeneralRehberViews//9 N
{//O P
get//Q T
;//T U
set//V Y
;//Y Z
}//[ \
}00 
}11 �)
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRehberColumn.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralRehberColumn /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
RehberId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
	KisitTipi 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
bool 
Focus 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Tip 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
? 

RehberKodu !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
ModelPropertyAdi '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public   
virtual   
TblGeneralFirma   &
TblGeneralFirma  ' 6
{  7 8
get  9 <
;  < =
set  > A
;  A B
}  C D
=  E F
null  G K
!  K L
;  L M
public!! 
virtual!! 
TblGeneralRehber!! '
TblGeneralRehber!!( 8
{!!9 :
get!!; >
;!!> ?
set!!@ C
;!!C D
}!!E F
=!!G H
null!!I M
!!!M N
;!!N O
public"" 
virtual"" 
TblGeneralRehber"" '
?""' (&
TblGeneralRehberNavigation"") C
{""D E
get""F I
;""I J
set""K N
;""N O
}""P Q
public## 
virtual## 
TblGeneralSube## %
TblGeneralSube##& 4
{##5 6
get##7 :
;##: ;
set##< ?
;##? @
}##A B
=##C D
null##E I
!##I J
;##J K
}$$ 
}%% �#
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralRehberView.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralRehberView -
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
RehberId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
Tip 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
int 
? 
Sira 
{ 
get 
; 
set  #
;# $
}% &
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralRehber '
TblGeneralRehber( 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
nullI M
!M N
;N O
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
}   
}!! ��
LC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralSube.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralSube '
{ 
public 
TblGeneralSube 
( 
) 
{		 	!
TblDigiBidatabaselers

 !
=

" #
new

$ '
HashSet

( /
<

/ 0 
TblDigiBidatabaseler

0 D
>

D E
(

E F
)

F G
;

G H"
TblDigiBidosyaSistemis "
=# $
new% (
HashSet) 0
<0 1!
TblDigiBidosyaSistemi1 F
>F G
(G H
)H I
;I J$
TblDigiBifavoriDosyalars $
=% &
new' *
HashSet+ 2
<2 3#
TblDigiBifavoriDosyalar3 J
>J K
(K L
)L M
;M N
TblDigiBipaylasims
=
new
HashSet
<
TblDigiBipaylasim
>
(
)
;
TblFileDosyaSistemis  
=! "
new# &
HashSet' .
<. /
TblFileDosyaSistemi/ B
>B C
(C D
)D E
;E F"
TblFileFavoriDosyalars "
=# $
new% (
HashSet) 0
<0 1!
TblFileFavoriDosyalar1 F
>F G
(G H
)H I
;I J 
TblGeneralFavorilers  
=! "
new# &
HashSet' .
<. /
TblGeneralFavoriler/ B
>B C
(C D
)D E
;E F)
TblGeneralIslemSeriTanimlamas )
=* +
new, /
HashSet0 7
<7 8(
TblGeneralIslemSeriTanimlama8 T
>T U
(U V
)V W
;W X!
TblGeneralLidosDurums !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralLidosDurum0 D
>D E
(E F
)F G
;G H#
TblGeneralLidosElusTips #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralLidosElusTip2 H
>H I
(I J
)J K
;K L$
TblGeneralLidosTalepTips $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralLidosTalepTip3 J
>J K
(K L
)L M
;M N#
TblGeneralRedNedenYeris #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRedNedenYeri2 H
>H I
(I J
)J K
;K L$
TblGeneralRedNedenYetkis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralRedNedenYetki3 J
>J K
(K L
)L M
;M N 
TblGeneralRedNedenis  
=! "
new# &
HashSet' .
<. /
TblGeneralRedNedeni/ B
>B C
(C D
)D E
;E F
TblGeneralRedYeris 
=  
new! $
HashSet% ,
<, -
TblGeneralRedYeri- >
>> ?
(? @
)@ A
;A B#
TblGeneralRehberColumns #
=$ %
new& )
HashSet* 1
<1 2"
TblGeneralRehberColumn2 H
>H I
(I J
)J K
;K L!
TblGeneralRehberViews !
=" #
new$ '
HashSet( /
</ 0 
TblGeneralRehberView0 D
>D E
(E F
)F G
;G H
TblGeneralRehbers 
= 
new  #
HashSet$ +
<+ ,
TblGeneralRehber, <
>< =
(= >
)> ?
;? @$
TblGeneralSubeKullanicis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralSubeKullanici3 J
>J K
(K L
)L M
;M N&
TblGeneralUserApplications &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralUserApplication5 N
>N O
(O P
)P Q
;Q R

TblOptions 
= 
new 
HashSet $
<$ %
	TblOption% .
>. /
(/ 0
)0 1
;1 2
TblSocialFeedKisis 
=  
new! $
HashSet% ,
<, -
TblSocialFeedKisi- >
>> ?
(? @
)@ A
;A B
TblSocialFeedLinks   
=    
new  ! $
HashSet  % ,
<  , -
TblSocialFeedLink  - >
>  > ?
(  ? @
)  @ A
;  A B
TblSocialFeeds!! 
=!! 
new!!  
HashSet!!! (
<!!( )

>!!6 7
(!!7 8
)!!8 9
;!!9 :
TblSsodavetDetays"" 
="" 
new""  #
HashSet""$ +
<""+ ,
TblSsodavetDetay"", <
>""< =
(""= >
)""> ?
;""? @
TblSsoyonlendirmes## 
=##  
new##! $
HashSet##% ,
<##, -
TblSsoyonlendirme##- >
>##> ?
(##? @
)##@ A
;##A B
}$$ 	
public&& 
long&& 
Id&& 
{&& 
get&& 
;&& 
set&& !
;&&! "
}&&# $
public'' 
bool'' 
Silindi'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
public(( 
long(( 
Revizyon(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public)) 
DateTime)) 
OlusturmaTarih)) &
{))' (
get))) ,
;)), -
set)). 1
;))1 2
}))3 4
public** 
DateTime** 
?** 
DegisiklikTarih** (
{**) *
get**+ .
;**. /
set**0 3
;**3 4
}**5 6
public++ 
long++ 
OlusturanId++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public,, 
long,, 
?,, 
DegistirenId,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
public-- 
Guid-- 
Guid-- 
{-- 
get-- 
;-- 
set--  #
;--# $
}--% &
public.. 
bool.. 
Aktif.. 
{.. 
get.. 
;..  
set..! $
;..$ %
}..& '
public// 
bool// 
	Onaylandi// 
{// 
get//  #
;//# $
set//% (
;//( )
}//* +
public00 
int00 
SubeKod00 
{00 
get00  
;00  !
set00" %
;00% &
}00' (
public11 
string11 
Adi11 
{11 
get11 
;11  
set11! $
;11$ %
}11& '
=11( )
null11* .
!11. /
;11/ 0
public22 
long22 
FirmaId22 
{22 
get22 !
;22! "
set22# &
;22& '
}22( )
public33 
bool33 
AcikAdresMi33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
public44 
string44 
?44 
Adres44 
{44 
get44 "
;44" #
set44$ '
;44' (
}44) *
public55 
long55 
?55 
UlkeId55 
{55 
get55 !
;55! "
set55# &
;55& '
}55( )
public66 
long66 
?66 
IlId66 
{66 
get66 
;66  
set66! $
;66$ %
}66& '
public77 
long77 
?77 
IlceId77 
{77 
get77 !
;77! "
set77# &
;77& '
}77( )
public88 
long88 
?88 
MahKoyId88 
{88 
get88  #
;88# $
set88% (
;88( )
}88* +
public99 
string99 
?99 
KapiNo99 
{99 
get99  #
;99# $
set99% (
;99( )
}99* +
public:: 
string:: 
?:: 
DaireNo:: 
{::  
get::! $
;::$ %
set::& )
;::) *
}::+ ,
public;; 
string;; 
?;; 
TelNo;; 
{;; 
get;; "
;;;" #
set;;$ '
;;;' (
};;) *
public<< 
string<< 
?<< 
FaxNo<< 
{<< 
get<< "
;<<" #
set<<$ '
;<<' (
}<<) *
public== 
string== 
?== 
WebSiteAdres== #
{==$ %
get==& )
;==) *
set==+ .
;==. /
}==0 1
public>> 
string>> 
?>> 
Email>> 
{>> 
get>> "
;>>" #
set>>$ '
;>>' (
}>>) *
public?? 
double?? 
??? 
Latitude?? 
{??  !
get??" %
;??% &
set??' *
;??* +
}??, -
public@@ 
double@@ 
?@@ 

Longtitude@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
publicAA 
stringAA 
?AA 
LogoAA 
{AA 
getAA !
;AA! "
setAA# &
;AA& '
}AA( )
publicBB 
stringBB 
?BB 
AciklamaBB 
{BB  !
getBB" %
;BB% &
setBB' *
;BB* +
}BB, -
publicCC 
stringCC 
?CC 
	SabitFotoCC  
{CC! "
getCC# &
;CC& '
setCC( +
;CC+ ,
}CC- .
publicDD 
stringDD 
?DD 
MersisNoDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
publicEE 
stringEE 
?EE 

{EE% &
getEE' *
;EE* +
setEE, /
;EE/ 0
}EE1 2
publicGG 
virtualGG 
TblGeneralFirmaGG &
FirmaGG' ,
{GG- .
getGG/ 2
;GG2 3
setGG4 7
;GG7 8
}GG9 :
=GG; <
nullGG= A
!GGA B
;GGB C
publicHH 
virtualHH 
TblGeneralIlHH #
?HH# $
IlHH% '
{HH( )
getHH* -
;HH- .
setHH/ 2
;HH2 3
}HH4 5
publicII 
virtualII 
TblGeneralIlceII %
?II% &
IlceII' +
{II, -
getII. 1
;II1 2
setII3 6
;II6 7
}II8 9
publicJJ 
virtualJJ 

?JJ$ %
MahKoyJJ& ,
{JJ- .
getJJ/ 2
;JJ2 3
setJJ4 7
;JJ7 8
}JJ9 :
publicKK 
virtualKK 
TblGeneralUlkeKK %
?KK% &
UlkeKK' +
{KK, -
getKK. 1
;KK1 2
setKK3 6
;KK6 7
}KK8 9
publicLL 
virtualLL 
ICollectionLL "
<LL" # 
TblDigiBidatabaselerLL# 7
>LL7 8!
TblDigiBidatabaselersLL9 N
{LLO P
getLLQ T
;LLT U
setLLV Y
;LLY Z
}LL[ \
publicMM 
virtualMM 
ICollectionMM "
<MM" #!
TblDigiBidosyaSistemiMM# 8
>MM8 9"
TblDigiBidosyaSistemisMM: P
{MMQ R
getMMS V
;MMV W
setMMX [
;MM[ \
}MM] ^
publicNN 
virtualNN 
ICollectionNN "
<NN" ##
TblDigiBifavoriDosyalarNN# :
>NN: ;$
TblDigiBifavoriDosyalarsNN< T
{NNU V
getNNW Z
;NNZ [
setNN\ _
;NN_ `
}NNa b
publicOO 
virtualOO 
ICollectionOO "
<OO" #
TblDigiBipaylasimOO# 4
>OO4 5
TblDigiBipaylasimsOO6 H
{OOI J
getOOK N
;OON O
setOOP S
;OOS T
}OOU V
publicPP 
virtualPP 
ICollectionPP "
<PP" #
TblFileDosyaSistemiPP# 6
>PP6 7 
TblFileDosyaSistemisPP8 L
{PPM N
getPPO R
;PPR S
setPPT W
;PPW X
}PPY Z
publicQQ 
virtualQQ 
ICollectionQQ "
<QQ" #!
TblFileFavoriDosyalarQQ# 8
>QQ8 9"
TblFileFavoriDosyalarsQQ: P
{QQQ R
getQQS V
;QQV W
setQQX [
;QQ[ \
}QQ] ^
publicRR 
virtualRR 
ICollectionRR "
<RR" #
TblGeneralFavorilerRR# 6
>RR6 7 
TblGeneralFavorilersRR8 L
{RRM N
getRRO R
;RRR S
setRRT W
;RRW X
}RRY Z
publicSS 
virtualSS 
ICollectionSS "
<SS" #(
TblGeneralIslemSeriTanimlamaSS# ?
>SS? @)
TblGeneralIslemSeriTanimlamasSSA ^
{SS_ `
getSSa d
;SSd e
setSSf i
;SSi j
}SSk l
publicTT 
virtualTT 
ICollectionTT "
<TT" # 
TblGeneralLidosDurumTT# 7
>TT7 8!
TblGeneralLidosDurumsTT9 N
{TTO P
getTTQ T
;TTT U
setTTV Y
;TTY Z
}TT[ \
publicUU 
virtualUU 
ICollectionUU "
<UU" #"
TblGeneralLidosElusTipUU# 9
>UU9 :#
TblGeneralLidosElusTipsUU; R
{UUS T
getUUU X
;UUX Y
setUUZ ]
;UU] ^
}UU_ `
publicVV 
virtualVV 
ICollectionVV "
<VV" ##
TblGeneralLidosTalepTipVV# :
>VV: ;$
TblGeneralLidosTalepTipsVV< T
{VVU V
getVVW Z
;VVZ [
setVV\ _
;VV_ `
}VVa b
publicWW 
virtualWW 
ICollectionWW "
<WW" #"
TblGeneralRedNedenYeriWW# 9
>WW9 :#
TblGeneralRedNedenYerisWW; R
{WWS T
getWWU X
;WWX Y
setWWZ ]
;WW] ^
}WW_ `
publicXX 
virtualXX 
ICollectionXX "
<XX" ##
TblGeneralRedNedenYetkiXX# :
>XX: ;$
TblGeneralRedNedenYetkisXX< T
{XXU V
getXXW Z
;XXZ [
setXX\ _
;XX_ `
}XXa b
publicYY 
virtualYY 
ICollectionYY "
<YY" #
TblGeneralRedNedeniYY# 6
>YY6 7 
TblGeneralRedNedenisYY8 L
{YYM N
getYYO R
;YYR S
setYYT W
;YYW X
}YYY Z
publicZZ 
virtualZZ 
ICollectionZZ "
<ZZ" #
TblGeneralRedYeriZZ# 4
>ZZ4 5
TblGeneralRedYerisZZ6 H
{ZZI J
getZZK N
;ZZN O
setZZP S
;ZZS T
}ZZU V
public[[ 
virtual[[ 
ICollection[[ "
<[[" #"
TblGeneralRehberColumn[[# 9
>[[9 :#
TblGeneralRehberColumns[[; R
{[[S T
get[[U X
;[[X Y
set[[Z ]
;[[] ^
}[[_ `
public\\ 
virtual\\ 
ICollection\\ "
<\\" # 
TblGeneralRehberView\\# 7
>\\7 8!
TblGeneralRehberViews\\9 N
{\\O P
get\\Q T
;\\T U
set\\V Y
;\\Y Z
}\\[ \
public]] 
virtual]] 
ICollection]] "
<]]" #
TblGeneralRehber]]# 3
>]]3 4
TblGeneralRehbers]]5 F
{]]G H
get]]I L
;]]L M
set]]N Q
;]]Q R
}]]S T
public^^ 
virtual^^ 
ICollection^^ "
<^^" ##
TblGeneralSubeKullanici^^# :
>^^: ;$
TblGeneralSubeKullanicis^^< T
{^^U V
get^^W Z
;^^Z [
set^^\ _
;^^_ `
}^^a b
public__ 
virtual__ 
ICollection__ "
<__" #%
TblGeneralUserApplication__# <
>__< =&
TblGeneralUserApplications__> X
{__Y Z
get__[ ^
;__^ _
set__` c
;__c d
}__e f
public`` 
virtual`` 
ICollection`` "
<``" #
	TblOption``# ,
>``, -

TblOptions``. 8
{``9 :
get``; >
;``> ?
set``@ C
;``C D
}``E F
publicaa 
virtualaa 
ICollectionaa "
<aa" #
TblSocialFeedKisiaa# 4
>aa4 5
TblSocialFeedKisisaa6 H
{aaI J
getaaK N
;aaN O
setaaP S
;aaS T
}aaU V
publicbb 
virtualbb 
ICollectionbb "
<bb" #
TblSocialFeedLinkbb# 4
>bb4 5
TblSocialFeedLinksbb6 H
{bbI J
getbbK N
;bbN O
setbbP S
;bbS T
}bbU V
publiccc 
virtualcc 
ICollectioncc "
<cc" #

>cc0 1
TblSocialFeedscc2 @
{ccA B
getccC F
;ccF G
setccH K
;ccK L
}ccM N
publicdd 
virtualdd 
ICollectiondd "
<dd" #
TblSsodavetDetaydd# 3
>dd3 4
TblSsodavetDetaysdd5 F
{ddG H
getddI L
;ddL M
setddN Q
;ddQ R
}ddS T
publicee 
virtualee 
ICollectionee "
<ee" #
TblSsoyonlendirmeee# 4
>ee4 5
TblSsoyonlendirmesee6 H
{eeI J
geteeK N
;eeN O
seteeP S
;eeS T
}eeU V
}ff 
}gg �)
UC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralSubeKullanici.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class #
TblGeneralSubeKullanici 0
{ 
public #
TblGeneralSubeKullanici &
(& '
)' (
{		 	 
TblGeneralFavorilers

  
=

! "
new

# &
HashSet

' .
<

. /
TblGeneralFavoriler

/ B
>

B C
(

C D
)

D E
;

E F&
TblGeneralUserApplications &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralUserApplication5 N
>N O
(O P
)P Q
;Q R
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Admin 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
Approved 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
DavetTarihi #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
DateTime   
?   
DavetOnayTarihi   (
{  ) *
get  + .
;  . /
set  0 3
;  3 4
}  5 6
public"" 
virtual"" 
TblGeneralIsletme"" (
Isletme"") 0
{""1 2
get""3 6
;""6 7
set""8 ;
;""; <
}""= >
=""? @
null""A E
!""E F
;""F G
public## 
virtual## 
TblSsokullanici## &
	Kullanici##' 0
{##1 2
get##3 6
;##6 7
set##8 ;
;##; <
}##= >
=##? @
null##A E
!##E F
;##F G
public$$ 
virtual$$ 
TblGeneralFirma$$ &
TblGeneralFirma$$' 6
{$$7 8
get$$9 <
;$$< =
set$$> A
;$$A B
}$$C D
=$$E F
null$$G K
!$$K L
;$$L M
public%% 
virtual%% 
TblGeneralSube%% %
TblGeneralSube%%& 4
{%%5 6
get%%7 :
;%%: ;
set%%< ?
;%%? @
}%%A B
=%%C D
null%%E I
!%%I J
;%%J K
public&& 
virtual&& 
ICollection&& "
<&&" #
TblGeneralFavoriler&&# 6
>&&6 7 
TblGeneralFavorilers&&8 L
{&&M N
get&&O R
;&&R S
set&&T W
;&&W X
}&&Y Z
public'' 
virtual'' 
ICollection'' "
<''" #%
TblGeneralUserApplication''# <
>''< =&
TblGeneralUserApplications''> X
{''Y Z
get''[ ^
;''^ _
set''` c
;''c d
}''e f
}(( 
})) � 
LC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralUlke.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblGeneralUlke '
{ 
public 
TblGeneralUlke 
( 
) 
{		 	


 
=

 
new

 
HashSet

  '
<

' (
TblGeneralIl

( 4
>

4 5
(

5 6
)

6 7
;

7 8
TblGeneralSubes 
= 
new !
HashSet" )
<) *
TblGeneralSube* 8
>8 9
(9 :
): ;
;; <
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
KisaKod 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
UlkeTelKodu !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
long 
ParaBirimId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual  
TblGeneralParaBirimi +
	ParaBirim, 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
nullF J
!J K
;K L
public 
virtual 
ICollection "
<" #
TblGeneralIl# /
>/ 0

{? @
getA D
;D E
setF I
;I J
}K L
public   
virtual   
ICollection   "
<  " #
TblGeneralSube  # 1
>  1 2
TblGeneralSubes  3 B
{  C D
get  E H
;  H I
set  J M
;  M N
}  O P
}!! 
}"" �"
WC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralUserApplication.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class %
TblGeneralUserApplication 2
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual !
TblGeneralApplication ,
Application- 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
nullI M
!M N
;N O
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblSsokullanici &
	Kullanici' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public 
virtual #
TblGeneralSubeKullanici .#
TblGeneralSubeKullanici/ F
{G H
getI L
;L M
setN Q
;Q R
}S T
=U V
nullW [
![ \
;\ ]
} 
}   �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralVergiDairesi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
TblGeneralVergiDairesi /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Kod 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Ad 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
} 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblGeneralVisitDurum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
TblGeneralVisitDurum -
{ 
public 
int 
	DurumTipi 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Aciklama		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
=		- .
null		/ 3
!		3 4
;		4 5
}

 
} �$
GC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblOption.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
	TblOption "
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Modul 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
int 
ParamId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	GroupName 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
	ParamType 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
string 

ParamValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
string 
? 
Summary 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public   
virtual   
TblGeneralSube   %
TblGeneralSube  & 4
{  5 6
get  7 :
;  : ;
set  < ?
;  ? @
}  A B
=  C D
null  E I
!  I J
;  J K
}!! 
}"" �&
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSocialFeed.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 

( 
) 
{		 	
TblSocialFeedKisis

 
=

  
new

! $
HashSet

% ,
<

, -
TblSocialFeedKisi

- >
>

> ?
(

? @
)

@ A
;

A B
TblSocialFeedLinks 
=  
new! $
HashSet% ,
<, -
TblSocialFeedLink- >
>> ?
(? @
)@ A
;A B
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
TipId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public   
virtual   
TblGeneralFirma   &
TblGeneralFirma  ' 6
{  7 8
get  9 <
;  < =
set  > A
;  A B
}  C D
=  E F
null  G K
!  K L
;  L M
public!! 
virtual!! 
TblGeneralSube!! %
TblGeneralSube!!& 4
{!!5 6
get!!7 :
;!!: ;
set!!< ?
;!!? @
}!!A B
=!!C D
null!!E I
!!!I J
;!!J K
public"" 
virtual"" 
TblSocialFeedTip"" '
Tip""( +
{"", -
get"". 1
;""1 2
set""3 6
;""6 7
}""8 9
="": ;
null""< @
!""@ A
;""A B
public## 
virtual## 
ICollection## "
<##" #
TblSocialFeedKisi### 4
>##4 5
TblSocialFeedKisis##6 H
{##I J
get##K N
;##N O
set##P S
;##S T
}##U V
public$$ 
virtual$$ 
ICollection$$ "
<$$" #
TblSocialFeedLink$$# 4
>$$4 5
TblSocialFeedLinks$$6 H
{$$I J
get$$K N
;$$N O
set$$P S
;$$S T
}$$U V
}%% 
}&& �#
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSocialFeedKisi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSocialFeedKisi *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
FeedId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
KisiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	GorulduMu 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Tipi 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
? 
	ResimLink  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblSsokullanici &
Kisi' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
null< @
!@ A
;A B
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public   
virtual   


{  3 4
get  5 8
;  8 9
set  : =
;  = >
}  ? @
=  A B
null  C G
!  G H
;  H I
}!! 
}"" �
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSocialFeedLink.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSocialFeedLink *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
long
SubeId
{
get
;
set
;
}
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
FeedId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
LinkId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 

Link% )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
null: >
!> ?
;? @
public 
virtual 
TblGeneralFirma &
TblGeneralFirma' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
nullG K
!K L
;L M
public 
virtual 
TblGeneralSube %
TblGeneralSube& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
public 
virtual 


{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
} 
} �
NC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSocialFeedTip.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSocialFeedTip )
{ 
public 
TblSocialFeedTip 
(  
)  !
{		 	
TblSocialFeeds

 
=

 
new

  
HashSet

! (
<

( )


) 6
>

6 7
(

7 8
)

8 9
;

9 :
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
virtual 
ICollection "
<" #

>0 1
TblSocialFeeds2 @
{A B
getC F
;F G
setH K
;K L
}M N
} 
} �
KC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSocialLink.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

{ 
public 

( 
) 
{		 	
TblSocialFeedLinks

 
=

  
new

! $
HashSet

% ,
<

, -
TblSocialFeedLink

- >
>

> ?
(

? @
)

@ A
;

A B
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Tanim 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
string 
? 
	KisaTanim  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Link 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
long 
? 
CariId 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
TblSocialFeedLink# 4
>4 5
TblSocialFeedLinks6 H
{I J
getK N
;N O
setP S
;S T
}U V
} 
} �
IC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsodavet.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsodavet $
{ 
public 
TblSsodavet 
( 
) 
{		 	
TblSsodavetDetays

 
=

 
new

  #
HashSet

$ +
<

+ ,
TblSsodavetDetay

, <
>

< =
(

= >
)

> ?
;

? @
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
virtual 
ICollection "
<" #
TblSsodavetDetay# 3
>3 4
TblSsodavetDetays5 F
{G H
getI L
;L M
setN Q
;Q R
}S T
} 
} �
NC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsodavetDetay.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsodavetDetay )
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
MasterId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
AdminMi 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
virtual 
TblGeneralFirma &
Firma' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblSsodavet "
Master# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
null: >
!> ?
;? @
public 
virtual 
TblGeneralSube %
Sube& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
} 
} �
HC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsohost.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

TblSsohost #
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ParamObject !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
TblGeneralIsletme (
Isletme) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} 
} �
HC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsoizin.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 

TblSsoizin #
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Mail 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Telefon 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
ProfilResmi 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
DogumTarihi 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual 
TblSsokullanici &
	Kullanici' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} 
} �L
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsokullanici.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsokullanici (
{ 
public 
TblSsokullanici 
( 
)  
{		 	 
TblFileDosyaSistemis

  
=

! "
new

# &
HashSet

' .
<

. /
TblFileDosyaSistemi

/ B
>

B C
(

C D
)

D E
;

E F"
TblFileFavoriDosyalars "
=# $
new% (
HashSet) 0
<0 1!
TblFileFavoriDosyalar1 F
>F G
(G H
)H I
;I J 
TblGeneralFavorilers  
=! "
new# &
HashSet' .
<. /
TblGeneralFavoriler/ B
>B C
(C D
)D E
;E F$
TblGeneralGrupKullanicis
=
new
HashSet
<
TblGeneralGrupKullanici
>
(
)
;
TblGeneralSubeKullanicis $
=% &
new' *
HashSet+ 2
<2 3#
TblGeneralSubeKullanici3 J
>J K
(K L
)L M
;M N&
TblGeneralUserApplications &
=' (
new) ,
HashSet- 4
<4 5%
TblGeneralUserApplication5 N
>N O
(O P
)P Q
;Q R
TblSocialFeedKisis 
=  
new! $
HashSet% ,
<, -
TblSocialFeedKisi- >
>> ?
(? @
)@ A
;A B
TblSsoizins 
= 
new 
HashSet %
<% &

TblSsoizin& 0
>0 1
(1 2
)2 3
;3 4
TblSsotokens 
= 
new 
HashSet &
<& '
TblSsotoken' 2
>2 3
(3 4
)4 5
;5 6
TblSsoyonlendirmes 
=  
new! $
HashSet% ,
<, -
TblSsoyonlendirme- >
>> ?
(? @
)@ A
;A B
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public   
string   
UserName   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
=  - .
null  / 3
!  3 4
;  4 5
public!! 
string!! 
Password!! 
{!!  
get!!! $
;!!$ %
set!!& )
;!!) *
}!!+ ,
=!!- .
null!!/ 3
!!!3 4
;!!4 5
public"" 
string"" 
Name"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
="") *
null""+ /
!""/ 0
;""0 1
public## 
string## 
SurName## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
=##, -
null##. 2
!##2 3
;##3 4
public$$ 
string$$ 
?$$ 
Email$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public%% 
bool%% 
Active%% 
{%% 
get%%  
;%%  !
set%%" %
;%%% &
}%%' (
public&& 
bool&& 
IsAdmin&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public'' 
bool'' 
IsSuperAdmin''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public(( 
bool(( 
Approved(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public)) 
DateTime)) 
?)) 
PasswordExpireDate)) +
{)), -
get)). 1
;))1 2
set))3 6
;))6 7
}))8 9
public** 
bool** 

{**" #
get**$ '
;**' (
set**) ,
;**, -
}**. /
public++ 
string++ 
?++ 
TimeZone++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public,, 
long,, 
?,, 
KullaniciTipId,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
public-- 
string-- 
?-- 
ProfilResmi-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
public.. 
string.. 
?.. 
Telefon.. 
{..  
get..! $
;..$ %
set..& )
;..) *
}..+ ,
public// 
string// 
AuthType// 
{//  
get//! $
;//$ %
set//& )
;//) *
}//+ ,
=//- .
null/// 3
!//3 4
;//4 5
public00 
DateTime00 
?00 
	DogumGunu00 "
{00# $
get00% (
;00( )
set00* -
;00- .
}00/ 0
public22 
virtual22 
TblSsokullaniciTipi22 *
?22* +
KullaniciTip22, 8
{229 :
get22; >
;22> ?
set22@ C
;22C D
}22E F
public33 
virtual33 
ICollection33 "
<33" #
TblFileDosyaSistemi33# 6
>336 7 
TblFileDosyaSistemis338 L
{33M N
get33O R
;33R S
set33T W
;33W X
}33Y Z
public44 
virtual44 
ICollection44 "
<44" #!
TblFileFavoriDosyalar44# 8
>448 9"
TblFileFavoriDosyalars44: P
{44Q R
get44S V
;44V W
set44X [
;44[ \
}44] ^
public55 
virtual55 
ICollection55 "
<55" #
TblGeneralFavoriler55# 6
>556 7 
TblGeneralFavorilers558 L
{55M N
get55O R
;55R S
set55T W
;55W X
}55Y Z
public66 
virtual66 
ICollection66 "
<66" ##
TblGeneralGrupKullanici66# :
>66: ;$
TblGeneralGrupKullanicis66< T
{66U V
get66W Z
;66Z [
set66\ _
;66_ `
}66a b
public77 
virtual77 
ICollection77 "
<77" ##
TblGeneralSubeKullanici77# :
>77: ;$
TblGeneralSubeKullanicis77< T
{77U V
get77W Z
;77Z [
set77\ _
;77_ `
}77a b
public88 
virtual88 
ICollection88 "
<88" #%
TblGeneralUserApplication88# <
>88< =&
TblGeneralUserApplications88> X
{88Y Z
get88[ ^
;88^ _
set88` c
;88c d
}88e f
public99 
virtual99 
ICollection99 "
<99" #
TblSocialFeedKisi99# 4
>994 5
TblSocialFeedKisis996 H
{99I J
get99K N
;99N O
set99P S
;99S T
}99U V
public:: 
virtual:: 
ICollection:: "
<::" #

TblSsoizin::# -
>::- .
TblSsoizins::/ :
{::; <
get::= @
;::@ A
set::B E
;::E F
}::G H
public;; 
virtual;; 
ICollection;; "
<;;" #
TblSsotoken;;# .
>;;. /
TblSsotokens;;0 <
{;;= >
get;;? B
;;;B C
set;;D G
;;;G H
};;I J
public<< 
virtual<< 
ICollection<< "
<<<" #
TblSsoyonlendirme<<# 4
><<4 5
TblSsoyonlendirmes<<6 H
{<<I J
get<<K N
;<<N O
set<<P S
;<<S T
}<<U V
}== 
}>> �
QC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsokullaniciTipi.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsokullaniciTipi ,
{ 
public 
TblSsokullaniciTipi "
(" #
)# $
{		 	
TblSsokullanicis

 
=

 
new

 "
HashSet

# *
<

* +
TblSsokullanici

+ :
>

: ;
(

; <
)

< =
;

= >
} 	
public
long
Id
{
get
;
set
;
}
public 
bool 
Silindi 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
Revizyon 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Aciklama 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
virtual 
ICollection "
<" #
TblSsokullanici# 2
>2 3
TblSsokullanicis4 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} � 
IC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsotoken.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsotoken $
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Guid 
	RequestId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
	AuthToken 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
AccessToken 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
IssuedOn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
	ExpiresOn !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
IsAutoLoginToken $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AuthCode 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
bool 
Killed 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
KillMsg 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
Source 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
LastOperationDate )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
virtual 
TblSsokullanici &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
null< @
!@ A
;A B
}   
}!! �
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\TblSsoyonlendirme.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
TblSsoyonlendirme *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
? 
	IsletmeNo 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
? 
FirmaNo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
? 
SubeNo 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
? 

{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
IsletmeUrlOnEk $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 
virtual !
TblGeneralApplication ,
?, -
Application. 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public 
virtual 
TblGeneralIsletme (
?( )
IsletmeNoNavigation* =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
virtual 
TblSsokullanici &
	Kullanici' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
public 
virtual 
TblGeneralFirma &
?& '
TblGeneralFirma( 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
TblGeneralSube %
?% &
TblGeneralSube' 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} �.
GC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwAlpatum.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
	VwAlpatum "
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
FirmaKod 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
string 
? 
VergiDairesi #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
MersisNo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 

{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
WebSiteAdres #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
AcikAdresMi 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Adres 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
? 
UlkeId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
? 
IlId 
{ 
get 
;  
set! $
;$ %
}& '
public 
long 
? 
IlceId 
{ 
get !
;! "
set# &
;& '
}( )
public   
long   
?   
MahKoyId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public!! 
string!! 
?!! 
KapiNo!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
string"" 
?"" 
DaireNo"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
string## 
?## 
TelNo## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public$$ 
string$$ 
?$$ 
FaxNo$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public%% 
string%% 
?%% 

IsletmeAdi%% !
{%%" #
get%%$ '
;%%' (
set%%) ,
;%%, -
}%%. /
public&& 
string&& 
?&& 
UlkeAdi&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
string'' 
?'' 
IlAdi'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public(( 
string(( 
?(( 
IlceAdi(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public)) 
string)) 
?)) 
	MahKoyAdi))  
{))! "
get))# &
;))& '
set))( +
;))+ ,
}))- .
}** 
}++ �
GC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwAppMenu.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
	VwAppMenu "
{ 
public 
int 
? 

{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
int

 
?

 
Sira

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
int 
? 
NavigationId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
Icon 
{ 
get 
; 
set  #
;# $
}% &
public
int
?
MasterId
{
get
;
set
;
}
public 
int 
? 
Name 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
? 
SubUrl 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
FavoriId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
FavoriMi 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 

{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
DisUrl 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
AppGuid 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
} 
} �
MC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwFavorilerInfo.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
VwFavorilerInfo (
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Yil 
{ 
get 
; 
set !
;! "
}# $
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
KisiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
NavigationId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
Adi 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
Url 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �&
DC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwFeed.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
VwFeed 
{ 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public		 
bool		 
?		 
Silindi		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
long

 
?

 
Revizyon

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
long 
? 
	IsletmeId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
long 
? 
FirmaId 
{ 
get "
;" #
set$ '
;' (
}) *
public
long
?
SubeId
{
get
;
set
;
}
public 
DateTime 
? 
OlusturmaTarih '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
long 
? 
OlusturanId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
? 
Guid 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
? 
Aktif 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
	Onaylandi 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Yil 
{ 
get 
; 
set "
;" #
}$ %
public 
long 
? 
FeedId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
? 
KisiId 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
	GorulduMu 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Tipi 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
? 
	ResimLink  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
long 
TipId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
Text 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
TipAdi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
TipAciklama "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Link 
{ 
get !
;! "
set# &
;& '
}( )
public   
string   
?   
AdSoyad   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public!! 
DateTime!! 
Tarih!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
long"" 
?"" 
CariId"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public## 
long## 
?## 
UserId## 
{## 
get## !
;##! "
set### &
;##& '
}##( )
}$$ 
}%% �/
OC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralFirmInfo.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class 
VwGeneralFirmInfo *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
FirmaKod 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
string 
? 
VergiDairesi #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
MersisNo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 

{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
WebSiteAdres #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
AcikAdresMi 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Adres 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
? 
UlkeId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
? 
IlId 
{ 
get 
;  
set! $
;$ %
}& '
public 
long 
? 
IlceId 
{ 
get !
;! "
set# &
;& '
}( )
public   
long   
?   
MahKoyId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public!! 
string!! 
?!! 
KapiNo!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
string"" 
?"" 
DaireNo"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
string## 
?## 
TelNo## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public$$ 
string$$ 
?$$ 
FaxNo$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public%% 
string%% 
?%% 

IsletmeAdi%% !
{%%" #
get%%$ '
;%%' (
set%%) ,
;%%, -
}%%. /
public&& 
string&& 
?&& 
UlkeAdi&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
string'' 
?'' 
IlAdi'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public(( 
string(( 
?(( 
IlceAdi(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public)) 
string)) 
?)) 
	MahKoyAdi))  
{))! "
get))# &
;))& '
set))( +
;))+ ,
}))- .
}** 
}++ �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralGrupKullanici.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
VwGeneralGrupKullanici /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public
int
SubeId
{
get
;
set
;
}
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
GrupId 
{ 
get  
;  !
set" %
;% &
}' (
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Ad 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
Soyad 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
AdSoyad 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
XC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralGrupKullaniciInfo.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class &
VwGeneralGrupKullaniciInfo 3
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
OlusturanId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public
long
?
DegistirenId
{
get
;
set
;
}
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
KullaniciId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 
GrupId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
Ad 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
SoyAd 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
AdSoyad 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
KisaAd 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
ProfilResmi "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
]C:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralIsletmeApplicationInfo.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class +
VwGeneralIsletmeApplicationInfo 8
{ 
public 
string 
Application !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public		 
string		 
?		 
BaseApiOnEk		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
long

 
	IsletmeId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} �
RC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralIsletmeInfo.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class  
VwGeneralIsletmeInfo -
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
DateTime 
OlusturmaTarih &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
DegisiklikTarih (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public
long
OlusturanId
{
get
;
set
;
}
public 
long 
? 
DegistirenId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Aktif 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
	Onaylandi 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Adi 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
string 
IsletmeUrlOnEk $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 
long 
IslemeId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

IsletmeAdi  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
FirmaAdi 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
long 
SubeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
SubeAdi 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
int 
? !
IsletmeUygulamaSayisi )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} �
TC:\Users\fatih\source\repos\CrudProject\CrudProject\Models\VwGeneralPasifKulanici.cs
	namespace 	
CrudProject
 
. 
Models 
{ 
public 

partial 
class "
VwGeneralPasifKulanici /
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
bool		 
Silindi		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
long

 
Revizyon

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
long 
	IsletmeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
FirmaId 
{ 
get !
;! "
set# &
;& '