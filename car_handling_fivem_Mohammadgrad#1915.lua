 -- Question Or Bug = Mohammadgrad#1915
-- Server Discord : https://discord.gg/zTRDVtmWCa


1. پارامترها
1.1. ویژگی های فیزیکی
موارد زیر نشان دهنده نسبت فیزیکی یک وسیله نقلیه در بازی است.
HANDLINGNAME
مورد استفاده توسط automjets.meta، برای شناسایی خط هندلینگ وسیله نقلیه خاص.

از هر متنی که بیش از 14 کاراکتر نباشد می توان استفاده کرد. خودروهای وانیلی به طور پیش فرض از حروف بزرگ استفاده می کنند.
مثال: ADDER، DINGHY
FMASS
وزن وسیله نقلیه. مقادیر باید بر حسب کیلوگرم ذکر شود.

هنگامی که وسیله نقلیه با وسیله نقلیه دیگری یا یک جسم غیر ساکن برخورد می کند استفاده می شود.
FINITIALDRAGCOEFF
ضریب درگ خودرو را تنظیم می کند. افزایش برای شبیه سازی درگ آیرودینامیکی.

ارزش: 10-120
FPERCENTSUBMERGED
درصد «ارتفاع شناور» وسیله نقلیه پس از سقوط در آب، قبل از غرق شدن.

پیش فرض - 85٪ برای وانیلی، وسایل نقلیه زمینی. مقدار قبل از غرق شدن برای لحظه ای از غرق شدن وسیله نقلیه برای شناور شدن متوقف می شود.
قایق ها مستثنی شدند.

ارزش: هر درصد باید به صورت اعشاری داده شود.
مثال: 0.70 (70%)

عدد نامعتبر باعث غرق شدن وسیله نقلیه بدون غرق شدن راننده می شود.

VECCENTREOFMASSOFFSET
مرکز ثقل را بر حسب متر از یک سمت به سمت دیگر منتقل می کند.

مقادیر:
(0 به این معنی است که مرکز ثقل در مرکز وسیله نقلیه خواهد بود.)

X: -10.0 تا 10.0. مقادیر مثبت مرکز ثقل را به سمت راست حرکت می دهند.
Y: -10.0 تا 10.0. مقادیر مثبت مرکز ثقل را به جلو حرکت می دهد.
Z: -10.0 تا 10.0. مقادیر مثبت مرکز ثقل را به سمت بالا حرکت می دهند.
VECINERTIAMULTIPLIER
من نمی دانم این به چه معناست، اگر کسی می داند لطفا به من بگوید.

مقادیر:
X: -10.0 تا 10.0.
Y: -10.0 تا 10.0.
Z: -10.0 تا 10.0.

1.2. انتقال
این مقادیر عملکرد خط مستقیم خودرو را نشان می دهد.

FDRIVEBIASFRONT
این برای تعیین اینکه یک وسیله نقلیه جلو، عقب یا چهار چرخ محرک است استفاده می شود.
ممنون از @FoxtrotDelta که در مورد این مقدار به من گفت.

ارزش های:

0.0 به این معنی است که وسیله نقلیه در چرخ عقب است.
1.0 به این معنی است که وسیله نقلیه درایو چرخ جلو است.
هر مقدار بین 0.01 و 0.99 چهار چرخ محرک است.
0.5 به هر دو محور جلو و عقب نیروی مساوی می دهد، که 4WD عالی است.
NINITIALDRIVEGEARS
بدیهی است که این خط تعیین می کند که جعبه دنده یک وسیله نقلیه دارای چند سرعت جلو / دنده است.

مقادیر: 1 یا بیشتر

FINITIALDRIVEFORCE
این محاسبه نیروی محرکه بازی (از خروجی گیربکس) را تغییر می دهد.

مقادیر: 0.01 - 2.0 و بالاتر .

1.0 از محاسبه نیروی محرک بدون تغییر استفاده می کند.
مقادیر کمتر از 1.0 در واقع نیروی محرکه کمتری به خودرو می دهد.
مقادیر بیشتر از 1.0 نیروی محرکه بیشتری تولید می کند.
FDRIVEINERTIA
سرعت دور موتور را شرح می دهد.

