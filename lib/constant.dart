import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import '../provider/AuthProvider.dart';

const double kPadding = 20;
TextStyle kLinkTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  decoration: TextDecoration.underline,
);
TextStyle kPostTextStyle = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 14, fontStyle: FontStyle.normal);

TextStyle kTitleTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

TextStyle kNameTextStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

const double kPpOAppBar = 15;
const double kPpOnPost = 30;
const double kPpOnProfilePage = 45;

final String curentUserId = AuthProvider().getCurrentUser().uid;

const List<String> Languages = ['Amharic', 'English', 'Afan Oromo', 'Somali'];

List<String> Univerities = [
  'Addis Ababa Science & Technology University',
  'Adama Science & Technology University',
  'Addis Ababa University',
  'Adigrat University',
  'Ambo University',
  'Arba Minch University',
  'Arsi University',
  'Asossa UNIVERSITY',
  'Axum University',
  'Bahir Dar University',
  'Bonga UNIVERSITY',
  'Bule Horra UNIVERSITY',
  'Debark University',
  'Debrebirhan University',
  'Debremarkos University	',
  'Debretabor University',
  'DOLO Dembi Dolo University',
  'Dilla University',
  'Dire Dawa University',
  'Gambella University',
  'Gondar University',
  'Haramaya University',
  'Hawassa University',
  'Injibara UNIVERSITY',
  'Jigjiga University',
  'Jimma University',
  'Jinka UNIVERSITY',
  'Kebri Dehar University',
  'Kotebe Metropolitan University',
  'Meda Welabu University',
  'Mekelle University',
  'Mekidela Amba University',
  'Metu University',
  'Mizan-Tepi University',
  'Oda Bultum University',
  'RAYA UNIVERSITY',
  'Selale University',
  'Semera University',
  'Wachamo University',
  'Welketie University',
  'Werabe University',
  'Wolayita Sodo University',
  'Woldiya University',
  'Wollega University',
  'Wollo University',
  'Admas University',
  'Rift Valley University',
  'Alpha University College',
  'PESC Information Systems College',
  'Addis Ababa Medical College',
  'Sante Medical College',
  'CPU Business and Computer Technology College',
  'Addis Continental Public Health Institute',
  'Adama Hospital Medical College (AHMC)',
  'Myungsang Medical College',
  'Hayat Medical College',
  'Pharma Health Science College',
  'Sheba University College',
  'Ayer Tena Health Science College',
  'Open College',
  'Africa Beza College',
  'Atlas Health College',
  'Hamlin College of Midwifery',
  'Ethiopian Catholic University',
  'Microlink Information Technology College',
  'Tech Zone Engineering and Business College',
  'Agro Technical and Technology College',
  'ECUSTA Higher Learning Institute',
  'Oromiya Public Service College',
  'A.R.T. Medical College Ethiopia',
  'Central Health College',
  'Fekete Egzi College',
  'Medco Bio-Medical College',
  'Zemen development and management College',
  'Hailu Alemu College',
  'International Leadership Institute',
  'Solid Health and Technology College',
  'Ethio Lance College',
  'Selihom School SRI SAI College',
  'Gofa Industrial College',
  'Yardstick International College of Distance Education',
  'HiLCoE School of Computer Science and Technology College',
  'St. Lideta Health Science College',
  'Kea Med Medical College',
  'Addis College',
  'Belay Zeleke Health College',
  'Ben Meskerem College',
  'Biya College',
  'Blue Nile College',
  'Chilalo Health Science and Technology College',
  'Dangila Andinet Health Science College',
  'Debub Ethiopia College',
  'Durman College',
  'Dynamic International University College(Andinet International University College)',
  'Finote Selam College',
  'Fura College',
  'Gabest College',
  'Gage College',
  'Genius- Land',
  'Gotoniyal',
  'Harambe College',
  'Harar Health Science College',
  'Hawassa Health Science College',
  'Hayome Medical College',
  'Hope College',
  'Infolink College',
  'Joint Vision College',
  'Lead Star International Academy',
  'Lucy College',
  'Mekane Yesus Management and Leadership College',
  'Micro Business College',
  'Mishquen College',
  'National College',
  'New Global Vision College',
  'Nile College',
  'Omega Health College',
  'Poly Institute of Technology',
  'Rhobot Medical College',
  'Seamless College of Distance Education',
  'Selam Nursing College',
  'St. Mary University',
  'Top College',
  'Tropical Health College',
  'Unity University',
  'Universal Medical College',
  'Victory College',
  'Western Star College',
  'Zion College'
];
List<String> getUniversity() {
  return Univerities;
}

