import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelzilla/pages/activity_model.dart';


class Destination{
  String imageUrl;
  String municipality;
  String description;
  double long;
  double lat;
  List<Activity> activities;
  Destination({
    this.imageUrl,
    this.municipality,
    this.description,
    this.long,
    this.lat,
    this.activities,
});
}


List<Activity> activities1 = [
  Activity(
    imageUrl: 'assets/board walk.jpg',
    name: 'Board Walk',
    type: 'Sightseeing Tour',
    startTimes: ['6:00 am', '6:00 pm'],
    lat: 8.59089,
    long: 124.47556,
  ),
  Activity(
    imageUrl: 'assets/tubajon.jpg',
    name: 'Tubajon Aquamarine Park',
    type: 'Sightseeing Tour',
    startTimes: ['7:00 am', '5:00 pm'],
    lat: 8.6229,
    long: 124.4639,
  ),
  Activity(
    imageUrl: 'assets/balsa-briana.jpg',
    name: 'Balsa Briana',
    type: 'Sightseeing Tour',
    startTimes: ['6:00 am', '3:30 pm'],
    lat: 8.5826,
    long: 124.4780,
  ),
  Activity(
    imageUrl: 'assets/mt.salumayagon.jpeg',
    name: 'Mt. Salumayagon',
    type: 'Sightseeing Tour',
    startTimes: ['6:00 am', '3:30 pm'],
    lat: 8.5008,
    long: 124.4309,
  ),

];

List<Activity> activities2 = [
  Activity(
    imageUrl: 'assets/Del Carmen Beach.jpg',
    name: 'Del Carmen Beach & Pool',
    type: 'Beach Resort',
    startTimes: ['7:30 am', '5:00 pm'],
    lat: 8.7884,
    long: 124.7737,
  ),
  Activity(
    imageUrl: 'assets/madeline\'s.jpg',
    name: 'Madeline\'s Park and Resort',
    type: 'Resort',
    startTimes: ['7:30 am', '5:00 pm'],
    lat: 8.745204761777739,
    long: 124.79694795852036,
  ),
  Activity(
    imageUrl: 'assets/hard rock.jpg',
    name: 'Hardrock Lux spring Resort',
    type: 'Resort',
    startTimes: ['7:30 am', '5:00 pm'],
    lat: 8.729795061919503,
    long: 124.8149754970067,
  ),
  Activity(
    imageUrl: 'assets/spot.jpg',
    name: 'The Spot',
    type: 'Restaurant',
    startTimes: ['8:30 am', '8:00 pm'],
    lat: 8.773371176345062,
    long: 124.778648639335,
  ),

];

List<Activity> activities3 = [
  Activity(
    imageUrl: 'assets/mantangale.jpg',
    name: 'Mantangale Alibuag Dive Resort Inc.',
    type: 'Resort',
    startTimes: ['9:00 am', '5:00 pm'],
      lat: 9.007117815123888,
      long: 124.8580885763235,
  ),
  Activity(
    imageUrl: 'assets/pading.jpg',
    name: 'Pading Restaurant',
    type: 'Restaurant',
    startTimes: ['9:00 am', '5:00 pm'],
    lat: 9.004462109025837,
    long: 124.84687628351593,
  ),
  Activity(
    imageUrl: 'assets/Pading Lagoon.jpg',
    name: 'Pading Lagoon',
    type: 'Resort',
    startTimes: ['9:00 am', '5:00 pm'],
    lat: 	9.00430642684,
    long: 124.846727931,
  ),
  Activity(
    imageUrl: 'assets/dahilig nest.jpg',
    name: 'Dahilig Nest',
    type: 'Sightseeing Tour',
    startTimes: ['0:00 am', '0:00 pm'],
    lat: 	8.915093141184318,
    long: 124.86692256256482,

  ),
];

List<Activity> activities4 = [
  Activity(
    imageUrl: 'assets/Lourdes Bay Resort.jpg',
    name: 'Lourdes Bay Resort',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.917046805404524,
      long: 124.78437119166692
  ),
  Activity(
      imageUrl: 'assets/kan anan ni Adoy.jpg',
      name: 'Kan Anan ni Adoy',
      type: 'Restaurant',
      startTimes: ['5:45 am', '9:00 pm'],
      lat: 8.915386781422011,
      long: 124.78418821017917
  ),
  Activity(
      imageUrl: 'assets/adoy sa lapyahan.jpg',
      name: 'Adoy sa Lapyahan',
      type: 'Restaurant',
      startTimes: ['4:30 am', '9:00 pm'],
      lat: 8.901471839453068,
      long: 124.78620873550362
  ),
];

