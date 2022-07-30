import 'package:flutter/material.dart';
class LocationsScreen extends StatefulWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}
class _LocationsScreenState extends State<LocationsScreen> {
  List<String> locations=['Africa', 'America', 'Antarctica', 'Arctic', 'Asia', 'Atlantic', 'Australia', 'Brazil', 'Canada', 'Chile',  'Europe',  'Mexico', 'Pacific', 'US','Etc'];
  Map<String,List<String>> area={'Africa': ['Accra', 'Addis_Ababa', 'Algiers', 'Asmara', 'Asmera', 'Bamako', 'Bangui', 'Banjul', 'Bissau', 'Blantyre', 'Brazzaville', 'Bujumbura', 'Cairo', 'Casablanca', 'Ceuta', 'Conakry', 'Dakar', 'Dar_es_Salaam', 'Djibouti', 'Douala', 'El_Aaiun', 'Freetown', 'Gaborone', 'Harare', 'Johannesburg', 'Juba', 'Kampala', 'Khartoum', 'Kigali', 'Kinshasa', 'Lagos', 'Libreville', 'Lome', 'Luanda', 'Lubumbashi', 'Lusaka', 'Malabo', 'Maputo', 'Maseru', 'Mbabane', 'Mogadishu', 'Monrovia', 'Nairobi', 'Ndjamena', 'Niamey', 'Nouakchott', 'Ouagadougou', 'Porto-Novo', 'Sao_Tome', 'Timbuktu', 'Tripoli', 'Tunis', 'Windhoek'], 'America': ['Anchorage', 'Anguilla', 'Antigua', 'Araguaina', 'Argentina/Buenos_Aires', 'Argentina/Catamarca', 'Argentina/ComodRivadavia', 'Argentina/Cordoba', 'Argentina/Jujuy', 'Argentina/La_Rioja', 'Argentina/Mendoza', 'Argentina/Rio_Gallegos', 'Argentina/Salta', 'Argentina/San_Juan', 'Argentina/San_Luis', 'Argentina/Tucuman', 'Argentina/Ushuaia', 'Aruba', 'Asuncion', 'Atikokan', 'Atka', 'Bahia', 'Bahia_Banderas', 'Barbados', 'Belem', 'Belize', 'Blanc-Sablon', 'Boa_Vista', 'Bogota', 'Boise', 'Buenos_Aires', 'Cambridge_Bay', 'Campo_Grande', 'Cancun', 'Caracas', 'Catamarca', 'Cayenne', 'Cayman', 'Chicago', 'Chihuahua', 'Coral_Harbour', 'Cordoba', 'Costa_Rica', 'Creston', 'Cuiaba', 'Curacao', 'Danmarkshavn', 'Dawson', 'Dawson_Creek', 'Denver', 'Detroit', 'Dominica', 'Edmonton', 'Eirunepe', 'El_Salvador', 'Ensenada', 'Fort_Nelson', 'Fort_Wayne', 'Fortaleza', 'Glace_Bay', 'Godthab', 'Goose_Bay', 'Grand_Turk', 'Grenada', 'Guadeloupe', 'Guatemala', 'Guayaquil', 'Guyana', 'Halifax', 'Havana', 'Hermosillo', 'Indiana/Indianapolis', 'Indiana/Knox', 'Indiana/Marengo', 'Indiana/Petersburg', 'Indiana/Tell_City', 'Indiana/Vevay', 'Indiana/Vincennes', 'Indiana/Winamac', 'Indianapolis', 'Inuvik', 'Iqaluit', 'Jamaica', 'Jujuy', 'Juneau', 'Kentucky/Louisville', 'Kentucky/Monticello', 'Knox_IN', 'Kralendijk', 'La_Paz', 'Lima', 'Los_Angeles', 'Louisville', 'Lower_Princes', 'Maceio', 'Managua', 'Manaus', 'Marigot', 'Martinique', 'Matamoros', 'Mazatlan', 'Mendoza', 'Menominee', 'Merida', 'Metlakatla', 'Mexico_City', 'Miquelon', 'Moncton', 'Monterrey', 'Montevideo', 'Montreal', 'Montserrat', 'Nassau', 'New_York', 'Nipigon', 'Nome', 'Noronha', 'North_Dakota/Beulah', 'North_Dakota/Center', 'North_Dakota/New_Salem', 'Nuuk', 'Ojinaga', 'Panama', 'Pangnirtung', 'Paramaribo', 'Phoenix', 'Port_of_Spain', 'Port-au-Prince', 'Porto_Acre', 'Porto_Velho', 'Puerto_Rico', 'Punta_Arenas', 'Rainy_River', 'Rankin_Inlet', 'Recife', 'Regina', 'Resolute', 'Rio_Branco', 'Rosario', 'Santa_Isabel', 'Santarem', 'Santiago', 'Santo_Domingo', 'Sao_Paulo', 'Scoresbysund', 'Shiprock', 'Sitka', 'St_Barthelemy', 'St_Johns', 'St_Kitts', 'St_Lucia', 'St_Thomas', 'St_Vincent', 'Swift_Current', 'Tegucigalpa', 'Thule', 'Thunder_Bay', 'Tijuana', 'Toronto', 'Tortola', 'Vancouver', 'Virgin', 'Whitehorse', 'Winnipeg', 'Yakutat', 'Yellowknife'], 'Antarctica': ['Davis', 'DumontDUrville', 'Macquarie', 'Mawson', 'McMurdo', 'Palmer', 'Rothera', 'South_Pole', 'Syowa', 'Troll', 'Vostok'], 'Arctic': ["Longyearbyen"], 'Asia': ['Almaty', 'Amman', 'Anadyr', 'Aqtau', 'Aqtobe', 'Ashgabat', 'Ashkhabad', 'Atyrau', 'Baghdad', 'Bahrain', 'Baku', 'Bangkok', 'Barnaul', 'Beirut', 'Bishkek', 'Brunei', 'Calcutta','Chagos', 'Christmas', 'Cocos', 'Comoro', 'Kerguelen', 'Mahe', 'Maldives', 'Mauritius', 'Mayotte', 'Reunion', 'Chita', 'Choibalsan', 'Chongqing', 'Chungking', 'Colombo', 'Dacca', 'Damascus', 'Dhaka', 'Dili', 'Dubai', 'Dushanbe', 'Famagusta', 'Gaza', 'Harbin', 'Hebron', 'Ho_Chi_Minh', 'Hong_Kong', 'Hovd', 'Irkutsk', 'Istanbul', 'Jakarta', 'Jayapura', 'Jerusalem', 'Kabul', 'Kamchatka', 'Karachi', 'Kashgar', 'Kathmandu', 'Katmandu', 'Khandyga', 'Kolkata', 'Krasnoyarsk', 'Kuala_Lumpur', 'Kuching', 'Kuwait', 'Macao', 'Macau', 'Magadan', 'Makassar', 'Manila', 'Muscat', 'Nicosia', 'Novokuznetsk', 'Novosibirsk', 'Omsk', 'Oral', 'Phnom_Penh', 'Pontianak', 'Pyongyang', 'Qatar', 'Qostanay', 'Qyzylorda', 'Rangoon', 'Riyadh', 'Saigon', 'Sakhalin', 'Samarkand', 'Seoul', 'Shanghai', 'Singapore', 'Srednekolymsk', 'Taipei', 'Tashkent', 'Tbilisi', 'Tehran', 'Tel_Aviv', 'Thimbu', 'Thimphu', 'Tokyo', 'Tomsk', 'Ujung_Pandang', 'Ulaanbaatar', 'Ulan_Bator', 'Urumqi', 'Ust-Nera', 'Vientiane', 'Vladivostok', 'Yakutsk', 'Yangon', 'Yekaterinburg', 'Yerevan'], 'Atlantic': ['Bermuda', 'Canary', 'Cape_Verde', 'Faeroe', 'Faroe', 'Jan_Mayen', 'Madeira', 'Reykjavik', 'South_Georgia', 'St_Helena', 'Stanley'], 'Australia': ['Adelaide', 'Brisbane', 'Broken_Hill', 'Canberra', 'Currie', 'Darwin', 'Eucla', 'Hobart', 'LHI', 'Lindeman', 'Lord_Howe', 'Melbourne', 'North', 'NSW', 'Perth', 'Queensland', 'South', 'Sydney', 'Tasmania', 'Victoria', 'West', 'Yancowinna'], 'Brazil': ['DeNoronha', 'East', 'West'], 'Canada': ['Central', 'Eastern', 'Mountain', 'Newfoundland', 'Pacific', 'Saskatchewan', 'Yukon'], 'Chile': ['EasterIsland'], 'Europe': ['Andorra', 'Astrakhan', 'Athens', 'Belfast', 'Belgrade', 'Berlin', 'Bratislava', 'Brussels', 'Bucharest', 'Budapest', 'Busingen', 'Chisinau', 'Copenhagen', 'Dublin', 'Gibraltar', 'Guernsey', 'Helsinki', 'Isle_of_Man', 'Istanbul', 'Jersey', 'Kaliningrad', 'Kiev', 'Kirov', 'Lisbon', 'Ljubljana', 'London', 'Luxembourg', 'Madrid', 'Malta', 'Mariehamn', 'Minsk', 'Monaco', 'Moscow', 'Nicosia', 'Oslo', 'Paris', 'Podgorica', 'Prague', 'Riga', 'Rome', 'Samara', 'San_Marino', 'Sarajevo', 'Saratov', 'Simferopol', 'Skopje', 'Sofia', 'Stockholm', 'Tallinn', 'Tirane', 'Tiraspol', 'Ulyanovsk', 'Uzhgorod', 'Vaduz', 'Vatican', 'Vienna', 'Vilnius', 'Volgograd', 'Warsaw', 'Zagreb', 'Zaporozhye', 'Zurich'], 'Mexico': ['BajaSur', 'General'], 'Pacific': ['Auckland', 'Bougainville', 'Chatham', 'Chuuk', 'Easter', 'Efate', 'Enderbury', 'Fakaofo', 'Fiji', 'Funafuti', 'Galapagos', 'Gambier', 'Guadalcanal', 'Guam', 'Honolulu', 'Johnston', 'Kanton', 'Kiritimati', 'Kosrae', 'Kwajalein', 'Majuro', 'Marquesas', 'Midway', 'Nauru', 'Niue', 'Norfolk', 'Noumea', 'Pago_Pago', 'Palau', 'Pitcairn', 'Pohnpei', 'Ponape', 'Port_Moresby', 'Rarotonga', 'Saipan', 'Samoa', 'Tahiti', 'Tarawa', 'Tongatapu', 'Truk', 'Wake', 'Wallis', 'Yap'], 'US': ['Aleutian', 'Arizona', 'Central', 'East-Indiana', 'Eastern', 'Hawaii', 'Indiana-Starke', 'Michigan', 'Mountain', 'Pacific', 'Samoa'],'Etc': ['GMT-0', 'GMT-1', 'GMT-10', 'GMT-11', 'GMT-12', 'GMT-13', 'GMT-14', 'GMT-2', 'GMT-3', 'GMT-4', 'GMT-5', 'GMT-6', 'GMT-7', 'GMT-8', 'GMT-9', 'GMT+0', 'GMT+1', 'GMT+10', 'GMT+11', 'GMT+12', 'GMT+2', 'GMT+3', 'GMT+4', 'GMT+5', 'GMT+6', 'GMT+7', 'GMT+8', 'GMT+9', 'GMT0', 'Greenwich', 'UCT', 'Universal', 'UTC', 'Zulu']};
  String dropdownValue1 = "Africa";
  String dropdownValue2 = "Accra";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.black,
        title: const Text("Choose Location",style: TextStyle(fontFamily: "myfont"),),
      ),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image:AssetImage("assets/globe.png"),fit: BoxFit.cover),),
        child: Card(margin: EdgeInsets.fromLTRB(10,190,10,175),
          color: Colors.white.withOpacity(0.5),
          elevation: 40,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    const Text("Choose Location",style: TextStyle(fontSize: 30,fontFamily: "myfont"),),
                    const SizedBox(height: 10),
                    DropdownButton<String>(
                      dropdownColor: Colors.pink[100],
                      isExpanded: true,
                      value: dropdownValue1,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple,fontFamily: "myfont"),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurple[100],
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue!;
                          dropdownValue2=area[dropdownValue1]![0] ;
                        });
                      },
                      items: locations.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(child: Column(
                            children: [
                              Text(value,style: const TextStyle(color: Colors.black,fontSize: 30,fontFamily: "myfont"),),
                              Container(
                                height: 1,
                                color: Colors.pink,)
                            ],
                          )),
                        );
                      }).toList(),
                    ),
                  const SizedBox(height: 30),
                  const Text("Choose Area",style: TextStyle(fontSize: 30,fontFamily: "myfont"),),
                  const SizedBox(height: 10),
                  DropdownButton<String>(
                    dropdownColor: Colors.pink[100],
                    isExpanded: true,
                    value: dropdownValue2,
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    elevation: 16,
                    hint: const Text("Enter area"),
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurple[100],
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: area[dropdownValue1]!.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(child: Column(
                          children: [
                            Text(value,style: const TextStyle(color: Colors.black,fontSize: 30,fontFamily: "myfont"),),
                            Container(
                              height: 1,
                              color: Colors.pink,)
                          ],
                        )),
                      );
                    }).toList(),
                  ),
                ],
                ),
              ),
              ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(shape: CircularNotchedRectangle(),color: Colors.black,notchMargin: 1,child:SizedBox(height: 50,),),
      floatingActionButton: FloatingActionButton(elevation: 50,
          onPressed: ()=> {Navigator.pushReplacementNamed(context, '/loading',arguments: "$dropdownValue1/$dropdownValue2")}, child:const Icon(Icons.check)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
}