List<String> Hospitals = [
  "Addis Ababa Fistula Hospital",
  "St-Peters-Specialized-Hospital",
  "ALERT",
  "Bethel Teaching General Hospital",
  "Amin General Hospital",
  "Addis General Hospital",
  "Addis Hiwot Hospital",
  "Anania Mothers and Children Specialized Medical Center",
  "Armed Forces General Hospital",
  "Bella Defense Referral Hospital",
  "Besegah Mother and Child Health Hospitals",
  "Brass Mother and Child Health Hospital",
  "Dagmawi Minilik Hospital",
  "DBalch Hospital",
  "Dinberua Hospital",
  "Ethio Tebib Hospital",
  "Federal Police Referral Hospital",
  "Girum General Hospital",
  "Hawassa Alatyon Hospital",
  "Hayat Hospital",
  "Halleluja hospital",
  "ICMC General Hospital CMC",
  "Kadisco General Hospital",
  "Landmark General Hospital",
  "MyungSung Christian Medical Centre",
  "Nordic Medical Center",
  "Novocare American Clinic",
  "Ras Desta Damitew Hospital",
  "Saint Gabriel General Hospital",
  "Shedeho Higher Clinic Dr Belaynew Mogess",
  "St. Paulos Hospital",
  "St. Yared General Hospital",
  "Tibebu Hospital",
  "Tikur Anbesa Specialized Hospital",
  "Tirunesh Beijing General Hospital",
  "Tzna General Hospital",
  "Yearrer hospital",
  "Zenbaba General Hospital",
  "Zeweditu Hospital",
  "Betezata General Hospital",
  "Sr. Aklesia Memorial Hospital",
  "Adama General Hospital & Medical College",
  "Adama Hospital & Medical College",
  "Rift Valley Hospital & Medical College",
  "Muse General Hospital",
  "Bahir Dar Mini-fistula Hospital",
  "Felege Hiwot Hospital",
  "Tibebe Ghion Teaching Referral Hospital",
  "Afilas General Hospital",
  "Gamby Teaching Hospital",
  "Universal Clinic",
  "Adinas General Hospital",
  "Dreamcare General Hospital",
  "Boru Meda Hospital",
  "Dessie Hospital",
  "Selam hospital",
  "Ethio hospital",
  "Bate hospital",
  "Tossa Hospital",
  "University of Gondar Hospital",
  "Ibex Hospital",
  "Harar General Hospital",
  "Hiwot fana specialized University Hospital",
  "Adare Hospital",
  "Alatiyon Hospital",
  "Asher Primary Hospital",
  "Awassa Referral Hospital",
  "Bete Abrham Primary HospitalMasresha Lema",
  "Kibru Primary Hospital",
  "Yanet Internal Medicine Specialized Center",
  "Yanet Trauma and Surgery Specialized Center",
  "Jigjiga University Referral Hospital",
  "Karamara Hospital",
  "Dagahbour General Hospital",
  "Gode General Hospital",
  "Qabri Dahare General Hospital",
  "Warder General Hospital",
  "Filtu General Hospital",
  "Hargelle General Hospital",
  "Sitti General Hospital",
  "Adigrat Hospital",
  "Ayder Referral Hospital",
  "Lemelem Karl Hospital",
  "Mekelle Hospital",
  "St. Mary Hospital",
  "Quiha Hospital",
  "Sihul Hospital",
  "Abiadi Hospital",
  "Wukro Hospital",
  "Korem Hospital",
  "Mearig Hospital",
  "Humera Hospital",
  "Alamata Hospital",
  "Adwa Hospital",
  "Aksum University Referral Hospital",
  "Dubbo Catholic Hospital",
  "Soddo Christhian Hospital",
  "Soddo General Hospital",
  "Soddo University Hospital",
  "Kelewan Primary Hospital",
  "Dubti General hospital",
  "Logiya Primary Hospital",
  "Ab 'ala Primary Hospital",
  "Asayita Primary Hospital",
  "Dalifage Primary Hospital"
]..sort((a, b) => a.compareTo(b));

List<String> getHospitals() {
  return Hospitals;
}

const List<String> Speciality = [
  "General Practice",
  "Internal Medicine",
  "Pediatric Medicine",
  "Gynecology",
  "Infectious Disease",
  "Psychiatry",
  "Addiction Medicine",
  "Allergy/Immunology",
  "Anesthesiology",
  "Cardiac Surgery",
  "Cardiology",
  "Corectal Surgery",
  "Dermatology",
  "Diagnostic Radiology",
  "Emergency Medicine",
  "Endocrnology",
  "Gastroenterology",
  "Geriatric Medicine",
  "Gynecological/Oncology",
  "Hand Surgery",
  "Hematology",
  "Interventional Radiology",
  "Medical Oncology",
  "Nephrology",
  "Neurosurgery",
  "Ophthalmology",
  "Optometry",
  "Oral Surgery",
  "Orthopedic Surgery",
  "Osteopatic Manipulative",
  "Otolaryngogogy",
  "Pain Management",
  "Pathology",
  "Peripheral Vascular Disease",
  "Podiatry",
  "Pulmonary Disease",
  "Radiation Oncology",
  "Rheumatolgoy",
  "Surgical Oncology",
  "Thoracic Surgery",
  "Urology",
  "Vascular Surgery"
];

String lorem =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';