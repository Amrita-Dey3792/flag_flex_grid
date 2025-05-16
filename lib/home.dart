import 'package:flag_flex_grid/widgets/country_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAcitivity extends StatelessWidget {
  final List<Map<String, dynamic>> countries = const [
    {
      "name": "Bangladesh",
      "capital": "Dhaka",
      "population": 168304408,
      "area_km2": 147570,
      "continent": "Asia",
      "currency": "Bangladeshi Taka",
      "official_language": "Bengali",
      "flag": "https://flagcdn.com/w320/bd.png",
      "description":
          "A densely populated country known for its rich culture, history, and vibrant textile industry.",
    },
    {
      "name": "Zarandia",
      "capital": "New Zaraville",
      "population": 12500000,
      "area_km2": 73500,
      "continent": "Eurasia",
      "currency": "Zar",
      "official_language": "Zaranese",
      "flag": "https://flagcdn.com/w320/uz.png",
      "description":
          "A mountainous nation with ancient ruins and booming tech in New Zaraville.",
    },
    {
      "name": "Belvaria",
      "capital": "Velmouth",
      "population": 8700000,
      "area_km2": 45230,
      "continent": "Europe",
      "currency": "Bel",
      "official_language": "Belvic",
      "flag": "https://flagcdn.com/w320/be.png",
      "description":
          "Charming countryside and historic architecture define this artistic country.",
    },
    {
      "name": "Oceandor",
      "capital": "Marintis",
      "population": 3200000,
      "area_km2": 150000,
      "continent": "Oceania",
      "currency": "Oceanic Crown",
      "official_language": "Oceanic",
      "flag": "https://flagcdn.com/w320/fj.png",
      "description":
          "Surrounded by reefs, Oceandor is a top destination for marine biodiversity.",
    },
    {
      "name": "Nordovia",
      "capital": "Frosthelm",
      "population": 5900000,
      "area_km2": 98600,
      "continent": "North America",
      "currency": "Nord",
      "official_language": "Nordic",
      "flag": "https://flagcdn.com/w320/no.png",
      "description":
          "Nordovia thrives on winter tourism and hydroelectric power.",
    },
    {
      "name": "Solvania",
      "capital": "Solgard",
      "population": 10100000,
      "area_km2": 63000,
      "continent": "South America",
      "currency": "Sol",
      "official_language": "Solvanic",
      "flag": "https://flagcdn.com/w320/uy.png",
      "description": "A festive land of music, dance, and scenic coastlines.",
    },
    {
      "name": "Drakoria",
      "capital": "Dragonspire",
      "population": 20000000,
      "area_km2": 123000,
      "continent": "Asia",
      "currency": "Drake",
      "official_language": "Drakor",
      "flag": "https://flagcdn.com/w320/bt.png",
      "description":
          "A spiritual highland kingdom with dragons in myth and culture.",
    },
    {
      "name": "Vintaria",
      "capital": "Elderport",
      "population": 6800000,
      "area_km2": 57400,
      "continent": "Europe",
      "currency": "Vin",
      "official_language": "Vintic",
      "flag": "https://flagcdn.com/w320/pt.png",
      "description": "Known for vineyards, castles, and coastal trade routes.",
    },
    {
      "name": "Crysalor",
      "capital": "Glaciera",
      "population": 4200000,
      "area_km2": 85000,
      "continent": "Antarctica",
      "currency": "Cryon",
      "official_language": "Crysian",
      "flag": "https://flagcdn.com/w320/is.png",
      "description":
          "An icy expanse with cutting-edge cryotech research bases.",
    },
    {
      "name": "Nimbala",
      "capital": "Kawara",
      "population": 9800000,
      "area_km2": 111000,
      "continent": "Africa",
      "currency": "Nim",
      "official_language": "Nimbali",
      "flag": "https://flagcdn.com/w320/gh.png",
      "description": "A tropical land rich in wildlife and colorful festivals.",
    },
    {
      "name": "Arvantis",
      "capital": "Thalassa",
      "population": 5600000,
      "area_km2": 47700,
      "continent": "Europe",
      "currency": "Arvan",
      "official_language": "Arvantic",
      "flag": "https://flagcdn.com/w320/gr.png",
      "description": "Famed for philosophy schools and ancient ocean temples.",
    },
    {
      "name": "Sylvaria",
      "capital": "Leafshade",
      "population": 4100000,
      "area_km2": 39500,
      "continent": "Asia",
      "currency": "Syl",
      "official_language": "Sylvan",
      "flag": "https://flagcdn.com/w320/lk.png",
      "description":
          "A forested haven promoting herbal medicine and nature living.",
    },
    {
      "name": "Tundrolia",
      "capital": "Permafrost",
      "population": 2200000,
      "area_km2": 101000,
      "continent": "North America",
      "currency": "Tundra Coin",
      "official_language": "Tundric",
      "flag": "https://flagcdn.com/w320/ca.png",
      "description":
          "Frozen landscapes with indigenous art and snow bear reserves.",
    },
    {
      "name": "Zephyria",
      "capital": "Aeloria",
      "population": 3400000,
      "area_km2": 54000,
      "continent": "Asia",
      "currency": "Zephyr",
      "official_language": "Zephyrian",
      "flag": "https://flagcdn.com/w320/np.png",
      "description": "Wind-powered energy leader, known for cloud festivals.",
    },
    {
      "name": "Ravencia",
      "capital": "Obsidian Hollow",
      "population": 7600000,
      "area_km2": 61200,
      "continent": "Europe",
      "currency": "Rav",
      "official_language": "Ravencian",
      "flag": "https://flagcdn.com/w320/ro.png",
      "description":
          "Medieval forts and mountain legends dominate this gothic country.",
    },
    {
      "name": "Florencia",
      "capital": "Petalwind",
      "population": 8500000,
      "area_km2": 48300,
      "continent": "South America",
      "currency": "Florin",
      "official_language": "Florish",
      "flag": "https://flagcdn.com/w320/ec.png",
      "description":
          "Land of vibrant blooms, butterflies, and perfume exports.",
    },
    {
      "name": "Cobaltan",
      "capital": "Minara",
      "population": 10500000,
      "area_km2": 120000,
      "continent": "Africa",
      "currency": "Coba",
      "official_language": "Cobaltic",
      "flag": "https://flagcdn.com/w320/cd.png",
      "description":
          "Rich in cobalt and minerals, with a booming mining economy.",
    },
    {
      "name": "Lunara",
      "capital": "Moonsreach",
      "population": 4700000,
      "area_km2": 35700,
      "continent": "Asia",
      "currency": "Lun",
      "official_language": "Lunarian",
      "flag": "https://flagcdn.com/w320/kh.png",
      "description":
          "Known for lunar festivals and space telescope facilities.",
    },
    {
      "name": "Thornvia",
      "capital": "Redbloom",
      "population": 5100000,
      "area_km2": 49300,
      "continent": "Europe",
      "currency": "Thorn",
      "official_language": "Thornic",
      "flag": "https://flagcdn.com/w320/rs.png",
      "description":
          "Covered in rose fields and thorny forests, it’s a land of contrasts.",
    },
    {
      "name": "Velkaria",
      "capital": "Ironvault",
      "population": 6900000,
      "area_km2": 64400,
      "continent": "Asia",
      "currency": "Velkar",
      "official_language": "Velkan",
      "flag": "https://flagcdn.com/w320/kz.png",
      "description": "Industrial powerhouse with underground metro cities.",
    },
    {
      "name": "Aurenia",
      "capital": "Gildenspire",
      "population": 7200000,
      "area_km2": 57800,
      "continent": "Europe",
      "currency": "Aureus",
      "official_language": "Auric",
      "flag": "https://flagcdn.com/w320/de.png",
      "description":
          "Golden plains and elite universities define Aurenia’s prestige.",
    },
  ];

  const HomeAcitivity({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    late double maximumWidth = 0;
    late double childAspectRatio = 3 / 4;

    // Set maximum width of each breakpoint

    if (screenWidth < 576) {
      maximumWidth = screenWidth;
    } else if (screenWidth >= 576 && screenWidth < 767) {
      maximumWidth = 540;
    } else if (screenWidth >= 768 && screenWidth <= 991) {
      maximumWidth = 720;
    } else if (screenWidth >= 992 && screenWidth <= 1199) {
      maximumWidth = 960;
    } else if (screenWidth >= 1200 && screenWidth <= 1399) {
      maximumWidth = 1140;
    } else if (screenWidth >= 1400) {
      maximumWidth = 1320;
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maximumWidth),
              child: GridView.builder(
                itemCount: countries.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1.sw > 600 ? 20 : 4,
                  crossAxisSpacing: 1.sw > 600 ? 20 : 4,

                  crossAxisCount: (() {
                    if (screenWidth < 768) {
                      return 2;
                    } else if (screenWidth >= 768 && screenWidth <= 1024) {
                      return 3;
                    }
                    return 4;
                  }()),
                ),
                itemBuilder: (BuildContext context, i) {
                  return CountryCard(country: countries[i]);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
