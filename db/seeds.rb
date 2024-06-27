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
  { question: 'What is your return policy?', answer: 'Our return policy lasts 30 days no way we can not return you any thing and there fore we hope you are not sad from us' },
  { question: 'How do I track my order?', answer: 'You can track your order using the tracking link sent to your email...' },
    {question: 'if I want to cacel my order what should I do?', answer: 'You can cancel your order by contacting us through our email or phone number'},
    {question: 'Do you have a physical store?', answer: 'No, we are an online store only.'},
    {question: 'Do you offer gift cards?', answer: 'Yes, we offer gift cards. You can purchase them on our website.'},
    {question: 'Do you offer free shipping?', answer: 'Yes, we offer free shipping on orders over $50.'},
    {question: 'How long does shipping take?', answer: 'Shipping times vary depending on your location. We offer express shipping for an additional fee.'},
    {question: 'What payment methods do you accept?', answer: 'We accept Visa, Mastercard, American Express, and PayPal.'},
    {question: 'Do you offer refunds?', answer: 'Yes, we offer refunds on all items returned in their original condition within 30 days of purchase.'},
    {question: 'Can I change my order after it has been placed?', answer: 'No, once an order has been placed, it cannot be changed. However, you can cancel your order and place a new one.'},
    {question: 'Do you offer wholesale pricing?', answer: 'Yes, we offer wholesale pricing for bulk orders. Please contact us for more information.'},
    {question: 'How can I contact customer service?', answer: 'You can contact customer service by emailing us atgmail.com'},
    {question: 'چطور می‌توانم سفارش خود را لغو کنم؟', answer: 'شما می‌توانید سفارش خود را با تماس با ما از طریق ایمیل یا شماره تلفن لغو کنید'},
    {question: 'آیا شما فروشگاه فیزیکی دارید؟', answer: 'خیر، ما فقط یک فروشگاه آنلاین هستیم.'},
    {question: 'آیا شما کارت هدیه ارائه می‌دهید؟', answer: 'بله، ما کارت هدیه ارائه می‌دهیم. شما می‌توانید آنها را از طریق وب سایت ما خریداری کنید.'},
    {question: 'آیا ارسال رایگان ارائه می‌دهید؟', answer: 'بله، ما ارسال رایگان برای سفارشات بالای 50 دلار ارائه می‌دهیم.'},
    {question: 'چه مدت زمان ارسال طول می‌کشد؟', answer: 'زمان ارسال بسته به مکان شما متفاوت است. ما ارسال اکسپرس را با هزینه اضافی ارائه می‌دهیم.'},
    {question: 'چه روش‌های پرداختی را قبول دارید؟', answer: 'ما کارت‌های ویزا، مسترکارت، امریکن اکسپرس و پی پال را قبول می‌کنیم.'},
    {question: 'آیا شما بازپرداخت ارائه می‌دهید؟', answer: 'بله، ما بازپرداخت را برای تمام مواردی که در شرایط اولیه خود در 30 روز پس از خرید برگردانده شده‌اند، ارائه می‌دهیم.'},
    {question: 'آیا می‌توانم سفارش خود را پس از ثبت آن تغییر دهم؟', answer: 'خیر، یک بار سفارش ثبت شده است، نمی‌توان آن را تغییر داد. با این حال، می‌توانید سفارش خود را لغو کرده و یک سفارش جدید ثبت کنید.'},
    {question: 'آیا شما قیمت عمده فروشی ارائه می‌دهید؟', answer: 'بله، ما قیمت عمده فروشی برای سفارشات برگزار می‌کنیم. لطفاً برای اطلاعات بیشتر با ما تماس بگیرید.'},
    {question: 'چطور می‌توانم با خدمات مشتری تماس بگیرم؟', answer: 'شما می‌توانید با ارسال ایمیل به ما به ایمیل تماس بگیرید'},
    {question: 'چطور می‌توانم سفارش خود را پیگیری کنم؟', answer: 'شما می‌توانید سفارش خود را با استفاده از پیوند پیگیری ارسال شده به ایمیل خود پیگیری کنید...'}
])

