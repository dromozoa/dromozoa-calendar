local items = {
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
}

return {
  {
    [1] = items[1];
    [8] = items[2];
  };
  {
    [11] = items[3];
    [12] = items[4];
  };
  { [21] = items[5] };
  {
    [29] = items[6];
    [30] = items[7];
  };
  {
    [3] = items[8];
    [4] = items[9];
    [5] = items[10];
  };
  {};
  { [16] = items[11] };
  { [11] = items[12] };
  {
    [17] = items[13];
    [23] = items[14];
    [24] = items[15];
  };
  { [8] = items[16] };
  {
    [3] = items[17];
    [23] = items[18];
  };
  {
    [23] = items[19];
    [24] = items[20];
  };
}
