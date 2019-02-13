local data = {
  { year = 2006, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2006, month =  1, day =  2, kind = "休日", name = "振替休日" };
  { year = 2006, month =  1, day =  9, kind = "祝日", name = "成人の日" };
  { year = 2006, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2006, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2006, month =  4, day = 29, kind = "祝日", name = "みどりの日" };
  { year = 2006, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2006, month =  5, day =  4, kind = "休日", name = "国民の休日" };
  { year = 2006, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2006, month =  7, day = 17, kind = "祝日", name = "海の日" };
  { year = 2006, month =  9, day = 18, kind = "祝日", name = "敬老の日" };
  { year = 2006, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2006, month = 10, day =  9, kind = "祝日", name = "体育の日" };
  { year = 2006, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2006, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2006, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2007, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2007, month =  1, day =  8, kind = "祝日", name = "成人の日" };
  { year = 2007, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2007, month =  2, day = 12, kind = "休日", name = "振替休日" };
  { year = 2007, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2007, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2007, month =  4, day = 30, kind = "休日", name = "振替休日" };
  { year = 2007, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2007, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2007, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2007, month =  7, day = 16, kind = "祝日", name = "海の日" };
  { year = 2007, month =  9, day = 17, kind = "祝日", name = "敬老の日" };
  { year = 2007, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2007, month =  9, day = 24, kind = "休日", name = "振替休日" };
  { year = 2007, month = 10, day =  8, kind = "祝日", name = "体育の日" };
  { year = 2007, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2007, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2007, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2007, month = 12, day = 24, kind = "休日", name = "振替休日" };
  { year = 2008, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2008, month =  1, day = 14, kind = "祝日", name = "成人の日" };
  { year = 2008, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2008, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2008, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2008, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2008, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2008, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2008, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2008, month =  7, day = 21, kind = "祝日", name = "海の日" };
  { year = 2008, month =  9, day = 15, kind = "祝日", name = "敬老の日" };
  { year = 2008, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2008, month = 10, day = 13, kind = "祝日", name = "体育の日" };
  { year = 2008, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2008, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2008, month = 11, day = 24, kind = "休日", name = "振替休日" };
  { year = 2008, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2009, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2009, month =  1, day = 12, kind = "祝日", name = "成人の日" };
  { year = 2009, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2009, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2009, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2009, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2009, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2009, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2009, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2009, month =  7, day = 20, kind = "祝日", name = "海の日" };
  { year = 2009, month =  9, day = 21, kind = "祝日", name = "敬老の日" };
  { year = 2009, month =  9, day = 22, kind = "休日", name = "国民の休日" };
  { year = 2009, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2009, month = 10, day = 12, kind = "祝日", name = "体育の日" };
  { year = 2009, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2009, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2009, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2010, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2010, month =  1, day = 11, kind = "祝日", name = "成人の日" };
  { year = 2010, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2010, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2010, month =  3, day = 22, kind = "休日", name = "振替休日" };
  { year = 2010, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2010, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2010, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2010, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2010, month =  7, day = 19, kind = "祝日", name = "海の日" };
  { year = 2010, month =  9, day = 20, kind = "祝日", name = "敬老の日" };
  { year = 2010, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2010, month = 10, day = 11, kind = "祝日", name = "体育の日" };
  { year = 2010, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2010, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2010, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2011, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2011, month =  1, day = 10, kind = "祝日", name = "成人の日" };
  { year = 2011, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2011, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2011, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2011, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2011, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2011, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2011, month =  7, day = 18, kind = "祝日", name = "海の日" };
  { year = 2011, month =  9, day = 19, kind = "祝日", name = "敬老の日" };
  { year = 2011, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2011, month = 10, day = 10, kind = "祝日", name = "体育の日" };
  { year = 2011, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2011, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2011, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2012, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2012, month =  1, day =  2, kind = "休日", name = "振替休日" };
  { year = 2012, month =  1, day =  9, kind = "祝日", name = "成人の日" };
  { year = 2012, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2012, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2012, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2012, month =  4, day = 30, kind = "休日", name = "振替休日" };
  { year = 2012, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2012, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2012, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2012, month =  7, day = 16, kind = "祝日", name = "海の日" };
  { year = 2012, month =  9, day = 17, kind = "祝日", name = "敬老の日" };
  { year = 2012, month =  9, day = 22, kind = "祝日", name = "秋分の日" };
  { year = 2012, month = 10, day =  8, kind = "祝日", name = "体育の日" };
  { year = 2012, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2012, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2012, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2012, month = 12, day = 24, kind = "休日", name = "振替休日" };
  { year = 2013, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2013, month =  1, day = 14, kind = "祝日", name = "成人の日" };
  { year = 2013, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2013, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2013, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2013, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2013, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2013, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2013, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2013, month =  7, day = 15, kind = "祝日", name = "海の日" };
  { year = 2013, month =  9, day = 16, kind = "祝日", name = "敬老の日" };
  { year = 2013, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2013, month = 10, day = 14, kind = "祝日", name = "体育の日" };
  { year = 2013, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2013, month = 11, day =  4, kind = "休日", name = "振替休日" };
  { year = 2013, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2013, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2014, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2014, month =  1, day = 13, kind = "祝日", name = "成人の日" };
  { year = 2014, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2014, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2014, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2014, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2014, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2014, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2014, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2014, month =  7, day = 21, kind = "祝日", name = "海の日" };
  { year = 2014, month =  9, day = 15, kind = "祝日", name = "敬老の日" };
  { year = 2014, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2014, month = 10, day = 13, kind = "祝日", name = "体育の日" };
  { year = 2014, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2014, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2014, month = 11, day = 24, kind = "休日", name = "振替休日" };
  { year = 2014, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2015, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2015, month =  1, day = 12, kind = "祝日", name = "成人の日" };
  { year = 2015, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2015, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2015, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2015, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2015, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2015, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2015, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2015, month =  7, day = 20, kind = "祝日", name = "海の日" };
  { year = 2015, month =  9, day = 21, kind = "祝日", name = "敬老の日" };
  { year = 2015, month =  9, day = 22, kind = "休日", name = "国民の休日" };
  { year = 2015, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2015, month = 10, day = 12, kind = "祝日", name = "体育の日" };
  { year = 2015, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2015, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2015, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2016, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2016, month =  1, day = 11, kind = "祝日", name = "成人の日" };
  { year = 2016, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2016, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2016, month =  3, day = 21, kind = "休日", name = "振替休日" };
  { year = 2016, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2016, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2016, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2016, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2016, month =  7, day = 18, kind = "祝日", name = "海の日" };
  { year = 2016, month =  8, day = 11, kind = "祝日", name = "山の日" };
  { year = 2016, month =  9, day = 19, kind = "祝日", name = "敬老の日" };
  { year = 2016, month =  9, day = 22, kind = "祝日", name = "秋分の日" };
  { year = 2016, month = 10, day = 10, kind = "祝日", name = "体育の日" };
  { year = 2016, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2016, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2016, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2017, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2017, month =  1, day =  2, kind = "休日", name = "振替休日" };
  { year = 2017, month =  1, day =  9, kind = "祝日", name = "成人の日" };
  { year = 2017, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2017, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2017, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2017, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2017, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2017, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2017, month =  7, day = 17, kind = "祝日", name = "海の日" };
  { year = 2017, month =  8, day = 11, kind = "祝日", name = "山の日" };
  { year = 2017, month =  9, day = 18, kind = "祝日", name = "敬老の日" };
  { year = 2017, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2017, month = 10, day =  9, kind = "祝日", name = "体育の日" };
  { year = 2017, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2017, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2017, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2018, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2018, month =  1, day =  8, kind = "祝日", name = "成人の日" };
  { year = 2018, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2018, month =  2, day = 12, kind = "休日", name = "振替休日" };
  { year = 2018, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2018, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2018, month =  4, day = 30, kind = "休日", name = "振替休日" };
  { year = 2018, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2018, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2018, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2018, month =  7, day = 16, kind = "祝日", name = "海の日" };
  { year = 2018, month =  8, day = 11, kind = "祝日", name = "山の日" };
  { year = 2018, month =  9, day = 17, kind = "祝日", name = "敬老の日" };
  { year = 2018, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2018, month =  9, day = 24, kind = "休日", name = "振替休日" };
  { year = 2018, month = 10, day =  8, kind = "祝日", name = "体育の日" };
  { year = 2018, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2018, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2018, month = 12, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2018, month = 12, day = 24, kind = "休日", name = "振替休日" };
  { year = 2019, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2019, month =  1, day = 14, kind = "祝日", name = "成人の日" };
  { year = 2019, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2019, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2019, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2019, month =  4, day = 30, kind = "休日", name = "国民の休日" };
  { year = 2019, month =  5, day =  1, kind = "祝日", name = "休日（祝日扱い）" };
  { year = 2019, month =  5, day =  2, kind = "休日", name = "国民の休日" };
  { year = 2019, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2019, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2019, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2019, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2019, month =  7, day = 15, kind = "祝日", name = "海の日" };
  { year = 2019, month =  8, day = 11, kind = "祝日", name = "山の日" };
  { year = 2019, month =  8, day = 12, kind = "休日", name = "振替休日" };
  { year = 2019, month =  9, day = 16, kind = "祝日", name = "敬老の日" };
  { year = 2019, month =  9, day = 23, kind = "祝日", name = "秋分の日" };
  { year = 2019, month = 10, day = 14, kind = "祝日", name = "体育の日" };
  { year = 2019, month = 10, day = 22, kind = "祝日", name = "休日（祝日扱い）" };
  { year = 2019, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2019, month = 11, day =  4, kind = "休日", name = "振替休日" };
  { year = 2019, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
  { year = 2020, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2020, month =  1, day = 13, kind = "祝日", name = "成人の日" };
  { year = 2020, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2020, month =  2, day = 23, kind = "祝日", name = "天皇誕生日" };
  { year = 2020, month =  2, day = 24, kind = "休日", name = "振替休日" };
  { year = 2020, month =  3, day = 20, kind = "祝日", name = "春分の日" };
  { year = 2020, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
  { year = 2020, month =  5, day =  3, kind = "祝日", name = "憲法記念日" };
  { year = 2020, month =  5, day =  4, kind = "祝日", name = "みどりの日" };
  { year = 2020, month =  5, day =  5, kind = "祝日", name = "こどもの日" };
  { year = 2020, month =  5, day =  6, kind = "休日", name = "振替休日" };
  { year = 2020, month =  7, day = 23, kind = "祝日", name = "海の日" };
  { year = 2020, month =  7, day = 24, kind = "祝日", name = "スポーツの日" };
  { year = 2020, month =  8, day = 10, kind = "祝日", name = "山の日" };
  { year = 2020, month =  9, day = 21, kind = "祝日", name = "敬老の日" };
  { year = 2020, month =  9, day = 22, kind = "祝日", name = "秋分の日" };
  { year = 2020, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2020, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
}

local tree = {
  [2006] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2007] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2008] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2009] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2010] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2011] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2012] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2013] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2014] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2015] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2016] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2017] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2018] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2019] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
  [2020] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
}
tree[2006][ 1][ 1] = data[  1]
tree[2006][ 1][ 2] = data[  2]
tree[2006][ 1][ 9] = data[  3]
tree[2006][ 2][11] = data[  4]
tree[2006][ 3][21] = data[  5]
tree[2006][ 4][29] = data[  6]
tree[2006][ 5][ 3] = data[  7]
tree[2006][ 5][ 4] = data[  8]
tree[2006][ 5][ 5] = data[  9]
tree[2006][ 7][17] = data[ 10]
tree[2006][ 9][18] = data[ 11]
tree[2006][ 9][23] = data[ 12]
tree[2006][10][ 9] = data[ 13]
tree[2006][11][ 3] = data[ 14]
tree[2006][11][23] = data[ 15]
tree[2006][12][23] = data[ 16]
tree[2007][ 1][ 1] = data[ 17]
tree[2007][ 1][ 8] = data[ 18]
tree[2007][ 2][11] = data[ 19]
tree[2007][ 2][12] = data[ 20]
tree[2007][ 3][21] = data[ 21]
tree[2007][ 4][29] = data[ 22]
tree[2007][ 4][30] = data[ 23]
tree[2007][ 5][ 3] = data[ 24]
tree[2007][ 5][ 4] = data[ 25]
tree[2007][ 5][ 5] = data[ 26]
tree[2007][ 7][16] = data[ 27]
tree[2007][ 9][17] = data[ 28]
tree[2007][ 9][23] = data[ 29]
tree[2007][ 9][24] = data[ 30]
tree[2007][10][ 8] = data[ 31]
tree[2007][11][ 3] = data[ 32]
tree[2007][11][23] = data[ 33]
tree[2007][12][23] = data[ 34]
tree[2007][12][24] = data[ 35]
tree[2008][ 1][ 1] = data[ 36]
tree[2008][ 1][14] = data[ 37]
tree[2008][ 2][11] = data[ 38]
tree[2008][ 3][20] = data[ 39]
tree[2008][ 4][29] = data[ 40]
tree[2008][ 5][ 3] = data[ 41]
tree[2008][ 5][ 4] = data[ 42]
tree[2008][ 5][ 5] = data[ 43]
tree[2008][ 5][ 6] = data[ 44]
tree[2008][ 7][21] = data[ 45]
tree[2008][ 9][15] = data[ 46]
tree[2008][ 9][23] = data[ 47]
tree[2008][10][13] = data[ 48]
tree[2008][11][ 3] = data[ 49]
tree[2008][11][23] = data[ 50]
tree[2008][11][24] = data[ 51]
tree[2008][12][23] = data[ 52]
tree[2009][ 1][ 1] = data[ 53]
tree[2009][ 1][12] = data[ 54]
tree[2009][ 2][11] = data[ 55]
tree[2009][ 3][20] = data[ 56]
tree[2009][ 4][29] = data[ 57]
tree[2009][ 5][ 3] = data[ 58]
tree[2009][ 5][ 4] = data[ 59]
tree[2009][ 5][ 5] = data[ 60]
tree[2009][ 5][ 6] = data[ 61]
tree[2009][ 7][20] = data[ 62]
tree[2009][ 9][21] = data[ 63]
tree[2009][ 9][22] = data[ 64]
tree[2009][ 9][23] = data[ 65]
tree[2009][10][12] = data[ 66]
tree[2009][11][ 3] = data[ 67]
tree[2009][11][23] = data[ 68]
tree[2009][12][23] = data[ 69]
tree[2010][ 1][ 1] = data[ 70]
tree[2010][ 1][11] = data[ 71]
tree[2010][ 2][11] = data[ 72]
tree[2010][ 3][21] = data[ 73]
tree[2010][ 3][22] = data[ 74]
tree[2010][ 4][29] = data[ 75]
tree[2010][ 5][ 3] = data[ 76]
tree[2010][ 5][ 4] = data[ 77]
tree[2010][ 5][ 5] = data[ 78]
tree[2010][ 7][19] = data[ 79]
tree[2010][ 9][20] = data[ 80]
tree[2010][ 9][23] = data[ 81]
tree[2010][10][11] = data[ 82]
tree[2010][11][ 3] = data[ 83]
tree[2010][11][23] = data[ 84]
tree[2010][12][23] = data[ 85]
tree[2011][ 1][ 1] = data[ 86]
tree[2011][ 1][10] = data[ 87]
tree[2011][ 2][11] = data[ 88]
tree[2011][ 3][21] = data[ 89]
tree[2011][ 4][29] = data[ 90]
tree[2011][ 5][ 3] = data[ 91]
tree[2011][ 5][ 4] = data[ 92]
tree[2011][ 5][ 5] = data[ 93]
tree[2011][ 7][18] = data[ 94]
tree[2011][ 9][19] = data[ 95]
tree[2011][ 9][23] = data[ 96]
tree[2011][10][10] = data[ 97]
tree[2011][11][ 3] = data[ 98]
tree[2011][11][23] = data[ 99]
tree[2011][12][23] = data[100]
tree[2012][ 1][ 1] = data[101]
tree[2012][ 1][ 2] = data[102]
tree[2012][ 1][ 9] = data[103]
tree[2012][ 2][11] = data[104]
tree[2012][ 3][20] = data[105]
tree[2012][ 4][29] = data[106]
tree[2012][ 4][30] = data[107]
tree[2012][ 5][ 3] = data[108]
tree[2012][ 5][ 4] = data[109]
tree[2012][ 5][ 5] = data[110]
tree[2012][ 7][16] = data[111]
tree[2012][ 9][17] = data[112]
tree[2012][ 9][22] = data[113]
tree[2012][10][ 8] = data[114]
tree[2012][11][ 3] = data[115]
tree[2012][11][23] = data[116]
tree[2012][12][23] = data[117]
tree[2012][12][24] = data[118]
tree[2013][ 1][ 1] = data[119]
tree[2013][ 1][14] = data[120]
tree[2013][ 2][11] = data[121]
tree[2013][ 3][20] = data[122]
tree[2013][ 4][29] = data[123]
tree[2013][ 5][ 3] = data[124]
tree[2013][ 5][ 4] = data[125]
tree[2013][ 5][ 5] = data[126]
tree[2013][ 5][ 6] = data[127]
tree[2013][ 7][15] = data[128]
tree[2013][ 9][16] = data[129]
tree[2013][ 9][23] = data[130]
tree[2013][10][14] = data[131]
tree[2013][11][ 3] = data[132]
tree[2013][11][ 4] = data[133]
tree[2013][11][23] = data[134]
tree[2013][12][23] = data[135]
tree[2014][ 1][ 1] = data[136]
tree[2014][ 1][13] = data[137]
tree[2014][ 2][11] = data[138]
tree[2014][ 3][21] = data[139]
tree[2014][ 4][29] = data[140]
tree[2014][ 5][ 3] = data[141]
tree[2014][ 5][ 4] = data[142]
tree[2014][ 5][ 5] = data[143]
tree[2014][ 5][ 6] = data[144]
tree[2014][ 7][21] = data[145]
tree[2014][ 9][15] = data[146]
tree[2014][ 9][23] = data[147]
tree[2014][10][13] = data[148]
tree[2014][11][ 3] = data[149]
tree[2014][11][23] = data[150]
tree[2014][11][24] = data[151]
tree[2014][12][23] = data[152]
tree[2015][ 1][ 1] = data[153]
tree[2015][ 1][12] = data[154]
tree[2015][ 2][11] = data[155]
tree[2015][ 3][21] = data[156]
tree[2015][ 4][29] = data[157]
tree[2015][ 5][ 3] = data[158]
tree[2015][ 5][ 4] = data[159]
tree[2015][ 5][ 5] = data[160]
tree[2015][ 5][ 6] = data[161]
tree[2015][ 7][20] = data[162]
tree[2015][ 9][21] = data[163]
tree[2015][ 9][22] = data[164]
tree[2015][ 9][23] = data[165]
tree[2015][10][12] = data[166]
tree[2015][11][ 3] = data[167]
tree[2015][11][23] = data[168]
tree[2015][12][23] = data[169]
tree[2016][ 1][ 1] = data[170]
tree[2016][ 1][11] = data[171]
tree[2016][ 2][11] = data[172]
tree[2016][ 3][20] = data[173]
tree[2016][ 3][21] = data[174]
tree[2016][ 4][29] = data[175]
tree[2016][ 5][ 3] = data[176]
tree[2016][ 5][ 4] = data[177]
tree[2016][ 5][ 5] = data[178]
tree[2016][ 7][18] = data[179]
tree[2016][ 8][11] = data[180]
tree[2016][ 9][19] = data[181]
tree[2016][ 9][22] = data[182]
tree[2016][10][10] = data[183]
tree[2016][11][ 3] = data[184]
tree[2016][11][23] = data[185]
tree[2016][12][23] = data[186]
tree[2017][ 1][ 1] = data[187]
tree[2017][ 1][ 2] = data[188]
tree[2017][ 1][ 9] = data[189]
tree[2017][ 2][11] = data[190]
tree[2017][ 3][20] = data[191]
tree[2017][ 4][29] = data[192]
tree[2017][ 5][ 3] = data[193]
tree[2017][ 5][ 4] = data[194]
tree[2017][ 5][ 5] = data[195]
tree[2017][ 7][17] = data[196]
tree[2017][ 8][11] = data[197]
tree[2017][ 9][18] = data[198]
tree[2017][ 9][23] = data[199]
tree[2017][10][ 9] = data[200]
tree[2017][11][ 3] = data[201]
tree[2017][11][23] = data[202]
tree[2017][12][23] = data[203]
tree[2018][ 1][ 1] = data[204]
tree[2018][ 1][ 8] = data[205]
tree[2018][ 2][11] = data[206]
tree[2018][ 2][12] = data[207]
tree[2018][ 3][21] = data[208]
tree[2018][ 4][29] = data[209]
tree[2018][ 4][30] = data[210]
tree[2018][ 5][ 3] = data[211]
tree[2018][ 5][ 4] = data[212]
tree[2018][ 5][ 5] = data[213]
tree[2018][ 7][16] = data[214]
tree[2018][ 8][11] = data[215]
tree[2018][ 9][17] = data[216]
tree[2018][ 9][23] = data[217]
tree[2018][ 9][24] = data[218]
tree[2018][10][ 8] = data[219]
tree[2018][11][ 3] = data[220]
tree[2018][11][23] = data[221]
tree[2018][12][23] = data[222]
tree[2018][12][24] = data[223]
tree[2019][ 1][ 1] = data[224]
tree[2019][ 1][14] = data[225]
tree[2019][ 2][11] = data[226]
tree[2019][ 3][21] = data[227]
tree[2019][ 4][29] = data[228]
tree[2019][ 4][30] = data[229]
tree[2019][ 5][ 1] = data[230]
tree[2019][ 5][ 2] = data[231]
tree[2019][ 5][ 3] = data[232]
tree[2019][ 5][ 4] = data[233]
tree[2019][ 5][ 5] = data[234]
tree[2019][ 5][ 6] = data[235]
tree[2019][ 7][15] = data[236]
tree[2019][ 8][11] = data[237]
tree[2019][ 8][12] = data[238]
tree[2019][ 9][16] = data[239]
tree[2019][ 9][23] = data[240]
tree[2019][10][14] = data[241]
tree[2019][10][22] = data[242]
tree[2019][11][ 3] = data[243]
tree[2019][11][ 4] = data[244]
tree[2019][11][23] = data[245]
tree[2020][ 1][ 1] = data[246]
tree[2020][ 1][13] = data[247]
tree[2020][ 2][11] = data[248]
tree[2020][ 2][23] = data[249]
tree[2020][ 2][24] = data[250]
tree[2020][ 3][20] = data[251]
tree[2020][ 4][29] = data[252]
tree[2020][ 5][ 3] = data[253]
tree[2020][ 5][ 4] = data[254]
tree[2020][ 5][ 5] = data[255]
tree[2020][ 5][ 6] = data[256]
tree[2020][ 7][23] = data[257]
tree[2020][ 7][24] = data[258]
tree[2020][ 8][10] = data[259]
tree[2020][ 9][21] = data[260]
tree[2020][ 9][22] = data[261]
tree[2020][11][ 3] = data[262]
tree[2020][11][23] = data[263]

return {
  min_year = 2006;
  max_year = 2020;
  data = data;
  tree = tree;
}
