char __fastcall sub_140001180(_BYTE *a1)
{
  int i; // [rsp+0h] [rbp-18h]

  if ( *a1 != 95 ) // ?(ascii)
    return 0;
  for ( i = 1; (unsigned __int64)i < 0x1C; ++i )
  {
    if ( __ROL1__(a1[i], __popcnt((unsigned __int8)a1[i - 1]) & 7) != byte_140003288[i] )
      return 0;
  }
  return 1;
}


/*
.rdata:0000000140003288 ; _BYTE byte_140003288[28]
.rdata:0000000140003288 byte_140003288  db 0, 0D7h, 5Ah, 2 dup(0E6h), 0ACh, 27h, 33h, 37h, 8Eh
.rdata:0000000140003288                                         ; DATA XREF: sub_140001180+79↑o
.rdata:0000000140003292                 db 13h, 73h, 0C6h, 0F5h, 0D7h, 52h, 73h, 8Eh, 27h, 96h
.rdata:000000014000329C                 db 0E6h, 0A6h, 96h, 36h, 37h, 0EBh, 0D7h, 0
*/

// @ byte_140003288[28] = {00 D7 5A E6 E6 AC 27 33 37 8E 13 73 C6 F5 D7 52 73 8E 27 96 E6 A6 96 36 37 EB D7 00}

//@ __ROL1__(uint8_t value, int count): value를 count 값 만큼 left rotation 해주기
//@ __popcnt: 2진수에서 1인 bit 수를 count 해주는 함수: 
//  @ EX) 9: 1001 -> __popcnt(1001) = 2]
