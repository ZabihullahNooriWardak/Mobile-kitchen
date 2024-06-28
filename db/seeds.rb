# Create regular users
user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password')

UserDetail.create!(user: user1, phone_number: '1234567890', name: 'User', last_name: 'One')
UserDetail.create!(user: user2, phone_number: '0987654321', name: 'User', last_name: 'Two')

# Create admin users
admin1 = User.create!(email: 'admin1@example.com', password: 'password', password_confirmation: 'password')
admin2 = User.create!(email: 'admin2@example.com', password: 'password', password_confirmation: 'password')

UserDetail.create!(user: admin1, phone_number: '1112223333', name: 'Admin', last_name: 'One', is_admin: true)
UserDetail.create!(user: admin2, phone_number: '4445556666', name: 'Admin', last_name: 'Two', is_admin: true)

puts "Seeded database with users and user details."
# db/seeds.rb

Faq.create([
  { question: 'سلام ', answer: 'ع سلام' },
{question: 'تشکر', answer: 'خواهش میکنم '},
  { question: 'چی خدمات یا خدمت دارین ', answer: 'ما اشپز خانه سیار استیم ' },
    {question: 'ایا بعد از رسید سفارش یا اردر خوده کنسل یا لغوه کرده میتانم ', answer: 'نخیر ممکن نیست چنین کاری '},
    {question: 'آیا میتوانم با یگ شخص فزیکی یا حضوری یا انسان واقعی مسچ کنم ', answer: 'بلی میتوانید شماره وتساپ ما ۰۷۷۶۵۷۸۶۰۳ است '},
    {question: 'شما کی هستید استید ', answer: 'من ربات استم '},

    {question: 'وظیفه شما چی است یا چیست ', answer: 'پاسخ به سوالات شما '},
    {question: 'آیا شما احساسات دارید ', answer: 'نخیر من احساس ندارم فقط یگ برنامه کمپیوتری استم '},
    {question: 'نام یا اسم شما چیست ', answer: 'نام مشخص ندارم '},
    {question: 'در قیمت های یا نرخ ها ۲۰۰ مینیو دارید ', answer: 'بلی شما از بخش مینیو میتوانید انرا بیبینید '},
    {question: 'آیا غذا ها در کارت یا بخش غذا بخاطر یگ نفر قیمت اش نوشته شده است', answer: 'بلی قیمت غذا در کارت فقط بخاطر یگ نفر است '},
    {question: 'چطور استین یا هستین ', answer: 'شکر ممنون خوب استم'},
    {question: 'آیا شما مینیو های قبل از قبل ساخته شده دارید ', answer: 'بلی محترم داریم شما از بخش مینیوهای از قبل ساخته شده آنرا پیدا کرده میتوانید '},
    {question: 'ایا سیستم ریکومندیشن یا پیشنهاد دارید ', answer: 'بلی داریم '},
    {question: 'ما چطور میتوانیم انتقادات یا پیشنهادات خود را ثبت کنیم ', answer: 'به ایمیل ادرس ذیل روان کرده میتوانید پیشنهاد یا انتقاد خود را zabi@gmail.com '},
    {question: 'کمی معلوما در باره خدمات شما یا اشپزخانه شما ', answer: 'ما اشپز خانه سیار استیم فعلا در ولایت کابل فعالیت داریم '},
    {question: 'چی گفاست یا گف ها است ', answer: 'خیر خیرتی '},
    {question: 'چه مدت زمان ارسال طول می‌کشد؟', answer: 'زمان ارسال بسته به مکان شما متفاوت است. ما ارسال اکسپرس را با هزینه اضافی ارائه می‌دهیم.'},
    {question: 'ارزانترین مینیو تان قیمت اش چند است ', answer: 'ارزانترین مینیو ما ۲۷۰ افغانی قیمت دارد . شما میتوانید از قسمت ریکومندیشن سرچ کنید '},
    {question: 'قیمت ترین یا بهترین مینیو قیمت اش چند است ', answer: 'بهترین و قیمت ترین مینیو ما ۱۲۰۰ افغانی قیمت دارد و شما میتوانید از قسمت ریکومندیشن سرچ کنید'},
    {question: 'آیا می‌توانم سفارش خود را پس از ثبت آن تغییر دهم؟', answer: 'خیر، یک بار سفارش ثبت شده است، نمی‌توان آن را تغییر داد. با این حال، می‌توانید سفارش خود را لغو کرده و یک سفارش جدید ثبت کنید.'},
    {question: 'مینیو با قیمت مناسب یا متوسط را برایم بگو یا پیشنهاد کو ', answer: 'مینیو با قیمت مناسب به ۳۷۰ افغانی است و منیو عالی میباشد شما میتوانید از قسمت ریکومندیشن فیلتر کنید'},
    {question: 'چطور می‌توانم با خدمات مشتری تماس بگیرم؟', answer: 'شما می‌توانید با ارسال ایمیل به ما به ایمیل تماس بگیرید'},
    {question: 'آدرس تان موقعیت کجا است یا کجا هست ', answer: 'ادرس ما کمپنی کوچه قلعه کاشف کابل است'},
    {question: 'چطور می‌توانم از تخفیف‌ها و پیشنهادات ویژه استفاده کنم؟', answer: 'شما می‌توانید از تخفیف‌ها و پیشنهادات ویژه ما با عضویت در خبرنامه ما استفاده کنید.'},
    {question: 'آیا می‌توانم سفارش خود را لغو کنم؟', answer: 'بله، شما می‌توانید سفارش خود را لغو کنید. اگر سفارش شما هنوز ارسال نشده است، می‌توانید از طریق پنل کاربری خود سفارش خود را لغو کنید.'},
    {question: 'چطور می‌توانم از وضعیت سفارش خود مطلع شوم؟', answer: 'شما می‌توانید از وضعیت سفارش خود از طریق پنل کاربری خود مطلع شوید.'},
    {question: 'آیا نماینده گی فزیکی یا حضوری دارید ؟ ',answer: 'بلی ما نماینده گی فزیکی داریم '},
    {question: 'سفارش ما در چقدر وقت میرسد یا انجام  یا اجرا میشود ؟ ', answer: 'ما میتوانیم حداقل در ظرف ۶ یا ۷ ساعت سفارش شما ره انتقال بدهیم '},
    {question: 'آیا میتوانم از خدمات شما در شب یا شبانه روز استفاده کنم ', answer: 'بلی ما ۲۴ ساعته خدمات را ارائه میکنیم '},
    {question: 'آیا میتوانم از خدمات شما در تعطیلات استفاده کنم ', answer: 'بلی ما در تعطیلات هم خدمات را ارائه میکنیم '},
    {question: 'آیا میتوانم از خدمات شما در روزهای عید استفاده کنم ', answer: 'بلی ما در روزهای عید هم خدمات را ارائه میکنیم '},
    {question: 'آیا من میتوانم بعد از سفارش دادن یا ارسال سفارش خوده را لغو یا کنسل کنم ',answer: 'بلی تا یگ وقت معین میتوانید که آن وقت میتواند ۳ یا ۴ ساعت باشد'},
    {question: 'آیا ارسال شما رایگان است دارید ', answer: 'بلی ارسال ما رایگان است '},
    {question: 'آیا در ولایات فعالیت نماینده گی  آشپز خانه دارید  ', answer: 'نخیر مجترم فعلا تنها در کابل قعالیت داریم '},
    {question: 'برای چند نفر مهمان نان تیار یا آمده کرده میتوانید ', answer: 'ما فعلا حدااکثر تا به ۱۸۰۰ نفره امده گی کرفته میتانیم'},
    {question: 'آیا میتوانم از خدمات شما در مراسم ها یا مراسمات استفاده کنم ', answer: 'بلی ما در مراسمات هم خدمات را ارائه میکنیم '},
    {question:'آیا شما کدام تخفیف دارید ؟', answer: 'نخیر محترم ما تخفیف نداریم '},
    {question: 'آیا ظروف شما رایگان است', answer: 'نخیر محترم ظروف ما کرایی است '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات خصوصی استفاده کنم ', answer: 'بلی ما در مراسمات خصوصی هم خدمات را ارائه میکنیم '},
    {question:'کرایه ظروف شما چقدر است یا چند است ', answer: 'کرایه ظروف ما ۱۰۰ افغانی است '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات عروسی استفاده کنم ', answer: 'بلی ما در مراسمات عروسی هم خدمات را ارائه میکنیم '},
    {question: 'آیا قالین و توشک هم دارین بخاطر مهمانی کلان', answer: 'نخیر محترم فعلا نداریم '},
    {question: 'نمبر تماس یا شماره  تلیفون و یا وتساپ شما چیست چی است یا هست', answer: 'شماره تماس و وتساپ ما ۰۷۷۶۵۷۸۶۰۳ است '},
    {question: 'آیا بخاطر چای صبح خدمات دارین ', answer: 'بلی ما خدمات چای صبح داریم '},
    {question: 'آیا بعد از انتقال  یا رسید سفارش میتوانم آنرا یا انرا لغوه یا کنسل کنم یا کنیم ', answer: 'نخیر ممکن نیست چنین کاری '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات عزاداری استفاده کنم ', answer: 'بلی ما در مراسمات عزاداری هم خدمات را ارائه میکنیم '},
    {question: 'آیا شما چای یا قهوه هم آورده میتوانید', answer: 'بلی محترم میتانیم'},
    {question: 'آیا جنراتور کرایی دارید ؟ ', answer: 'بلی ما جنراتور کرایی داریم '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات تشییع جنازه استفاده کنم ', answer: 'بلی ما در مراسمات تشییع جنازه هم خدمات را ارائه میکنیم '},
    {question: 'چطور میتانیم سفارش خوده لغو کنیم ', answer: 'شما میتوانید در بخش سفارش ها انرا حذف کنید '},
    {question: 'چی مدت زمان ارسال طول میکشد ؟', answer: 'زمان ارسال بسته به مکان شما متفاوت است. ما ارسال اکسپرس را با هزینه اضافی ارائه می‌دهیم.'},
    {question: 'چی روش های پرداختی را قبول دارید', answer: 'ما فعلا کدام روش خاص آنلاین بخاطر پرداخت نداریم فقط از نزدیک بعد از ارایه خدمات شما میتوانید پول خوده پرداخت کنید '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات تولد استفاده کنم ', answer: 'بلی ما در مراسمات تولد هم خدمات را ارائه میکنیم '},
    {question: 'ایا یا آیا شما بازپرداخت ارایه میدهید ', answer: 'نخیر ممکن نیست '},
    {question: 'ایا آیا میتوانیم سفارش خود را بعد از ثبت ان تغیر دهیم ', answer: 'نخیر محترم بعد از ثبت سفارش شما نمی توانید انرا تفیر دهید '},
    {question: 'چطور میتوانیم با خدمات مشتری تماس بیگیریم ', answer: '۰۷۷۶۵۷۸۶۰۳ شماره تماس ما است . '},
    {question: 'آیا شما قیمت عمده و پرچون دارید ', answer: 'ما چیزی بنام  عمده و پرچون نداریم '},
    {question: 'آیا میتوانم از خدمات شما در مراسمات مذهبی استفاده کنم ', answer: 'بلی ما در مراسمات مذهبی هم خدمات را ارائه میکنیم '},
    {question: 'چطور میتوانم سفارش خوده خودرا خود را پیگیری کنم یا سی کنم بیبینم ', answer: 'شما میتوانید از بخش سفارش ها انرا پیگیری کنید '},
    { question: 'Hello', answer: 'Hi' },
    {question:'Hi', answer: 'Hello' },
  { question: 'What services do you offer?', answer: 'We are a mobile kitchen.' },
  { question: 'Can I cancel my order after it is placed?', answer: 'No, it is not possible to cancel an order after it is placed.' },
  { question: 'Can I speak with a real person?', answer: 'Yes, you can contact us on WhatsApp at 0776578603.' },
  { question: 'Who are you?', answer: 'I am a bot.' },
  { question: 'What is your job?', answer: 'Answering your questions.' },
  { question: 'Do you have feelings?', answer: 'No, I do not have feelings. I am just a computer program.' },
  { question: 'What is your name?', answer: 'I do not have a specific name.' },
  { question: 'Do you have a menu with 200 items?', answer: 'Yes, you can view it in the menu section.' },
  { question: 'Are the prices for one person?', answer: 'Yes, the prices are for one person.' },
  { question: 'How are you?', answer: 'I am fine, thank you.' },
  { question: 'Do you have pre-made or pre built menus?', answer: 'Yes, you can find them in the pre-made menus section.' },
  { question: 'Do you have a recommendation system?', answer: 'Yes, we do.' },
  { question: 'How can we provide feedback?', answer: 'You can send your feedback to zabi@gmail.com.' },
  { question: 'Tell me about your services.', answer: 'We are a mobile kitchen currently operating in Kabul.' },
  { question: 'What is going on?', answer: 'Nothing much.' },
  { question: 'How long does delivery take?', answer: 'Delivery time depends on your location. We offer express delivery for an additional fee.' },
  { question: 'What is the price of your cheapest menu?', answer: 'Our cheapest menu costs 270 AFN. You can search for it in the recommendations section.' },
  { question: 'What is the price of your most expensive menu?', answer: 'Our most expensive menu costs 1200 AFN. You can search for it in the recommendations section.' },
  { question: 'Can I change my order after placing it?', answer: 'No, once an order is placed, it cannot be changed. However, you can cancel your order and place a new one.' },
  { question: 'Recommend me a reasonably priced menu or middle or medium.', answer: 'A reasonably priced menu costs 370 AFN. You can filter for it in the recommendations section.' },
  { question: 'How can I contact customer service?', answer: 'You can contact us by email.' },
  { question: 'Where is your address?', answer: 'Our address is Company Street, Qala-e-Kashif, Kabul.' },
  { question: 'How can I use discounts and special offers?', answer: 'You can use discounts and special offers by subscribing to our newsletter.' },
  { question: 'Can I cancel my order?', answer: 'Yes, you can cancel your order if it has not been shipped yet.' },
  { question: 'How can I check the status of my order?', answer: 'You can check the status of your order through your user panel.' },
  { question: 'Do you have physical representatives?', answer: 'Yes, we have physical representatives.' },
  { question: 'How long does it take to process an order?', answer: 'We can process your order within 6 to 7 hours.' },
  { question: 'Can I use your services at night?', answer: 'Yes, we offer 24-hour services.' },
  { question: 'Can I use your services on holidays?', answer: 'Yes, we offer services on holidays as well.' },
  { question: 'Can I use your services during Eid?', answer: 'Yes, we offer services during Eid.' },
  { question: 'Can I cancel my order after delivery?', answer: 'No, it is not possible to cancel an order after delivery.' },
  { question: 'Is delivery free?', answer: 'Yes, delivery is free.' },
  { question: 'Do you have branches in other provinces?', answer: 'No, we are currently only operating in Kabul.' },
  { question: 'How many guests can you serve?', answer: 'We can serve up to 1800 guests.' },
  { question: 'Can I use your services for events?', answer: 'Yes, we offer services for events.' },
  { question: 'Do you offer discounts?', answer: 'No, we do not offer discounts.' },
  { question: 'Are your utensils free?', answer: 'No, our utensils are for rent.' },
  { question: 'Can I use your services for private events?', answer: 'Yes, we offer services for private events.' },
  { question: 'What is the rental price for utensils?', answer: 'The rental price for utensils is 100 AFN.' },
  { question: 'Can I use your services for weddings?', answer: 'Yes, we offer services for weddings.' },
  { question: 'Do you provide carpets and mattresses for large gatherings?', answer: 'No, we do not currently offer these items.' },
  { question: 'What is your contact number?', answer: 'Our contact number and WhatsApp is 0776578603.' },
  { question: 'Do you offer breakfast services?', answer: 'Yes, we offer breakfast services.' },
  { question: 'Can I cancel my order after delivery?', answer: 'No, it is not possible to cancel an order after delivery.' },
  { question: 'Can I use your services for mourning ceremonies?', answer: 'Yes, we offer services for mourning ceremonies.' },
  { question: 'Can you provide tea or coffee?', answer: 'Yes, we can.' },
  {question: 'thank you ', answer: 'you are welcome '},
  { question: 'Do you offer generator rentals?', answer: 'Yes, we offer generator rentals.' },
  { question: 'Can I use your services for funeral ceremonies?', answer: 'Yes, we offer services for funeral ceremonies.' },
  { question: 'How can I cancel my order?', answer: 'You can cancel your order in the orders section.' },
  { question: 'How long does delivery take?', answer: 'Delivery time depends on your location. We offer express delivery for an additional fee.' },
  { question: 'What payment methods do you accept?', answer: 'We do not currently accept online payments. You can pay in cash after receiving the service.' },
  { question: 'Can I use your services for birthday parties?', answer: 'Yes, we offer services for birthday parties.' },
  { question: 'Do you offer refunds?', answer: 'No, we do not offer refunds.' },
  { question: 'Can I change my order after placing it?', answer: 'No, you cannot change your order after placing it.' },
  { question: 'How can I contact customer service?', answer: 'You can contact us at 0776578603.' },
  { question: 'Do you offer wholesale and retail prices?', answer: 'We do not offer wholesale and retail prices.' },
  { question: 'Can I use your services for religious ceremonies?', answer: 'Yes, we offer services for religious ceremonies.' },
  { question: 'How can I track my order?', answer: 'You can track your order in the orders section.' },
  { question: 'سلام', answer: 'وعلیکم سلام' },
  { question: 'تاسو کوم خدمات وړاندې کوئ؟', answer: 'موږ موبایل پخلنځی یو.' },
  { question: 'آیا زه خپل امر د ثبت وروسته لغوه کولی شم؟', answer: 'نه، دا ممکن نه دی.' },
  { question: 'آیا زه کولی شم د یو حقیقي شخص سره خبرې وکړم؟', answer: 'هو، تاسو کولای شئ زموږ سره په WhatsApp کې په ۰۷۷۶۵۷۸۶۰۳ اړیکه ونیسئ.' },
  { question: 'تاسو څوک یاست؟', answer: 'زه یو ربات یم.' },
  { question: 'ستاسو دنده څه ده؟', answer: 'ستاسو پوښتنو ته ځواب ورکول.' },
  { question: 'آیا تاسو احساسات لرئ؟', answer: 'نه، زه احساسات نه لرم. زه یوازې یو کمپیوټري پروګرام یم.' },
  { question: 'ستاسو نوم څه دی؟', answer: 'زه مشخص نوم نه لرم.' },
  { question: 'آیا تاسو ۲۰۰ آیتمونو سره مینیو لرئ؟', answer: 'هو، تاسو کولای شئ دا په مینیو برخه کې وګورئ.' },
  { question: 'آیا د یو کس لپاره قیمتونه لیکل شوي دي؟', answer: 'هو، قیمتونه د یو کس لپاره دي.' },
  { question: 'تاسو څنګه یاست؟', answer: 'مننه، زه ښه یم.' },
  { question: 'آیا تاسو مخکې نه جوړ شوي مینیو لرئ؟', answer: 'هو، تاسو کولای شئ دا په مخکې جوړ شوي مینیو برخه کې پیدا کړئ.' },
  { question: 'آیا تاسو د سپارښتنې سیستم لرئ؟', answer: 'هو، موږ لرو.' },
  { question: 'څنګه موږ کولی شو خپلې تبصرې وړاندې کړو؟', answer: 'تاسو کولای شئ خپلې تبصرې ته ایمیل ته واستوئ zabi@gmail.com.' },
  { question: 'د ستاسو خدمات په اړه معلومات راکړئ.', answer: 'موږ موبایل پخلنځی یو او په کابل کې فعالیت لرو.' },
  { question: 'څه حال دی؟', answer: 'هیڅ ځانګړی نه دی.' },
  { question: 'د سپارښتنې لپاره څومره وخت لګي؟', answer: 'د سپارښتنې وخت ستاسو په موقعیت پورې اړه لري. موږ د اضافي لګښت سره ګړندي تحویل وړاندې کوو.' },
  { question: 'ستاسو د تر ټولو ارزانه مینیو قیمت څومره دی؟', answer: 'زموږ تر ټولو ارزانه مینیو ۲۷۰ افغانی قیمت لري. تاسو کولای شئ دا په سپارښتنې برخه کې پیدا کړئ.' },
  { question: 'ستاسو د تر ټولو غوره مینیو قیمت څومره دی؟', answer: 'زموږ تر ټولو غوره مینیو ۱۲۰۰ افغانی قیمت لري. تاسو کولای شئ دا په سپارښتنې برخه کې پیدا کړئ.' },
  { question: 'آیا زه کولی شم خپل امر وروسته له ثبت څخه تغییر ورکړم؟', answer: 'نه، یو ځل چې امر ثبت شو، نشئ کولی هغه تغییر کړئ. که څه هم، تاسو کولی شئ خپل امر لغوه کړئ او یو نوی امر ثبت کړئ.' },
  { question: 'یوه مناسب قیمت مینیو ته وړاندیز وکړئ.', answer: 'یوه مناسب قیمت مینیو ۳۷۰ افغانی قیمت لري. تاسو کولای شئ دا په سپارښتنې برخه کې پیدا کړئ.' },
  { question: 'څنګه کولی شم د خدماتو سره اړیکه ونیسم؟', answer: 'تاسو کولای شئ زموږ سره د ایمیل له لارې اړیکه ونیسئ.' },
  { question: 'ستاسو پته څه ده؟', answer: 'زموږ پته کمپنۍ سړک، قلعه کاشف، کابل ده.' },
  {question:'مننه ', answer: 'هیله کوم '},  
  { question: 'څنګه کولی شم له تخفیفونو او ځانګړو وړاندیزونو ګټه واخلم؟', answer: 'تاسو کولای شئ زموږ خبرپاڼې ته د ګډون له لارې له تخفیفونو او ځانګړو وړاندیزونو ګټه واخلئ.' },
  { question: 'آیا زه کولی شم خپل امر لغوه کړم؟', answer: 'هو، تاسو کولای شئ خپل امر لغوه کړئ که چیرې دا لا هم نه وي لیږدول شوی.' },
  { question: 'څنګه کولی شم د خپل امر وضعیت وګورم؟', answer: 'تاسو کولای شئ د خپل کارن پینل له لارې د خپل امر وضعیت وګورئ.' },
  { question: 'آیا تاسو فزیکي نمایندګان لرئ؟', answer: 'هو، موږ فزیکي نمایندګان لرو.' },
  { question: 'سپارښتنه څومره وخت نیسي؟', answer: 'موږ کولی شو ستاسو امر په لږترلږه ۶ یا ۷ ساعتونو کې ترسره کړو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په شپه کې وکاروم؟', answer: 'هو، موږ ۲۴ ساعته خدمات وړاندې کوو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په رخصتیو کې وکاروم؟', answer: 'هو، موږ په رخصتیو کې هم خدمات وړاندې کوو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په عید کې وکاروم؟', answer: 'هو، موږ په عید کې هم خدمات وړاندې کوو.' },
  { question: 'آیا زه کولی شم د سپارښتنې وروسته امر لغوه کړم؟', answer: 'نه، دا ممکن نه دی.' },
  { question: 'آیا تحویلي وړیا ده؟', answer: 'هو، تحویلي وړیا ده.' },
  { question: 'آیا تاسو په نورو ولایتونو کې نمایندګان لرئ؟', answer: 'نه، موږ یوازې په کابل کې فعالیت کوو.' },
  { question: 'تاسو څومره میلمانه خدمت کولی شئ؟', answer: 'موږ تر ۱۸۰۰ میلمانو پورې خدمت کولی شو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په مراسمو کې وکاروم؟', answer: 'هو، موږ په مراسمو کې هم خدمات وړاندې کوو.' },
  { question: 'آیا تاسو تخفیف لرئ؟', answer: 'نه، موږ تخفیف نه لرو.' },
  { question: 'آیا ستاسو ظروف وړیا دي؟', answer: 'نه، زموږ ظروف په کرایه دي.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په خصوصي مراسمو کې وکاروم؟', answer: 'هو، موږ په خصوصي مراسمو کې هم خدمات وړاندې کوو.' },
  { question: 'د ظروفو کرایه څومره ده؟', answer: 'د ظروفو کرایه ۱۰۰ افغانی ده.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په ودونو کې وکاروم؟', answer: 'هو، موږ په ودونو کې هم خدمات وړاندې کوو.' },
  { question: 'آیا تاسو د لویو غونډو لپاره قالین او توشک لرئ؟', answer: 'نه، موږ دا شیان نه لرو.' },
  { question: 'ستاسو د تماس شمیره څه ده؟', answer: 'زموږ د تماس شمیره او WhatsApp ۰۷۷۶۵۷۸۶۰۳ ده.' },
  { question: 'آیا تاسو د سهار چای خدمات وړاندې کوئ؟', answer: 'هو، موږ د سهار چای خدمات لرو.' },
  { question: 'آیا زه کولی شم د سپارښتنې وروسته امر لغوه کړم؟', answer: 'نه، دا ممکن نه دی.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په جنازو کې وکاروم؟', answer: 'هو، موږ په جنازو کې هم خدمات وړاندې کوو.' },
  { question: 'آیا تاسو چای یا قهوه هم راوړلی شئ؟', answer: 'هو، موږ کولی شو.' },
  { question: 'آیا تاسو د جنراتور کرایه لرئ؟', answer: 'هو، موږ د جنراتور کرایه لرو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په جنازو کې وکاروم؟', answer: 'هو، موږ په جنازو کې هم خدمات وړاندې کوو.' },
  { question: 'څنګه کولی شم خپل امر لغوه کړم؟', answer: 'تاسو کولی شئ دا په سپارښتنو برخه کې لغوه کړئ.' },
  { question: 'د سپارښتنې لپاره څومره وخت نیسي؟', answer: 'د سپارښتنې وخت ستاسو په موقعیت پورې اړه لري. موږ د اضافي لګښت سره ګړندي تحویل وړاندې کوو.' },
  { question: 'تاسو کومو تادیاتو میتودونه منئ؟', answer: 'موږ اوسمهال آنلاین تادیه نه منو. تاسو کولی شئ د خدماتو ترلاسه کولو وروسته په نغدي توګه تادیه وکړئ.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په زیږون ورځ کې وکاروم؟', answer: 'هو، موږ په زیږون ورځ کې هم خدمات وړاندې کوو.' },
  { question: 'آیا تاسو بیرته پیسې ورکوئ؟', answer: 'نه، موږ بیرته پیسې نه ورکوو.' },
  { question: 'آیا زه کولی شم د ثبت وروسته خپل امر بدل کړم؟', answer: 'نه، تاسو خپل امر د ثبت وروسته بدل نه شئ کولی.' },
  { question: 'څنګه کولی شم د خدماتو سره اړیکه ونیسم؟', answer: 'تاسو کولی شئ موږ سره په ۰۷۷۶۵۷۸۶۰۳ اړیکه ونیسئ.' },
  { question: 'آیا تاسو عمده او پرچون نرخونه وړاندې کوئ؟', answer: 'موږ عمده او پرچون نرخونه نه لرو.' },
  { question: 'آیا زه کولی شم ستاسو خدمات په مذهبي مراسمو کې وکاروم؟', answer: 'هو، موږ په مذهبي مراسمو کې هم خدمات وړاندې کوو.' },
  { question: 'څنګه کولی شم خپل امر تعقیب کړم؟', answer: 'تاسو کولی شئ دا په سپارښتنو برخه کې تعقیب کړئ.' }
])

