local items = {
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
}

return {
  {
    [1] = items[1];
    [10] = items[2];
  };
  { [11] = items[3] };
  { [21] = items[4] };
  { [29] = items[5] };
  {
    [3] = items[6];
    [4] = items[7];
    [5] = items[8];
  };
  {};
  { [18] = items[9] };
  {};
  {
    [19] = items[10];
    [23] = items[11];
  };
  { [10] = items[12] };
  {
    [3] = items[13];
    [23] = items[14];
  };
  { [23] = items[15] };
}
