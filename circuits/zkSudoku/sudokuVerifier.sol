// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract sudokuVerifier {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 20491192805390485299153009773594534940189261866228447918068658471970481763042;
    uint256 constant alphay  = 9383485363053290200918347156157836566562967994039712273449902621266178545958;
    uint256 constant betax1  = 4252822878758300859123897981450591353533073413197771768651442665752259397132;
    uint256 constant betax2  = 6375614351688725206403948262868962793625744043794305715222011528459656738731;
    uint256 constant betay1  = 21847035105528745403288232691147584728191162732299865338377159692350059136679;
    uint256 constant betay2  = 10505242626370262277552901082094356697409835680220590971873171140371331206856;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 10891573639021586935918836305627225011923753775654254132035634818661167449477;
    uint256 constant deltax2 = 12365834854286857458620568032949934358216960978178892887085808229911111156081;
    uint256 constant deltay1 = 20542565928945464445822149690899081407483378086276434268979822445804659615499;
    uint256 constant deltay2 = 8548103944605272300019408240504302223559850727498837462097721725390685724894;

    
    uint256 constant IC0x = 18744856974577335524087111583283716725753369938280098144352080594610948807796;
    uint256 constant IC0y = 1479526294218202830639703853786995822659217651437540174962615861063099876676;
    
    uint256 constant IC1x = 14360640151400005208190689674713908641088455170510108073971782066072999690995;
    uint256 constant IC1y = 18736364242597519033174329925085381859016667071998871513783001228839741366398;
    
    uint256 constant IC2x = 15123696856231654407454212528434783834484277601486296861695592946965300872102;
    uint256 constant IC2y = 8604047782901747553870149748568422860050452585334062464773422866141100117484;
    
    uint256 constant IC3x = 8842617025731688917160635844186942351228883491948461392029980496037875840538;
    uint256 constant IC3y = 5552370993129228522078388201849674402809329708648804323433687158289901954680;
    
    uint256 constant IC4x = 1171113302887455006724877096892075619079824405540923066682593894789640704458;
    uint256 constant IC4y = 14721882647367089682734693211870163444774247805031618098119535673879420134670;
    
    uint256 constant IC5x = 16364835946445698464906543787644520489051031818039070751834437194712774078578;
    uint256 constant IC5y = 3539760492016906874682401025539931148673859057636137157952095906605567475544;
    
    uint256 constant IC6x = 13442278446763509991675774113565585849323127413954741089449743672566866249745;
    uint256 constant IC6y = 17870166328758091900997869316772568241130241090890903891096977702641884703916;
    
    uint256 constant IC7x = 14742745668947410596855880441643706338426284629788544954606979726083942262420;
    uint256 constant IC7y = 12568098657338624544799468435235206892237951502550342701960642808955572982660;
    
    uint256 constant IC8x = 7930214701270243938584461068280757225375488310502648989399016109154931574679;
    uint256 constant IC8y = 13624166572338820440889463239352140146059322451778661245478299834862717453065;
    
    uint256 constant IC9x = 17266837670572847259238476254739969239672304395445683220101232793002882046571;
    uint256 constant IC9y = 10770792449012425030235748553991008804610193766716484615136098785268138059295;
    
    uint256 constant IC10x = 10378755522279978016017993257623772200111977234338666011322547067318093447756;
    uint256 constant IC10y = 18327657569611926362527809434045910073387501739985744099201932695001945929922;
    
    uint256 constant IC11x = 13587517017100439172911332765068892815446675594994632036377161996746158749917;
    uint256 constant IC11y = 4328811371517224794448152560484411228310956995086616047236620804902571224594;
    
    uint256 constant IC12x = 4277203350236046882845362933807201937742945013250326158476276582360178659163;
    uint256 constant IC12y = 9828816749595709827498213135541308915412557237857109277673931207967831009695;
    
    uint256 constant IC13x = 21878928584148656892984036538909862825160950892672861800876469227269698055336;
    uint256 constant IC13y = 15356641687263904406488613067415626333165273340270079594216517579838065534330;
    
    uint256 constant IC14x = 14173461932446590070367438253050178156213064877581637329229616402966672948861;
    uint256 constant IC14y = 18125013697031309159580832672226344598582798213471204432660135500234756034851;
    
    uint256 constant IC15x = 14434669836466563892150912847514364078748020089223960720329510726360263606603;
    uint256 constant IC15y = 18581511801525689856336953931283521252020069710781699742277596878219252658471;
    
    uint256 constant IC16x = 17987536860316292087078662202210341158811042913251211883385087231313799783062;
    uint256 constant IC16y = 16160007668900275433991453414293663471620230469687928298069902369366974867101;
    
    uint256 constant IC17x = 1304980919222294375388085235461139008710409830848794674297894706558354001858;
    uint256 constant IC17y = 985456781648307615544409340912641453630721043441461581965713474060974297715;
    
    uint256 constant IC18x = 9382637137743132547279631048083470799146282359684825181533446132735655520219;
    uint256 constant IC18y = 6942325239732570605873292642006413451828559602586316729691023874636212788456;
    
    uint256 constant IC19x = 11673540734743925979144091442524303646926318774975874846403507577903647030884;
    uint256 constant IC19y = 5681733679740177794363374954385556074380558725647425907646439055701058398206;
    
    uint256 constant IC20x = 11961918632361309397185877263759488278286996926651169100407650706377771033591;
    uint256 constant IC20y = 8137112520712248165722140692157834721155346111744612086578999060281130604772;
    
    uint256 constant IC21x = 8361497725932493984994248679992989930436575509350007807624871955658886106784;
    uint256 constant IC21y = 13132403338132141509827980562014479353967939625146816091312713813943522517215;
    
    uint256 constant IC22x = 9437523505435119697751414736510308811237723577252771971974255435673568850075;
    uint256 constant IC22y = 11264477205358664584128117178042657754534138763501129933691593148201911636395;
    
    uint256 constant IC23x = 3712491564978162013135096506816098130939042319051547389859583849085798843666;
    uint256 constant IC23y = 7069171771672981386746514306129328376450888693217422869750670673379479214746;
    
    uint256 constant IC24x = 21071121826537118766112451755604070992334189336495432008589325746853714088532;
    uint256 constant IC24y = 9990442814113113809543153977169089667789034459772871598243460697608238013753;
    
    uint256 constant IC25x = 8478754719852586195962751919877645271172441327272672212658188193353422972532;
    uint256 constant IC25y = 790370424469106115187208735070131671823880886675114741266537574991393469710;
    
    uint256 constant IC26x = 20521476430240725129736112159097535807019377312606107264702961684618271067235;
    uint256 constant IC26y = 20612045785556867375890521066425507348040224020860199221117003862761668158558;
    
    uint256 constant IC27x = 11007825202243272777098528110667005715712065984991848681914272190662267103917;
    uint256 constant IC27y = 6066554547107504249589889727328284157667866440104002395441259870634375094904;
    
    uint256 constant IC28x = 9680840138170188050398128190230374186495449840273982443725131429316558077295;
    uint256 constant IC28y = 6525349762181714385519291642543968396335663223362213286957664756173767191191;
    
    uint256 constant IC29x = 17131134787426695681464718926831475861155299068037644598857451198346350768160;
    uint256 constant IC29y = 20555168976354151007343653473216938460595260567789534594252493220315535553865;
    
    uint256 constant IC30x = 11065174838307012610587558068571545204197808511177542024001169450616724681926;
    uint256 constant IC30y = 9699610198855600168078951547586288825726146688035562351912919930499844414767;
    
    uint256 constant IC31x = 5954086700905929336036581406841352292101920643645269828879874047287899989578;
    uint256 constant IC31y = 21440994190432851627730174021533234440490089813852872959167918448877501583561;
    
    uint256 constant IC32x = 6843287088131715445339595982362275700363652778699174226105043297064825477212;
    uint256 constant IC32y = 2909053495243892027238323666652486457422678575709673423453276967119977132632;
    
    uint256 constant IC33x = 15398630500258238363823112171985744171644521778712091774841396400792573264590;
    uint256 constant IC33y = 9223406900249627730245174088044962859791067195498629833477223058494574067066;
    
    uint256 constant IC34x = 5562831394419190163765250691875306949424740012235462679430444682375265382677;
    uint256 constant IC34y = 15678316301061856161075507249268487683030804332115912691451622032086783284969;
    
    uint256 constant IC35x = 15896385293604881591522981211665885303973026146014265560342810938644357423984;
    uint256 constant IC35y = 15783791780941813250223407652842788102290591585195030803300630161692184046290;
    
    uint256 constant IC36x = 17217741314165675094373180915551266917478641712213205471818831929212423672434;
    uint256 constant IC36y = 5937475912594130346420168766324526650380921079026704750944059752904709567823;
    
    uint256 constant IC37x = 15716183568300464211403141479261058487069739184856287049860231907489264086454;
    uint256 constant IC37y = 11997948149753437720942452294326953846152253425723568919032798995838241359609;
    
    uint256 constant IC38x = 8186116786467076887989592120935079146548504939292161014514352857300089249452;
    uint256 constant IC38y = 3409803782852238043592807627664836794430516313818271194463037497753507322696;
    
    uint256 constant IC39x = 12766735227448630240639729048259512044549754184327424840397507983058002105781;
    uint256 constant IC39y = 18222190573088742316886253450379856007814178510894469990442865896171057638309;
    
    uint256 constant IC40x = 6633870318116109035982023192276258469870563588132260427102410172327611778446;
    uint256 constant IC40y = 2472280974508183144542504994608234466271801086459014543330829925805883677125;
    
    uint256 constant IC41x = 1410115855702276223590077644243185072151125426788051001121008069119801479514;
    uint256 constant IC41y = 1876575797211894446257645270145767308896142262741626265473590951059334852000;
    
    uint256 constant IC42x = 15659567126613477519803985045126721236068187902904122043449950403545565651233;
    uint256 constant IC42y = 18389563676382588523556432623859716140388965684530073141927378224687347973495;
    
    uint256 constant IC43x = 9664272294084984161774224920559998747132285279774933795792030842779420149548;
    uint256 constant IC43y = 21107640581184031819597597797775443496696539417300599274087676751147291867183;
    
    uint256 constant IC44x = 1255720757016950238168424870365739107723769267454956396420967039879216561645;
    uint256 constant IC44y = 2565766230821702266064613705642254501821444425107509762015756440155900854153;
    
    uint256 constant IC45x = 8854405279182558504377543807085323846169855224850932637271569812576930880812;
    uint256 constant IC45y = 8664805373149257229061347105232064067481888214201135564436533701899557739022;
    
    uint256 constant IC46x = 11810513309517685564055313538530119775418281988508709587698571141374429575446;
    uint256 constant IC46y = 18332447574564980079934481015603263552745326190558759453672281214051814692802;
    
    uint256 constant IC47x = 15638858699441840830506260958344283172731548293671004398781855386245722986445;
    uint256 constant IC47y = 2662936843751921331243701549390053632181140427318926878275665200958487996090;
    
    uint256 constant IC48x = 20398471379503341630366768220290345853227769163591598062634535698465905108033;
    uint256 constant IC48y = 4316108520832159402474993786745694717750943651597088771878319484102385076632;
    
    uint256 constant IC49x = 904405013986095333150607848335039132856478890039865297213325019107839985702;
    uint256 constant IC49y = 7645659698859370934496897833722632134964456038449403517032952264137007535272;
    
    uint256 constant IC50x = 8924964212188933581182100001780658110256524992610029976872338837649978411619;
    uint256 constant IC50y = 18661869422513162294747927948675726788039750649210211913180709268835354401940;
    
    uint256 constant IC51x = 16535248758362637367421739623901881799372365453346532220490224451149832445724;
    uint256 constant IC51y = 11904678550388423709738544519005264553181625004479178726535809672318901336035;
    
    uint256 constant IC52x = 16903663786070440315420150136279203432265705071791701605815628052271706287273;
    uint256 constant IC52y = 15422640469755371128694398664921943505852440116884241370748840361108865999356;
    
    uint256 constant IC53x = 19759370166204172457801208376960455580341039764082113314738978980046243992621;
    uint256 constant IC53y = 20698896077470202407017870089879380780622164467517834925076128216682369796309;
    
    uint256 constant IC54x = 12606872727873976528635575426768033596469832890600332773578175109946364012458;
    uint256 constant IC54y = 9041947537796858928759577993382832080265168332477764620640451309817876773217;
    
    uint256 constant IC55x = 10654782717179995385957181544495320271854719820126626105646830683784258815601;
    uint256 constant IC55y = 1885306785974532971226118367012317131028899841342579310638201484890943396382;
    
    uint256 constant IC56x = 13444845253277292126018172082126652407196784664781859460075518486388420033009;
    uint256 constant IC56y = 1594791973996532044629890145624600321796940265752136473369373330439700970634;
    
    uint256 constant IC57x = 8229028176638333700198443274277146153702684282418480214050936432337258214260;
    uint256 constant IC57y = 9277178602986571538702657364991570759254542755298171948671412068697933417552;
    
    uint256 constant IC58x = 20134742734359158048992344648179249703684498891928463935074094094692029032792;
    uint256 constant IC58y = 8628671394985365551585032332901972400664111349113501958634342045794748800775;
    
    uint256 constant IC59x = 11222708497074039438657728933077444384869923714156220647120423329969640007757;
    uint256 constant IC59y = 2617036732657869078058964694123861015926035473394841964897208933165333755221;
    
    uint256 constant IC60x = 6648611175633142734767759134199558535801334514825681705545982722389658709082;
    uint256 constant IC60y = 6925452411948461838970851552762947204301083563364702324165524577282786403492;
    
    uint256 constant IC61x = 19948716090537379407682110713078331710882776133919770696309634144285476683678;
    uint256 constant IC61y = 4644107519057335334011558792118352028871736675712141318160797964260730726562;
    
    uint256 constant IC62x = 17225404654328576962696612202803696007957759527306951296041452905645240051360;
    uint256 constant IC62y = 20647913504305605198730538234893314443543673288947473312953517209627278181111;
    
    uint256 constant IC63x = 599853772913558654738261443935038644559600819161773106877675128961407836046;
    uint256 constant IC63y = 12410221888845495797992783636182944497378202939801273110685491871848518837753;
    
    uint256 constant IC64x = 18743351950218800002278731622477120681891952983427265206764404458188791632924;
    uint256 constant IC64y = 19187559544752634641784586055852751646022604896347156226209760669691032142315;
    
    uint256 constant IC65x = 10942918300309367174626714498095281187849232663161942149598056169566958417760;
    uint256 constant IC65y = 4558072787263591907496333164895247145356350919087786092718520180560154385151;
    
    uint256 constant IC66x = 12784215884199509575594033231615986545494328486217960848438832568039545138534;
    uint256 constant IC66y = 505639645910710036577772780240170563287540766366448871932694295885122503691;
    
    uint256 constant IC67x = 16175128822611701031736399317531068627719687167032672333573532159546671793528;
    uint256 constant IC67y = 12100714809153957000780758552160141348029185715675555976690820303998866623778;
    
    uint256 constant IC68x = 13296820643760381350613024113388484311260239314959426874984192102817836433499;
    uint256 constant IC68y = 18458776756436798278855551457640523070402296795999572161461967982853400946808;
    
    uint256 constant IC69x = 13847336411972634967830297716873568513548387114264087018156137273182306642610;
    uint256 constant IC69y = 4374057569195633139666345872493303726341109800717557525268941421622055712851;
    
    uint256 constant IC70x = 2781281018859784919820346657600592335427926100953493681441924279850345070217;
    uint256 constant IC70y = 16888966381617255222231840525837980583082463227237768096509619470389882499146;
    
    uint256 constant IC71x = 3997465536332585749768230177916810429849661943592825563766549302023627391024;
    uint256 constant IC71y = 11312931465906747125146078122991695813088321461649883450087852782775001874943;
    
    uint256 constant IC72x = 21767068463442151999483872941755277922832480635081106428461762858325876737265;
    uint256 constant IC72y = 5708064475185510771027693111792257069949892111730161916102589144982013846434;
    
    uint256 constant IC73x = 9076520838662930065962624612966368475939552006937174711761647341489639076446;
    uint256 constant IC73y = 7621782025009645491972457818083188329507589630794278571716519121474156426581;
    
    uint256 constant IC74x = 17516566165315127510922325380999845515436997940860615455594105690454370271933;
    uint256 constant IC74y = 21877263645753821306459933634096630812046024307370008623837445356616868250537;
    
    uint256 constant IC75x = 18052513684085076024962903834939540173223541850412229374310113524644092868332;
    uint256 constant IC75y = 17255290451183567406389764855292659934455951996801271609078634280430236365075;
    
    uint256 constant IC76x = 4143404553865269032082891314085433678046382302319112556479423549094144723968;
    uint256 constant IC76y = 18233557639319541560121235097644933591429659140318651386471423888611227747606;
    
    uint256 constant IC77x = 8460261631265906388750632473256224455514521998197698581951813622305442858373;
    uint256 constant IC77y = 16121005530907983071461525546641813322118319857212661177897977171779390336724;
    
    uint256 constant IC78x = 17052375441795200041036173155412447506970419375212828740474878476291075910882;
    uint256 constant IC78y = 4487661155735578133005335831765766122615572583832279263176160314322257456072;
    
    uint256 constant IC79x = 13621463995547818499929180253629834494189918144339266743145316500931013760585;
    uint256 constant IC79y = 5382439695092984530224098735092507497075020557256436974125323010588306691754;
    
    uint256 constant IC80x = 3752949960542641611604948483432309983635700020214123768335441509110736333319;
    uint256 constant IC80y = 19744668910585780964283395759807133035327120316369328152877091102793783367155;
    
    uint256 constant IC81x = 3257819887405097645325261128307843673782310638826210108584757594698314911020;
    uint256 constant IC81y = 20074998268316683028742714881792076819105956911625268447853700749194346891714;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[81] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                
                g1_mulAccC(_pVk, IC68x, IC68y, calldataload(add(pubSignals, 2144)))
                
                g1_mulAccC(_pVk, IC69x, IC69y, calldataload(add(pubSignals, 2176)))
                
                g1_mulAccC(_pVk, IC70x, IC70y, calldataload(add(pubSignals, 2208)))
                
                g1_mulAccC(_pVk, IC71x, IC71y, calldataload(add(pubSignals, 2240)))
                
                g1_mulAccC(_pVk, IC72x, IC72y, calldataload(add(pubSignals, 2272)))
                
                g1_mulAccC(_pVk, IC73x, IC73y, calldataload(add(pubSignals, 2304)))
                
                g1_mulAccC(_pVk, IC74x, IC74y, calldataload(add(pubSignals, 2336)))
                
                g1_mulAccC(_pVk, IC75x, IC75y, calldataload(add(pubSignals, 2368)))
                
                g1_mulAccC(_pVk, IC76x, IC76y, calldataload(add(pubSignals, 2400)))
                
                g1_mulAccC(_pVk, IC77x, IC77y, calldataload(add(pubSignals, 2432)))
                
                g1_mulAccC(_pVk, IC78x, IC78y, calldataload(add(pubSignals, 2464)))
                
                g1_mulAccC(_pVk, IC79x, IC79y, calldataload(add(pubSignals, 2496)))
                
                g1_mulAccC(_pVk, IC80x, IC80y, calldataload(add(pubSignals, 2528)))
                
                g1_mulAccC(_pVk, IC81x, IC81y, calldataload(add(pubSignals, 2560)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            
            checkField(calldataload(add(_pubSignals, 2144)))
            
            checkField(calldataload(add(_pubSignals, 2176)))
            
            checkField(calldataload(add(_pubSignals, 2208)))
            
            checkField(calldataload(add(_pubSignals, 2240)))
            
            checkField(calldataload(add(_pubSignals, 2272)))
            
            checkField(calldataload(add(_pubSignals, 2304)))
            
            checkField(calldataload(add(_pubSignals, 2336)))
            
            checkField(calldataload(add(_pubSignals, 2368)))
            
            checkField(calldataload(add(_pubSignals, 2400)))
            
            checkField(calldataload(add(_pubSignals, 2432)))
            
            checkField(calldataload(add(_pubSignals, 2464)))
            
            checkField(calldataload(add(_pubSignals, 2496)))
            
            checkField(calldataload(add(_pubSignals, 2528)))
            
            checkField(calldataload(add(_pubSignals, 2560)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