List<Activity> activities5 = [
  Activity(
    imageUrl: 'assets/mapawa.jpg',
    name: 'Mapawa Nature Park',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.43536206219916,
      long: 124.70350924123737
  ),
  Activity(
    imageUrl: 'assets/eden solace.jpg',
    name: 'Eden\'s Solace',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '12:00 am'],
      lat: 8.443783157709323,
      long: 124.65363887007281
  ),
  Activity(
      imageUrl: 'assets/catanico falls.jpg',
      name: 'F.S Catanico Falls',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.451162814783059,
      long: 124.73166645473142
  ),
  Activity(
      imageUrl: 'assets/larry hills.jpg',
      name: 'Larry\'s Hill Adventure Hub',
      type: 'Amusement Park',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.42202671732446,
      long: 124.6569414221381
  ),
];

List<Activity> activities6 = [
  Activity(
    imageUrl: 'assets/view deck.jpg',
    name: 'View Deck',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.635076686939016,
      long: 124.94728131161578
  ),
  Activity(
      imageUrl: 'assets/mt. sumagaya.jpg',
      name: 'Mount Sumagaya',
      type: 'Sightseeing Tour',
      startTimes: ['0:00 am', '0:00 pm'],
      lat: 8.658547991505902,
      long: 125.02705036094035
  ),
  Activity(
      imageUrl: 'assets/san roque falls.JPG',
      name: 'San Roque Falls',
      type: 'Sightseeing Tour',
      startTimes: ['7:00 am', '5:00 pm'],
      lat: 8.691148543849282,
      long: 124.99153989037121
  ),
];

List<Activity> activities7 = [
  Activity(
    imageUrl: 'assets/Divine Mercy.jpg',
    name: 'Divine Mercy Shrine',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.547306097122473,
      long: 124.52772655467778
  ),
  Activity(
      imageUrl: 'assets/blue view resort.jpg',
      name: 'Blueview Resort Inc.',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.549883833941461,
      long: 124.52456347190416,
  ),
  Activity(
      imageUrl: 'assets/tuburan spring.jpg',
      name: 'Tuburan Spring',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.558533153589421,
      long: 124.5223045562803
  ),
  Activity(
      imageUrl: 'assets/El Salvador Beach Front Resort & Restaurant.jpg',
      name: 'El Salvador Beach Front Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.572308344747261,
      long: 124.51218619558561
  ),
];

List<Activity> activities8 = [
  Activity(
    imageUrl: 'assets/Tiklas Falls.jpg',
    name: 'Tiklas Falls',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.758368187058801,
      long: 125.12082341049897
  ),
  Activity(
      imageUrl: 'assets/Badiangon Cold Spring.jpg',
      name: 'Badiangon Cold Spring',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.836724438871276,
      long: 125.06835887033243
  ),
  Activity(
      imageUrl: 'assets/Mount Balatukan.jpg',
      name: 'Mount Balatukan',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.771780813903629,
      long: 124.97957065614395
  ),
  Activity(
      imageUrl: 'assets/Guadjus Eco Farm Resort.jpg',
      name: 'Guadjus Eco Farm Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.805644717369784,
      long: 125.12011436917652
  ),

];

List<Activity> activities9 = [
  Activity(
    imageUrl: 'assets/BURNAY SANDS.jpg',
    name: 'Burnay Sands',
    type: 'Resort',
    startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.595201661485637,
      long: 124.39705751856363
  ),
  Activity(
      imageUrl: 'assets/Lagoon Beach Resort.jpg',
      name: 'Lagoon Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '8:00 pm'],
      lat: 8.591934278839929,
      long: 124.38422583067037,
  ),
  Activity(
      imageUrl: 'assets/Sikitun Hills.jpg',
      name: 'Sikitun Hills',
      type: 'Sightseeing Tour',
      startTimes: ['7:00 am', '5:00 pm'],
      lat: 8.543358844305821,
      long: 124.41647914856347
  ),
  Activity(
      imageUrl: 'assets/Dailo\'s Beach And Pool Resort.jpg',
      name: 'Dailo\'s Beach And Pool Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '8:00 pm'],
      lat: 8.594318848858697,
      long: 124.39139975092304
  ),
];

