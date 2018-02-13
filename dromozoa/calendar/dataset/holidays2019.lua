local data = {
  { year = 2019, month =  1, day =  1, kind = "祝日", name = "元日" };
  { year = 2019, month =  1, day = 14, kind = "祝日", name = "成人の日" };
  { year = 2019, month =  2, day = 11, kind = "祝日", name = "建国記念の日" };
  { year = 2019, month =  3, day = 21, kind = "祝日", name = "春分の日" };
  { year = 2019, month =  4, day = 29, kind = "祝日", name = "昭和の日" };
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
  { year = 2019, month = 11, day =  3, kind = "祝日", name = "文化の日" };
  { year = 2019, month = 11, day =  4, kind = "休日", name = "振替休日" };
  { year = 2019, month = 11, day = 23, kind = "祝日", name = "勤労感謝の日" };
}

local tree = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} }
tree[ 1][ 1] = data[ 1]
tree[ 1][14] = data[ 2]
tree[ 2][11] = data[ 3]
tree[ 3][21] = data[ 4]
tree[ 4][29] = data[ 5]
tree[ 5][ 3] = data[ 6]
tree[ 5][ 4] = data[ 7]
tree[ 5][ 5] = data[ 8]
tree[ 5][ 6] = data[ 9]
tree[ 7][15] = data[10]
tree[ 8][11] = data[11]
tree[ 8][12] = data[12]
tree[ 9][16] = data[13]
tree[ 9][23] = data[14]
tree[10][14] = data[15]
tree[11][ 3] = data[16]
tree[11][ 4] = data[17]
tree[11][23] = data[18]
return tree