مقادیر: 0.01 - 2.0.

مقدار پیش‌فرض 1.0 است (یا بدون تغییر درایو intertia).
مقادیر بزرگتر = Redline سریعتر (حداکثر سرعت موتور)
FCLUTCHCHANGERATESCALEUPSHIFT
چند برابر کننده سرعت کلاچ در دنده های بالا .

اعداد بزرگتر = جابجایی سریعتر.
FCLUTCHCHANGERATESCALEDOWNSHIFT
چند برابر کننده سرعت کلاچ در دنده های پایین .

اعداد بزرگتر = جابجایی سریعتر
INITIALDRIVEMAXFLATVEL
این سرعت خودرو را در خط قرمز در دنده بالا ( نه نمایش ) تعیین می کند.

تنظیم این مقدار تضمین نمی کند که وسیله نقلیه به سرعت داده شده برسد.

عدد موجود در فایل را در 0-82 ضرب کنید تا سرعت بر حسب مایل در ساعت بدست آید.
برای بدست آوردن سرعت بر حسب کیلومتر بر ساعت، آن را در 1.32 ضرب کنید.
مقادیر: 0.00 و بالاتر.

FBRAKEFORCE
یکی آشکار. محاسبه کاهش سرعت بازی را چند برابر می کند.

اعداد بزرگتر = ترمز سخت تر.
مقادیر: 0.01 - 2.0 و بالاتر.

1.0 از محاسبه نیروی ترمز بدون تغییر استفاده می کند.
FBRAKEBIASFRONT
این خط توزیع نیروی ترمز بین محورهای جلو و عقب را کنترل می کند.

مقادیر:
مشابه fDriveBiasFront،

0.0 به این معنی است که محور عقب فقط نیروی ترمز را دریافت می کند.
1.0 به این معنی است که محور جلو فقط نیروی ترمز را دریافت می کند.
0.5 به هر دو محور نیروی ترمز مساوی می دهد.
مقادیر بین 0.01 و 0.49 به این معنی است که محور عقب نیروی ترمز بیشتری دریافت می کند.
مقادیر بین 0.51 و 0.99 به این معنی است که محورهای جلو نیروی ترمز بیشتری نسبت به عقب دریافت خواهند کرد.
FHANDBRAKEFORCE
یکی دیگر از آشکار است. قدرت ترمز ترمز دستی.

اعداد بزرگتر = ترمز سخت تر.
مقادیر: 0.o یا بالاتر.
FSTEERINGLOCK
این محاسبه بازی زاویه چرخش فرمان در حالی که در دور کامل است را چند برابر می کند.
قفل فرمان ارتباط مستقیمی با بیش/زیر فرمان دارد.

مقادیر:
0.01 و بالاتر.

مقادیر بین 0.1 - 0.2 یک فاصله بین دو محور طولانی را شبیه سازی می کند .
مقادیر حدود 0.75 و بالاتر بسیار سریع تبدیل می شوند. مقادیر بالاتر باعث می شود خودرو به راحتی به بیرون بچرخد.
1.3. کشش چرخ
ویژگی های زیر نحوه رفتار خودرو در هنگام پیچیدن، شتاب گیری و کاهش سرعت و غیره را توصیف می کند.

FTRACTIONCURVEMAX
دستگیره گوشه ای وسیله نقلیه به عنوان ضریب اصطکاک سطح لاستیک.

fTractionCurveMin
گرفتن شتاب/ترمز وسیله نقلیه به عنوان چندبرابر اصطکاک سطح تایر.

FTRACTIONCURVELATERAL
شکل منحنی کشش جانبی.

FTRACTIONSPRINGDELTAMAX
این مقدار تعیین می کند که خودرو در چه فاصله ای از سطح زمین کشش را از دست می دهد.

FLOWSPEEDTRACTIONLOSSMULT
چقدر کشش در سرعت کم کاهش می یابد.

0.0 به معنای کشش معمولی است. این عمدتا بر فرسودگی خودرو هنگام فشار دادن گاز (W/UP) تأثیر می گذارد.
کاهش ارزش باعث فرسودگی کمتر، لغزش کمتر در شروع می شود.
ارزش بالاتر باعث فرسودگی بیشتر می شود.
FCAMBERSTIFFNESS
این مقدار در هنگام دریفت کردن، چسبندگی خودرو را تغییر می دهد .