List<Activity> activities10 = [
  Activity(
    imageUrl: 'assets/Lasang Secret Adventure.jpg',
    name: 'Lasang Secret Adventure',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.543949977833734,
      long: 124.31941489521472
  ),
  Activity(
      imageUrl: 'assets/Kinason at Midway White Beach.jpg',
      name: 'Kinason at Midway White Beach',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.532994389255693,
      long: 124.31175880350247
  ),
  Activity(
      imageUrl: 'assets/Blu Sands Beach Resort, Inc.jpg',
      name: 'Blu Sands Beach Resort, Inc',
      type: 'Resort',
      startTimes: ['6:00 am', '10:00 pm'],
      lat:  8.53366150509964,
      long:  124.31207568171958
  ),
  Activity(
      imageUrl: 'assets/Kinason at Midway White Beach.jpg',
      name: 'Jestrella Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.520270508476006,
      long: 124.31344619959636
  ),
];

List<Activity> activities11 = [
  Activity(
      imageUrl: 'assets/Kinason at Midway White Beach.jpg',
      name: 'Agutayan Island',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.671516198722962,
      long: 124.69032882007362
  ),
  Activity(
      imageUrl: 'assets/Sagpulon Falls.jpg',
      name: 'Sagpulon Falls',
      type: 'Resort',
      startTimes: ['6:00 am', '6:00 am'],
      lat:  8.623971182221636,
      long: 124.81428045288459
  ),
  Activity(
      imageUrl: 'assets/Monte Richi Beach Resort.jpg',
      name: 'Monte Richi Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.699432991090315,
      long: 124.74402529890898
  ),
  Activity(
      imageUrl: 'assets/Napapong Spring.jpg',
      name: 'Napapong Spring',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.607860090864628,
      long: 124.80816361606607
  ),
];

