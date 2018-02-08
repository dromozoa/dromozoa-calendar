local items = {
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
}

return {
  {
    [1] = items[1];
    [14] = items[2];
  };
  { [11] = items[3] };
  { [20] = items[4] };
  { [29] = items[5] };
  {
    [3] = items[6];
    [4] = items[7];
    [5] = items[8];
    [6] = items[9];
  };
  {};
  { [21] = items[10] };
  {};
  {
    [15] = items[11];
    [23] = items[12];
  };
  { [13] = items[13] };
  {
    [3] = items[14];
    [23] = items[15];
    [24] = items[16];
  };
  { [23] = items[17] };
}
