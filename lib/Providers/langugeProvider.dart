import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  bool isEn = false;
  

  Map<String, Object> textsAr = {
    "favorite":"المفضلة",
     "company-ogen" : "مياه اوجن",
    "company-nova" :"مياه نوفا" ,
    "drinking-water": "مياه الشرب",
    "water-treatment": "معالج لمياه",
    "Water-filters": "فلاتر المياه",
    "Water-desalination": "تحلية المياه",
    "iraq": "العراق",
    "egypt": "مصر",
    "saudi": "السعودية",
    "palestine": "فلسطين",
    "turkey": "تركيا",
    "country": "الدولة",
    "field": "المجال",
    "add-company-data": "اضف بيانات شركتك",
    "male": "ذكر",
    "female": "انثي",
    "type": "النوع",
    "change-info": "تعديل",
    "change-password": "تغيير الرقم السري",
    "edit-profile-info": "تعديل بيانات الحساب",
    "notifications-sound": "صوت التنبيهات",
    "dark-mode": "الوضع الليلي",
    "font-size": "حجم الخط",
    "languages": "اللغة",
    "comments": "التعليقات",
    "text2-screendetails":
        '''تفادي أزمة صحة عامة جديدة ناقش عدد من متحدثي المؤتمر جانب الصحة العامة في معالجة مياه الصرف الصحي ، ومستجدات هذا الميدان وما ظهر فيه من ابتكارات . قالت سيليا مانايا ، وهي أستاذ مساعد في الجامعة الكاثوليكية البرتغالية : " ينبغي ألا تفكر بمجرد تعقيم المياه ، بل بإدارة بيئتها الجرثومية أيضا . فهذه المنهجية مفيدة لتشجيع الجراثيم الجيدة والتصدي لأزمة الصحة العامة القادمة " . وتحدثت عن مقاومة المضادات الحيوية في مياه الصرف الصحي المعالجة وكيفية التخفيف من مخاطر ذلك مشيرة إلى أن " مقاومة المضادات الحيوية تعتبر تهديدا كبيرا لصحة البشر والحيوانات في العالم بأسره ، فضلا عن أن المخزونات البيئية والممارسات البشرية تعد من''',
    "text1-screendetails":
        '''عقد مركز أبحاث محلية وإعادة استخدام المياه في جامعة الملك عبدالله للعلوم والتقنية مؤتمرا بعنوان " تعديل نماذج معالجة مياه الصرف الصحي من مخلفات إلى موارد " ، وذلك من ٢٢ إلى ۳۹ مارس في الحرم الجامعي وركزت فعاليات المؤتمر على أحدث المستجدات في مجال التعلدات الفعالة والمبتكرة المدللخدمة في استرداد الموارد المياه والغذاء والطاقة ، ل مياه الصرف القيمة الموجودة في مياه الصرف الصدي آلفار المجد الزامل في النروفلفلنول بل والقال اللقمان : کرنا تقركل لنتويل التعادة الحيوية لكى معهد التكامل التواليد في جامعة ولاية أريزونا ، إلى أن " المعالجة للال الحال التي تركز على ازالة ملونات المناه . علم البها العظام موارد اقامة ااحلى الدنلرداد ها لتتمك ) مقلدة قد طال الكل الكل حاليا الدلالات الطاقة الموجودة لكن الحياة المتنقلا بينا بالنقل البيان
                  ''',
    "title-news": "عناوين الاخبار",
    "more-read-news": "الاكثر قراءة",
    "date-news": "السبت 05 ديسمبر 2020",
    "lastnews-page-news-universty-channel":
        "من ملفات الى موارد: مستقبل معالجة مياه الصرف الصحي",
    "lastnews-news-channel-assea": "تقنية جديده لتطهير المياه باستخدام الضوء",
    "lastnews-news-channel-alsharq":
        "مبتكر جديد من الالمنيوم يساعد في تنقية المياه",
    "lastnews-news-channel-youm7":
        "مياه القناة: محطات الشرب تعمل بكامل طاقاتها وسحب مياه من التبرع لمعرفة نسبة العكارة",
    "last-newspage-urgent": "عاجل",
    "page-view-news":
        "قطع مياه الشرب عن عدة مناطق في الجيزة مساء الجمعة ولمدة 8 ساعات",
    "last-page-breaking-news":
        "كوب مياه نضيف..جياة كريمة تنفذ مشروعات مياه بسوهان بتكلفة 599 مليون جنيه",
    "call-us": "اتصل بنا",
    "sign-out": "تسجيل الخروج",
    "settings": "الاعدادات",
    "rate-app": "تقييم التطبيق",
    "share-app": "انشر التطبيق",
    "conditions": "الشروط والاحكام",
    "privacy-policy": "سياسة الخصوصية",
    "about-application": "عن التطبيق",
    "who-are-we": "من نحن",
    "notifications": "الاشعارات",
    "my-profile": "حسابي",
    "videos": "الفيديوهات",
    "jobs": "الوضائف",
    "articles": "المقالات",
    "company-news": "اخبار الشركات",
    "breaking-news": "الاخبار العاجلة",
    "last-news": "اخر الاخبار",
    "search-in": "ابحث هنا",
    "home-screen": "الرئيسية",
    "account-screen": "حسابي",
    "video-screen": "الفيديوهات",
    "choose-source": "اختر مصدرك",
    "company-guid-screen": "دليل الشركات",
  };
  Map<String, Object> textsEn = {
        "favorite":"Favorite",
    "company-ogen" : "Ogen company",
      "company-nova" : "Nova water" ,
    "drinking-water": "Drinking water",
    "water-treatment": "Water treatment",
    "Water-filters": "Water filters",
    "Water-desalination": "Water desalination",
    "iraq": "Iraq",
    "egypt": "Egypt",
    "saudi": "Saudi",
    "palestine": "Palestine",
    "turkey": "Turkey",
    "country": "Country",
    "field": "Field",
    "add-company-data": "Add company data",
    "male": "Male",
    "female": "Female",
    "type": "Type",
    "change-info": "Change",
    "change-password": "Change Password",
    "edit-profile-info": "Edit information",
    "notifications-sound": "Notifications Sound",
    "dark-mode": "Dark mode",
    "font-size": "Font size",
    "languages": "Language",
    "text2-screendetails":
        '''Averting a new public health crisis A number of conference speakers discussed the public health aspect of wastewater treatment, developments in this field and the innovations that emerged in it.  “You shouldn't think about just sterilizing the water, but rather managing its microbial environment as well. This methodology is useful for encouraging good germs and addressing the next public health crisis,” said Celia Manaya, an assistant professor at the Portuguese Catholic University.  She talked about antibiotic resistance in treated wastewater and how to mitigate the risks, noting that "antibiotic resistance is a major threat to human and animal health throughout the world, as well as that environmental stocks and human practices are among''',
    "text1-screendetails":
        '''The Water Desalination and Reuse Research Center at King Abdullah University of Science and Technology held a conference entitled "Changing Wastewater Treatment Models from Waste to Resources", from March 27 to 29, at the university campus.  The conference’s activities focused on the latest developments in the field of efficient and innovative technologies used to recover resources, such as water, food and energy.  Of valuable wastewater in wastewater, keynote speaker Professor Bruce Reitman, Director of the Lewitt Center for Biotechnology at the Institute for Biological Design at Arizona State University, noted that “wastewater treatment focuses on removing water pollutants, although it is mostly valuable resources if they are recovered  In a useful form, it is now possible to extract the energy from the used water, including domestic wastewater.''',
    "title-news": "Title News",
    "more-read-news": "More Read",
    "date-news": "Saturday 05 December 2020",
    "lastnews-page-news-universty-channel":
        "From files to resources: the future of wastewater treatment",
    "lastnews-news-channel-assea":
        "New technology to disinfect water using light",
    "lastnews-news-channel-alsharq":
        "A new innovative aluminum profile helps purify water",
    "lastnews-news-channel-youm7":
        "Canal water: drinking stations are fully functional and withdraw their water to find out the turbidity rate",
    "last-newspage-urgent": "Urgent",
    "page-view-news":
        "Cutting off drinking water for several areas in Giza on Friday evening for a period of 8 hours",
    "last-page-breaking-news":
        "A clean cup of water..a decent life Water projects in Sohan Pet 599 million pounds",
    "sign-out": "Sign out",
    "comments": "Comments",
    "settings": "Settings",
    "rate-app": "Application Rate",
    "share-app": "Application share",
    "conditions": "conditions",
    "privacy-policy": "Privacy policy",
    "about-application": "About application",
    "who-are-we": "Who are we",
    "call-us": "Call us",
    "notifications": "notifications",
    "my-profile": "My Profile",
    "videos": "Videos",
    "jobs": "jobs",
    "articles": "Articles",
    "company-news": "Company News",
    "breaking-news": "breaking news",
    "last-news": "Last News",
    "search-in": "Search",
    "home-screen": "Home",
    "account-screen": "Account",
    "video-screen": "Video",
    "choose-source": "source",
    "company-guid-screen": "Company",
  };

  changeLan(bool lan) async {
    isEn = lan;
    notifyListeners();
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setBool("isEn", isEn);
  }

  Object getTexts(String txt) {
    if (isEn == true) {
      return textsEn[txt];
    } else {
      return textsAr[txt];
    }
  }
}