List<Activity> activities12 = [
  Activity(
      imageUrl: 'assets/Kinoguitan Sungo Sungo Camiguin View.jpg',
      name: 'Kinoguitan Sungo Sungo Camiguin View',
      type: 'Sightseeing Tour',
      startTimes: ['6:00 am', '5:00 pm'],
      lat:  8.9857419009319,
      long: 124.79013378510709
  ),
  Activity(
      imageUrl: 'assets/Sancho\'s by the Road.jpg',
      name: 'Sancho\'s by the Road',
      type: 'Restaurant',
      startTimes: ['7:30 am', '7:30 pm'],
      lat:  9.002892060501667,
      long: 124.82744797624682
  ),
];
List<Activity> activities13 = [
  Activity(
      imageUrl: 'assets/Sapong Spring.JPG',
      name: 'Sapong Spring',
      type: 'Resort',
      startTimes: ['7:30 am', '5:30 pm'],
      lat:  8.795496239108148,
      long: 124.79410689706201
  ),
  Activity(
      imageUrl: 'assets/Sapong Spring.JPG',
      name: 'Lagonglong Enchanted river',
      type: 'Sightseeing Tour',
      startTimes: ['7:30 am', '5:30 pm'],
      lat:  8.80347960638905,
      long: 124.81357523685779
  ),
];
List<Activity> activities14 = [
  Activity(
      imageUrl: 'assets/Coral Beach Resort.jpg',
      name: 'Coral Beach Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.623311244895293,
      long: 124.46119815842691
  ),
  Activity(
      imageUrl: 'assets/White Beach.jpg',
      name: 'White Beach',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat:  8.622911608331878,
      long:  124.46259742347135
  ),
  Activity(
      imageUrl: 'assets/Codi Beach Resort.jpg',
      name: 'Codi Beach Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat:  8.624415523741023,
      long: 124.45977976598502
  ),
  Activity(
      imageUrl: 'assets/Lohas Beach.jpg',
      name: 'Lohas Beach',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.622760402264632,
      long: 124.45065276652471
  ),
];
List<Activity> activities15 = [
  Activity(
      imageUrl: 'assets/C Resort.jpg',
      name: 'C Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.5498241462291,
      long: 124.33232596962355
  ),
  Activity(
      imageUrl: 'assets/Sakayan Restaurant.jpg',
      name: 'Sakayan Restaurant',
      type: 'Restaurant',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.552328004975706,
      long: 124.34052279982878
  ),
  Activity(
      imageUrl: 'assets/Kazh Dreamland Resort & Convention Center.jpg',
      name: 'Kazh Dreamland Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.562264467279432,
      long: 124.35520729655136
  ),
  Activity(
      imageUrl: 'assets/Mt. Anggas.jpg',
      name: 'Mt. Anggas',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.508329291424099,
      long: 124.39797668121629
  ),
];
List<Activity> activities16 = [
  Activity(
      imageUrl: 'assets/Diving Resort.jpg',
      name: 'Diving Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.369358288548273,
      long: 124.26162711004766
  ),
  Activity(
      imageUrl: 'assets/Sunshine Beach Resort.jpg',
      name: 'Sunshine Beach Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '9:00 pm'],
      lat: 8.367490118490318,
      long: 124.26351538506876
  ),
  Activity(
      imageUrl: 'assets/Aya-aya Waterfalls.jpeg',
      name: 'Aya-aya Waterfallst',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.345623371396764,
      long: 124.28557387126538
  ),
  Activity(
      imageUrl: 'assets/BUSAY FALLS.JPG',
      name: 'BUSAY FALLS',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.330067734230617,
      long: 124.30916494238289
  ),
];
List<Activity> activities17 = [
  Activity(
    imageUrl: 'assets/Dalogdog Beach.jpg',
    name: 'Dalogdog Beach',
    type: 'Resort',
    startTimes: ['9:00 am', '5:00 pm'],
      lat: 9.025644030482615,
      long: 125.18445696989859
  ),
  Activity(
      imageUrl: 'assets/Dalogdog Beach.jpg',
      name: 'Mary Rock Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 9.087896391861534,
      long: 125.19968549834371
  ),
  Activity(
      imageUrl: 'assets/Kakilgan Beach Resort.jpg',
      name: 'Kakilgan Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 9.022565527009426,
      long: 125.18236852774568
  ),
];
List<Activity> activities18 = [
  Activity(
      imageUrl: 'assets/Birds Nest Sanctuary.jpg',
      name: 'Bird\'s Nest Sanctuary',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.39286086028003,
      long: 124.29985850441427
  ),
  Activity(
      imageUrl: 'assets/KALAYO WATERFALLS.JPG',
      name: 'KALAYO WATERFALLS',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.37158664149312,
      long: 124.35551806041866
  ),
  Activity(
      imageUrl: 'assets/LUBILAN WATERFALLS.jpg',
      name: 'LUBILAN WATERFALLS',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.397994662026445,
      long: 124.40032167769748
  ),
];
List<Activity> activities19 = [
  Activity(
      imageUrl: 'assets/Duka Bay Resort.jpg',
      name: 'Duka Bay Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.928553721226697,
      long: 124.999331554157
  ),
  Activity(
      imageUrl: 'assets/Alibuag Cold Spring.jpg',
      name: 'Alibuag Cold Spring',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.926077921706721,
      long: 125.00452490233586
  ),
  Activity(
      imageUrl: 'assets/Tag-Anunang Spring.jpg',
      name: 'Tag-Anunang Spring',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat:  8.930652283668469,
      long: 124.99197157310888
  ),
  Activity(
      imageUrl: 'assets/Resort De Alberto.jpg',
      name: 'Resort De Alberto',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.923734309025326,
      long: 125.01448793394435
  ),
];
List<Activity> activities20 = [
  Activity(
      imageUrl: 'assets/Mambuntan Falls.JPG',
      name: 'Mambuntan Falls',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.413742013040489,
      long: 124.3545320755894
  ),
  Activity(
      imageUrl: 'assets/Rosewood Park n\' Grill.jpg',
      name: 'Rosewood Park n\' Grill',
      type: 'Restaurant',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.428911070563741,
      long: 124.2910789583275
  ),
  Activity(
      imageUrl: 'assets/NERVIE SWIMMING POOL.jpg',
      name: 'NERVIE SWIMMING POOL',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.41653081067319,
      long: 124.34985088344948
  ),
  Activity(
      imageUrl: 'assets/PLAMES Beach Resort.jpg',
      name: 'PLAMES Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.43573875985557,
      long: 124.28771315047459
  ),
];
List<Activity> activities21 = [
  Activity(
      imageUrl: 'assets/seven seas.jpg',
      name: 'Seven Seas Waterpark and Resort',
      type: 'Resort',
      startTimes: ['10:00 am', '6:00 pm'],
      lat: 8.519752900750685,
      long: 124.60900693157872
  ),
  Activity(
      imageUrl: 'assets/Opol Beach.PNG',
      name: 'Opol Beach',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.521800593887264,
      long: 124.57962291882312
  ),
  Activity(
      imageUrl: 'assets/Marvilla Beach Resort.jpg',
      name: 'Marvilla Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.526858079096957,
      long: 124.58696533521382
  ),
  Activity(
      imageUrl: 'assets/Balan Beach Resort.jpg',
      name: 'Balan Beach Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.52009349039702,
      long: 124.58147869914265
  ),
];
List<Activity> activities22 = [
  Activity(
      imageUrl: 'assets/VMW Resort.jpg',
      name: 'VMW Resort',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.865476298517862,
      long: 124.78818721647761
  ),
  Activity(
      imageUrl: 'assets/Matampa Pine Trees Park.jpg',
      name: 'Matampa Pine Trees Park',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.8639600077278,
      long: 124.85500468726319
  ),
  Activity(
      imageUrl: 'assets/PILWAK beach and shades.jpg',
      name: 'PILWAK beach and shades',
      type: 'Resort',
      startTimes: ['9:00 am', '5:00 pm'],
      lat: 8.87927589162272,
      long: 124.78959583638665
  ),
];
List<Activity> activities23 = [
  Activity(
      imageUrl: 'assets/MANTIANAK TREE PARK.jpg',
      name: 'MANTIANAK TREE PARK',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.955353433298871,
      long: 124.78721167746453
  ),
  Activity(
      imageUrl: 'assets/Silad Sugbongcogon Misamis Oriental.jpg',
      name: 'Silad Sugbongcogon',
      type: 'Resort',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.955353433298871,
      long: 124.78721167746453
  ),
  Activity(
      imageUrl: 'assets/Alibuag Beach Resort - Sugbongcogon, Misamis Oriental.jpg',
      name: 'Alibuag Beach Resort ',
      type: 'Resort',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.95750006950773,
      long: 124.77272359123413
  ),
  Activity(
      imageUrl: 'assets/Mimbuaya Falls.jpg',
      name: 'Mimbuaya Falls',
      type: 'Sightseeing Tour',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.953018271996243,
      long: 124.79591484039881
  ),
];
List<Activity> activities24 = [
  Activity(
      imageUrl: 'assets/Tea Garden.jpeg',
      name: 'Tea Garden',
      type: 'Restaurant',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.540607825747399,
      long: 124.75109129217299
  ),
  Activity(
      imageUrl: 'assets/Tiyo\'y Digo.jpg',
      name: 'Tiyo\'y Digo',
      type: 'Restaurant',
      startTimes: ['9:00 am', '11:30 pm'],
      lat: 8.532389894728679,
      long: 124.75404670016904
  ),
  Activity(
      imageUrl: 'assets/Kibulda resort.PNG',
      name: 'Kibulda Cottage Resort',
      type: 'Resort',
      startTimes: ['8:00 am', '5:00 pm'],
      lat: 8.536662987663535,
      long: 124.74436173477461
  ),
  Activity(
      imageUrl: 'assets/Tagoloan Plaza.jpg',
      name: 'Tagoloan Plaza',
      type: 'Sightseeing Tour',
      startTimes: ['6:00 am', '9:00 pm'],
      lat: 8.539277091702866,
      long: 124.75493533087908
  ),
];
List<Activity> activities25 = [
  Activity(
      imageUrl: 'assets/Villa Arcadia Beach Resort.jpg',
      name: 'Villa Arcadia Beach Resort',
      type: 'Resort',
      startTimes: ['12:00 am', '11:30 pm'],
      lat: 8.994734313063796,
      long: 124.89759916822736
  ),
  Activity(
      imageUrl: 'assets/Calamcam White Beach.jpg',
      name: 'Calamcam White Beach',
      type: 'Resort',
      startTimes: ['12:00 am', '12:00 am'],
      lat: 8.994752528514654,
      long: 124.8984846965009
  ),
  Activity(
      imageUrl: 'assets/Nita\'s Place Eatery.jpg',
      name: 'Nita\'s Place Eatery',
      type: 'Restaurant',
      startTimes: ['6:00 am', '10:00 pm'],
      lat: 9.001609544065596,
      long: 124.88063817007495
  ),
  Activity(
      imageUrl: 'assets/Kambingan Grill and Seafoods.jpg',
      name: 'Kambingan Grill and Seafoods',
      type: 'Restaurant',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 9.003654701175654,
      long: 124.87565999047388
  ),
];
List<Activity> activities26 = [
  Activity(
      imageUrl: 'assets/Maligu Beach.jpg',
      name: 'Maligu Beach',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.593513056686376,
      long: 124.77160955845508
  ),
  Activity(
      imageUrl: 'assets/Milvic Beach.jpg',
      name: 'Milvic Beach',
      type: 'Resort',
      startTimes: ['8:00 am', '6:00 pm'],
      lat: 8.592956115987027,
      long: 124.77135206640673
  ),
  Activity(
      imageUrl: 'assets/MIC\'S CAFE.jpg',
      name: 'MIC\'S CAFE',
      type: 'Restaurant',
      startTimes: ['10:00 am', '7:30 pm'],
      lat: 8.587046126616304,
      long: 124.7720274490097
  ),
  Activity(
      imageUrl: 'assets/Villanueva Public Plaza.jpg',
      name: 'Villanueva Public Plaza',
      type: 'Sightseeing Tour',
      startTimes: ['6:00 am', '6:00 am'],
      lat: 8.58670665231556,
      long: 124.77126033728662
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/alubijid_1.jpg',
    municipality: 'Alubijid',
    description: 'Visit Alubijid for an amazing and unforgettable adventure',
    lat: 8.57048,
    long: 124.47119,
    activities: activities1,
  ),
  Destination(
    imageUrl: 'assets/balingasag_1.jpg',
    municipality: 'Balingasag',
    description: 'Visit Balingasag for an amazing and unforgettable adventure',
    lat: 8.744,
    long: 124.777,
    activities: activities2,
  ),
  Destination(
    imageUrl: 'assets/balingoan_1.jpg',
    municipality: 'Balingoan',
    description: 'Visit Balingoan for an amazing and unforgettable adventure',
    lat: 9.00388727462315,
    long: 124.84876386585958,
    activities: activities3,
  ),
  Destination(
    imageUrl: 'assets/binuangan_1.jpg',
    municipality: 'Binuangan',
    description: 'Visit Binuangan for an amazing and unforgettable adventure',
    lat: 8.91961249281725,
    long: 124.7841253283671,
    activities: activities4,
  ),
  Destination(
    imageUrl: 'assets/cdo_1.jpg',
    municipality: 'Cagayan de Oro',
    description: 'Visit Cagayan de Oro for an amazing and unforgettable adventure',
    activities: activities5,
      lat: 8.463897303799863,
      long: 124.62855605332597
  ),
  Destination(
    imageUrl: 'assets/claveria_1.jpg',
    municipality: 'Claveria',
    description: 'Visit Claveria for an amazing and unforgettable adventure',
    activities: activities6,
      lat: 8.680275087278899,
      long: 124.97741883067741
  ),
  Destination(
    imageUrl: 'assets/el salvador_1.jpg',
    municipality: 'El Salvador',
    description: 'Visit El Salvador for an amazing and unforgettable adventure',
    activities: activities7,
      lat: 8.529016277805924,
      long: 124.5210569029743
  ),
  Destination(
    imageUrl: 'assets/gingoog_1.jpg',
    municipality: 'Gingoog',
    description: 'Visit Gingoog for an amazing and unforgettable adventure',
    activities: activities8,
      lat: 8.822778856724314,
      long: 125.09834377827246
  ),
  Destination(
    imageUrl: 'assets/gitagum_1.jpg',
    municipality: 'Gitagum',
    description: 'Visit Gitagum for an amazing and unforgettable adventure',
    activities: activities9,
      lat: 8.561775093987666,
      long: 124.38625178819605
  ),
  Destination(
    imageUrl: 'assets/initao_1.jpg',
    municipality: 'Initao',
    description: 'Visit Initao for an amazing and unforgettable adventure',
    activities: activities10,
      lat: 8.48008881818114,
      long: 124.35510332952035
  ),
  Destination(
      imageUrl: 'assets/jasaan.jpg',
      municipality: 'Jasaan',
      description: 'Visit Jasaan for an amazing and unforgettable adventure',
      activities: activities11,
      lat: 8.649964745728607,
      long: 124.75454062552663
  ),
  Destination(
      imageUrl: 'assets/kinoguitan.jpg',
      municipality: 'Kinoguitan',
      description: 'Visit Kinoguitan for an amazing and unforgettable adventure',
      activities: activities12,
      lat: 8.981018697660643,
      long: 124.81222959698705
  ),
  Destination(
      imageUrl: 'assets/lagonglong.jpg',
      municipality: 'Lagonglong',
      description: 'Visit Lagonglong for an amazing and unforgettable adventure',
      activities: activities13,
      lat: 8.815187977978377,
      long: 124.829063195036
  ),
  Destination(
      imageUrl: 'assets/laguindingan.PNG',
      municipality: 'Laguindingan',
      description: 'Visit Laguindingan for an amazing and unforgettable adventure',
      activities: activities14,
      lat: 8.594085904383798,
      long: 124.43381243501904
  ),
  Destination(
      imageUrl: 'assets/Libertad_Misamis_Oriental.png',
      municipality: 'Libertad',
      description: 'Visit Libertad for an amazing and unforgettable adventure',
      activities: activities15,
      lat: 8.53153468553925,
      long: 124.35918259875093
  ),
  Destination(
      imageUrl: 'assets/lugait.jpg',
      municipality: 'Lugait',
      description: 'Visit Lugait for an amazing and unforgettable adventure',
      activities: activities16,
      lat: 8.348024036295294,
      long: 124.275455331098
  ),
  Destination(
      imageUrl: 'assets/magsaysay.jpg',
      municipality: 'Magsaysay',
      description: 'Visit Magsaysay for an amazing and unforgettable adventure',
      activities: activities17,
      lat: 8.963489914997117,
      long: 125.2046376381066
  ),
  Destination(
      imageUrl: 'assets/manticao.jpg',
      municipality: 'Manticao',
      description: 'Visit Manticao for an amazing and unforgettable adventure',
      activities: activities18,
      lat: 8.368566878023053,
      long: 124.34948150435281
  ),
  Destination(
      imageUrl: 'assets/medina.jpg',
      municipality: 'Medina',
      description: 'Visit Medina for an amazing and unforgettable adventure',
      activities: activities19,
      lat: 8.90820574508611,
      long: 125.00913325692075
  ),
  Destination(
      imageUrl: 'assets/naawan.PNG',
      municipality: 'Naawan',
      description: 'Visit Naawan for an amazing and unforgettable adventure',
      activities: activities20,
      lat: 8.434929545506446,
      long: 124.34150148941048
  ),
  Destination(
      imageUrl: 'assets/opol.PNG',
      municipality: 'Opol',
      description: 'Visit Opol for an amazing and unforgettable adventure',
      activities: activities21,
      lat: 8.43656713626324,
      long: 124.51826755014991
  ),
  Destination(
      imageUrl: 'assets/salay.PNG',
      municipality: 'Salay',
      description: 'Visit Salay for an amazing and unforgettable adventure',
      activities: activities22,
      lat: 8.860302661706926,
      long: 124.78938578130982
  ),
  Destination(
      imageUrl: 'assets/sugbongcogon.jpg',
      municipality: 'Sugbongcogon',
      description: 'Visit Sugbongcogon for an amazing and unforgettable adventure',
      activities: activities23,
      lat: 8.958781859206928,
      long: 124.78727289573229
  ),
  Destination(
      imageUrl: 'assets/tagoloan.jpg',
      municipality: 'Tagoloan',
      description: 'Visit Tagoloan for an amazing and unforgettable adventure',
      activities: activities24,
      lat: 8.537008979593798,
      long: 124.78807860781637
  ),
  Destination(
      imageUrl: 'assets/talisayan.jpg',
      municipality: 'Talisayan',
      description: 'Visit Talisayan for an amazing and unforgettable adventure',
      activities: activities25,
      lat: 8.957470041541669,
      long: 124.8926610793088
  ),
  Destination(
      imageUrl: 'assets/villanueva.jpg',
      municipality: 'Villanueva',
      description: 'Visit Villanueva for an amazing and unforgettable adventure',
      activities: activities26,
      lat: 8.576755128218675,
      long: 124.78340316057424
  ),
];