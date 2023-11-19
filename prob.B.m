int __fastcall main(int argc, const char **argv, const char **envp)
{
  __int64 v3; // rdx
  __int64 v4; // r8
  char v6[256]; // [rsp+20h] [rbp-118h] BYREF

  memset(v6, 0, sizeof(v6));
  sub_140001070("Input : ", argv, envp); // printf
  sub_140001120("%255s", v6); // 입력값을 받아 v6에 저장하여 비교진행, // scanf
  if ( (unsigned __int8)sub_140001180(v6) ) // 비교 진행
    sub_140001070("Correct! Flag is DH{%s}\n", v6); // printf
  else
    sub_140001070("Wrong...\n", v3, v4); // printf
  return 0;
}

// @ sub_140001070 : printf
// @ sub_140001120 : scanf
// @ sub_140001180 : 입력값과 비교 진행하는 함수