بیش از 0 باعث می شود که ماشین در همان زاویه ای که شما در حال حرکت هستید بلغزد.
کمتر از 0 باعث فرمان بیش از حد خودروی شما
می شود تغییر آن برای چسبندگی توصیه نمی شود.
FTRACTIONBIASFRONT
توزیع کشش از جلو به عقب را تعیین می کند.

مقادیر: 0.01 - 0.99.

0.01 = فقط محور عقب دارای کشش است.
0.99 = فقط محور جلو دارای کشش است.
0.5 = هر دو محور کشش مساوی دارند.
وارد کردن مقدار 0.0 یا 1.0 باعث می شود که وسیله نقلیه کشش نداشته باشد.
FTRACTIONLOSSMULT
بر میزان تغییر چسبندگی هنگام رانندگی روی آسفالت و گل تأثیر می گذارد

مقادیر بالاتر باعث می شود خودرو کمتر پاسخگو باشد و مستعد سر خوردن باشد.
1.4. تعلیق
ویژگی های زیر سیستم فنرها و کمک فنرهای خودرو را مشخص می کند.

FSUSPENSIONFORCE
روی قوی بودن سیستم تعلیق تأثیر می گذارد.
1/(نیرو × چرخ ها) = حد پایین تر برای نیروی صفر در امتداد کامل.

FSUSPENSIONCOMPDAMP
میرایی در طول فشرده سازی استرات.

مقادیر بزرگتر = سفت تر.
FSUSPENSIONREBOUNDDAMP
میرایی در حین ریباند استرات.

مقادیر بزرگتر = سفت تر.
این لعنتی برای چیست؟ این و این و شاید این را بخوانید .

FSUSPENSIONUPPERLIMIT
و
FSUSPENSIONLOWERLIMIT
محدودیت بصری برای اینکه چرخ ها چقدر می توانند از موقعیت اصلی به سمت بالا/پایین حرکت کنند.

FSUSPENSIONRAISE
مقداری که سیستم تعلیق بدنه را از روی چرخ ها بلند می کند.

FSUSPENSIONBIASFRONT
این مقدار تعیین می کند که کدام سیستم تعلیق قوی تر است ، جلو یا عقب.

اگر مقدار بالاتر از 0.50 باشد، جلو سفت تر است، در پایین تر، عقب سفت تر است.
FANTIROLLBARFORCE
اعداد بزرگتر = چرخش بدن کمتر.

FANTIROLLBARBIASFRONT
تعصب بین جلو و عقب برای میله ضد رول

0 = جلو
1 = عقب
FROLLCENTREHEIGHTFRONT
اعداد بزرگتر = واژگونی کمتر.
مقادیر: (توصیه می شود) -0.15 تا 0.15.

FROLLCENTREHEIGHTREAR
این مقدار انتقال وزن را در طول شتاب بین جلو و عقب تغییر می دهد. ارزش مثبت بالا می تواند ماشین شما را قادر به انجام چرخش کند.

اعداد بزرگتر = واژگونی کمتر.
مقادیر: (توصیه می شود) -0.15 تا 0.15.

1.5 آسیب.
FCOLLISIONDAMAGEMULT
محاسبه بازی در مورد آسیب به وسیله نقلیه در اثر برخورد را ضرب می کند.

FWEAPONDAMAGEMULT
محاسبه بازی در مورد آسیب به وسیله نقلیه توسط سلاح ها را ضرب می کند.

FDEFORMATIONDAMAGEMULT
محاسبه آسیب تغییر شکل بازی را چند برابر می کند.

fEngineDamageMult
محاسبه بازی در مورد آسیب به موتور را چند برابر می کند که باعث انفجار یا خرابی موتور می شود.

مقادیر برای چهار بالا: 0.0 - 10.0.
fPetrolTankVolume

مقدار بنزینی که پس از آسیب رساندن به باک خودرو نشت می کند.

FOilVolume

مقدار روغن.
