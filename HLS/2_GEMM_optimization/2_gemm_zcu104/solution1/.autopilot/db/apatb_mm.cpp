#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.mm.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.mm.autotvout_A_0.dat"
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.mm.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.mm.autotvout_A_1.dat"
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.mm.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.mm.autotvout_A_2.dat"
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.mm.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.mm.autotvout_A_3.dat"
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.mm.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.mm.autotvout_A_4.dat"
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.mm.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.mm.autotvout_A_5.dat"
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.mm.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.mm.autotvout_A_6.dat"
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.mm.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.mm.autotvout_A_7.dat"
#define AUTOTB_TVIN_B_0_0 "../tv/cdatafile/c.mm.autotvin_B_0_0.dat"
#define AUTOTB_TVOUT_B_0_0 "../tv/cdatafile/c.mm.autotvout_B_0_0.dat"
#define AUTOTB_TVIN_B_0_1 "../tv/cdatafile/c.mm.autotvin_B_0_1.dat"
#define AUTOTB_TVOUT_B_0_1 "../tv/cdatafile/c.mm.autotvout_B_0_1.dat"
#define AUTOTB_TVIN_B_0_2 "../tv/cdatafile/c.mm.autotvin_B_0_2.dat"
#define AUTOTB_TVOUT_B_0_2 "../tv/cdatafile/c.mm.autotvout_B_0_2.dat"
#define AUTOTB_TVIN_B_0_3 "../tv/cdatafile/c.mm.autotvin_B_0_3.dat"
#define AUTOTB_TVOUT_B_0_3 "../tv/cdatafile/c.mm.autotvout_B_0_3.dat"
#define AUTOTB_TVIN_B_0_4 "../tv/cdatafile/c.mm.autotvin_B_0_4.dat"
#define AUTOTB_TVOUT_B_0_4 "../tv/cdatafile/c.mm.autotvout_B_0_4.dat"
#define AUTOTB_TVIN_B_0_5 "../tv/cdatafile/c.mm.autotvin_B_0_5.dat"
#define AUTOTB_TVOUT_B_0_5 "../tv/cdatafile/c.mm.autotvout_B_0_5.dat"
#define AUTOTB_TVIN_B_0_6 "../tv/cdatafile/c.mm.autotvin_B_0_6.dat"
#define AUTOTB_TVOUT_B_0_6 "../tv/cdatafile/c.mm.autotvout_B_0_6.dat"
#define AUTOTB_TVIN_B_0_7 "../tv/cdatafile/c.mm.autotvin_B_0_7.dat"
#define AUTOTB_TVOUT_B_0_7 "../tv/cdatafile/c.mm.autotvout_B_0_7.dat"
#define AUTOTB_TVIN_B_1_0 "../tv/cdatafile/c.mm.autotvin_B_1_0.dat"
#define AUTOTB_TVOUT_B_1_0 "../tv/cdatafile/c.mm.autotvout_B_1_0.dat"
#define AUTOTB_TVIN_B_1_1 "../tv/cdatafile/c.mm.autotvin_B_1_1.dat"
#define AUTOTB_TVOUT_B_1_1 "../tv/cdatafile/c.mm.autotvout_B_1_1.dat"
#define AUTOTB_TVIN_B_1_2 "../tv/cdatafile/c.mm.autotvin_B_1_2.dat"
#define AUTOTB_TVOUT_B_1_2 "../tv/cdatafile/c.mm.autotvout_B_1_2.dat"
#define AUTOTB_TVIN_B_1_3 "../tv/cdatafile/c.mm.autotvin_B_1_3.dat"
#define AUTOTB_TVOUT_B_1_3 "../tv/cdatafile/c.mm.autotvout_B_1_3.dat"
#define AUTOTB_TVIN_B_1_4 "../tv/cdatafile/c.mm.autotvin_B_1_4.dat"
#define AUTOTB_TVOUT_B_1_4 "../tv/cdatafile/c.mm.autotvout_B_1_4.dat"
#define AUTOTB_TVIN_B_1_5 "../tv/cdatafile/c.mm.autotvin_B_1_5.dat"
#define AUTOTB_TVOUT_B_1_5 "../tv/cdatafile/c.mm.autotvout_B_1_5.dat"
#define AUTOTB_TVIN_B_1_6 "../tv/cdatafile/c.mm.autotvin_B_1_6.dat"
#define AUTOTB_TVOUT_B_1_6 "../tv/cdatafile/c.mm.autotvout_B_1_6.dat"
#define AUTOTB_TVIN_B_1_7 "../tv/cdatafile/c.mm.autotvin_B_1_7.dat"
#define AUTOTB_TVOUT_B_1_7 "../tv/cdatafile/c.mm.autotvout_B_1_7.dat"
#define AUTOTB_TVIN_B_2_0 "../tv/cdatafile/c.mm.autotvin_B_2_0.dat"
#define AUTOTB_TVOUT_B_2_0 "../tv/cdatafile/c.mm.autotvout_B_2_0.dat"
#define AUTOTB_TVIN_B_2_1 "../tv/cdatafile/c.mm.autotvin_B_2_1.dat"
#define AUTOTB_TVOUT_B_2_1 "../tv/cdatafile/c.mm.autotvout_B_2_1.dat"
#define AUTOTB_TVIN_B_2_2 "../tv/cdatafile/c.mm.autotvin_B_2_2.dat"
#define AUTOTB_TVOUT_B_2_2 "../tv/cdatafile/c.mm.autotvout_B_2_2.dat"
#define AUTOTB_TVIN_B_2_3 "../tv/cdatafile/c.mm.autotvin_B_2_3.dat"
#define AUTOTB_TVOUT_B_2_3 "../tv/cdatafile/c.mm.autotvout_B_2_3.dat"
#define AUTOTB_TVIN_B_2_4 "../tv/cdatafile/c.mm.autotvin_B_2_4.dat"
#define AUTOTB_TVOUT_B_2_4 "../tv/cdatafile/c.mm.autotvout_B_2_4.dat"
#define AUTOTB_TVIN_B_2_5 "../tv/cdatafile/c.mm.autotvin_B_2_5.dat"
#define AUTOTB_TVOUT_B_2_5 "../tv/cdatafile/c.mm.autotvout_B_2_5.dat"
#define AUTOTB_TVIN_B_2_6 "../tv/cdatafile/c.mm.autotvin_B_2_6.dat"
#define AUTOTB_TVOUT_B_2_6 "../tv/cdatafile/c.mm.autotvout_B_2_6.dat"
#define AUTOTB_TVIN_B_2_7 "../tv/cdatafile/c.mm.autotvin_B_2_7.dat"
#define AUTOTB_TVOUT_B_2_7 "../tv/cdatafile/c.mm.autotvout_B_2_7.dat"
#define AUTOTB_TVIN_B_3_0 "../tv/cdatafile/c.mm.autotvin_B_3_0.dat"
#define AUTOTB_TVOUT_B_3_0 "../tv/cdatafile/c.mm.autotvout_B_3_0.dat"
#define AUTOTB_TVIN_B_3_1 "../tv/cdatafile/c.mm.autotvin_B_3_1.dat"
#define AUTOTB_TVOUT_B_3_1 "../tv/cdatafile/c.mm.autotvout_B_3_1.dat"
#define AUTOTB_TVIN_B_3_2 "../tv/cdatafile/c.mm.autotvin_B_3_2.dat"
#define AUTOTB_TVOUT_B_3_2 "../tv/cdatafile/c.mm.autotvout_B_3_2.dat"
#define AUTOTB_TVIN_B_3_3 "../tv/cdatafile/c.mm.autotvin_B_3_3.dat"
#define AUTOTB_TVOUT_B_3_3 "../tv/cdatafile/c.mm.autotvout_B_3_3.dat"
#define AUTOTB_TVIN_B_3_4 "../tv/cdatafile/c.mm.autotvin_B_3_4.dat"
#define AUTOTB_TVOUT_B_3_4 "../tv/cdatafile/c.mm.autotvout_B_3_4.dat"
#define AUTOTB_TVIN_B_3_5 "../tv/cdatafile/c.mm.autotvin_B_3_5.dat"
#define AUTOTB_TVOUT_B_3_5 "../tv/cdatafile/c.mm.autotvout_B_3_5.dat"
#define AUTOTB_TVIN_B_3_6 "../tv/cdatafile/c.mm.autotvin_B_3_6.dat"
#define AUTOTB_TVOUT_B_3_6 "../tv/cdatafile/c.mm.autotvout_B_3_6.dat"
#define AUTOTB_TVIN_B_3_7 "../tv/cdatafile/c.mm.autotvin_B_3_7.dat"
#define AUTOTB_TVOUT_B_3_7 "../tv/cdatafile/c.mm.autotvout_B_3_7.dat"
#define AUTOTB_TVIN_B_4_0 "../tv/cdatafile/c.mm.autotvin_B_4_0.dat"
#define AUTOTB_TVOUT_B_4_0 "../tv/cdatafile/c.mm.autotvout_B_4_0.dat"
#define AUTOTB_TVIN_B_4_1 "../tv/cdatafile/c.mm.autotvin_B_4_1.dat"
#define AUTOTB_TVOUT_B_4_1 "../tv/cdatafile/c.mm.autotvout_B_4_1.dat"
#define AUTOTB_TVIN_B_4_2 "../tv/cdatafile/c.mm.autotvin_B_4_2.dat"
#define AUTOTB_TVOUT_B_4_2 "../tv/cdatafile/c.mm.autotvout_B_4_2.dat"
#define AUTOTB_TVIN_B_4_3 "../tv/cdatafile/c.mm.autotvin_B_4_3.dat"
#define AUTOTB_TVOUT_B_4_3 "../tv/cdatafile/c.mm.autotvout_B_4_3.dat"
#define AUTOTB_TVIN_B_4_4 "../tv/cdatafile/c.mm.autotvin_B_4_4.dat"
#define AUTOTB_TVOUT_B_4_4 "../tv/cdatafile/c.mm.autotvout_B_4_4.dat"
#define AUTOTB_TVIN_B_4_5 "../tv/cdatafile/c.mm.autotvin_B_4_5.dat"
#define AUTOTB_TVOUT_B_4_5 "../tv/cdatafile/c.mm.autotvout_B_4_5.dat"
#define AUTOTB_TVIN_B_4_6 "../tv/cdatafile/c.mm.autotvin_B_4_6.dat"
#define AUTOTB_TVOUT_B_4_6 "../tv/cdatafile/c.mm.autotvout_B_4_6.dat"
#define AUTOTB_TVIN_B_4_7 "../tv/cdatafile/c.mm.autotvin_B_4_7.dat"
#define AUTOTB_TVOUT_B_4_7 "../tv/cdatafile/c.mm.autotvout_B_4_7.dat"
#define AUTOTB_TVIN_B_5_0 "../tv/cdatafile/c.mm.autotvin_B_5_0.dat"
#define AUTOTB_TVOUT_B_5_0 "../tv/cdatafile/c.mm.autotvout_B_5_0.dat"
#define AUTOTB_TVIN_B_5_1 "../tv/cdatafile/c.mm.autotvin_B_5_1.dat"
#define AUTOTB_TVOUT_B_5_1 "../tv/cdatafile/c.mm.autotvout_B_5_1.dat"
#define AUTOTB_TVIN_B_5_2 "../tv/cdatafile/c.mm.autotvin_B_5_2.dat"
#define AUTOTB_TVOUT_B_5_2 "../tv/cdatafile/c.mm.autotvout_B_5_2.dat"
#define AUTOTB_TVIN_B_5_3 "../tv/cdatafile/c.mm.autotvin_B_5_3.dat"
#define AUTOTB_TVOUT_B_5_3 "../tv/cdatafile/c.mm.autotvout_B_5_3.dat"
#define AUTOTB_TVIN_B_5_4 "../tv/cdatafile/c.mm.autotvin_B_5_4.dat"
#define AUTOTB_TVOUT_B_5_4 "../tv/cdatafile/c.mm.autotvout_B_5_4.dat"
#define AUTOTB_TVIN_B_5_5 "../tv/cdatafile/c.mm.autotvin_B_5_5.dat"
#define AUTOTB_TVOUT_B_5_5 "../tv/cdatafile/c.mm.autotvout_B_5_5.dat"
#define AUTOTB_TVIN_B_5_6 "../tv/cdatafile/c.mm.autotvin_B_5_6.dat"
#define AUTOTB_TVOUT_B_5_6 "../tv/cdatafile/c.mm.autotvout_B_5_6.dat"
#define AUTOTB_TVIN_B_5_7 "../tv/cdatafile/c.mm.autotvin_B_5_7.dat"
#define AUTOTB_TVOUT_B_5_7 "../tv/cdatafile/c.mm.autotvout_B_5_7.dat"
#define AUTOTB_TVIN_B_6_0 "../tv/cdatafile/c.mm.autotvin_B_6_0.dat"
#define AUTOTB_TVOUT_B_6_0 "../tv/cdatafile/c.mm.autotvout_B_6_0.dat"
#define AUTOTB_TVIN_B_6_1 "../tv/cdatafile/c.mm.autotvin_B_6_1.dat"
#define AUTOTB_TVOUT_B_6_1 "../tv/cdatafile/c.mm.autotvout_B_6_1.dat"
#define AUTOTB_TVIN_B_6_2 "../tv/cdatafile/c.mm.autotvin_B_6_2.dat"
#define AUTOTB_TVOUT_B_6_2 "../tv/cdatafile/c.mm.autotvout_B_6_2.dat"
#define AUTOTB_TVIN_B_6_3 "../tv/cdatafile/c.mm.autotvin_B_6_3.dat"
#define AUTOTB_TVOUT_B_6_3 "../tv/cdatafile/c.mm.autotvout_B_6_3.dat"
#define AUTOTB_TVIN_B_6_4 "../tv/cdatafile/c.mm.autotvin_B_6_4.dat"
#define AUTOTB_TVOUT_B_6_4 "../tv/cdatafile/c.mm.autotvout_B_6_4.dat"
#define AUTOTB_TVIN_B_6_5 "../tv/cdatafile/c.mm.autotvin_B_6_5.dat"
#define AUTOTB_TVOUT_B_6_5 "../tv/cdatafile/c.mm.autotvout_B_6_5.dat"
#define AUTOTB_TVIN_B_6_6 "../tv/cdatafile/c.mm.autotvin_B_6_6.dat"
#define AUTOTB_TVOUT_B_6_6 "../tv/cdatafile/c.mm.autotvout_B_6_6.dat"
#define AUTOTB_TVIN_B_6_7 "../tv/cdatafile/c.mm.autotvin_B_6_7.dat"
#define AUTOTB_TVOUT_B_6_7 "../tv/cdatafile/c.mm.autotvout_B_6_7.dat"
#define AUTOTB_TVIN_B_7_0 "../tv/cdatafile/c.mm.autotvin_B_7_0.dat"
#define AUTOTB_TVOUT_B_7_0 "../tv/cdatafile/c.mm.autotvout_B_7_0.dat"
#define AUTOTB_TVIN_B_7_1 "../tv/cdatafile/c.mm.autotvin_B_7_1.dat"
#define AUTOTB_TVOUT_B_7_1 "../tv/cdatafile/c.mm.autotvout_B_7_1.dat"
#define AUTOTB_TVIN_B_7_2 "../tv/cdatafile/c.mm.autotvin_B_7_2.dat"
#define AUTOTB_TVOUT_B_7_2 "../tv/cdatafile/c.mm.autotvout_B_7_2.dat"
#define AUTOTB_TVIN_B_7_3 "../tv/cdatafile/c.mm.autotvin_B_7_3.dat"
#define AUTOTB_TVOUT_B_7_3 "../tv/cdatafile/c.mm.autotvout_B_7_3.dat"
#define AUTOTB_TVIN_B_7_4 "../tv/cdatafile/c.mm.autotvin_B_7_4.dat"
#define AUTOTB_TVOUT_B_7_4 "../tv/cdatafile/c.mm.autotvout_B_7_4.dat"
#define AUTOTB_TVIN_B_7_5 "../tv/cdatafile/c.mm.autotvin_B_7_5.dat"
#define AUTOTB_TVOUT_B_7_5 "../tv/cdatafile/c.mm.autotvout_B_7_5.dat"
#define AUTOTB_TVIN_B_7_6 "../tv/cdatafile/c.mm.autotvin_B_7_6.dat"
#define AUTOTB_TVOUT_B_7_6 "../tv/cdatafile/c.mm.autotvout_B_7_6.dat"
#define AUTOTB_TVIN_B_7_7 "../tv/cdatafile/c.mm.autotvin_B_7_7.dat"
#define AUTOTB_TVOUT_B_7_7 "../tv/cdatafile/c.mm.autotvout_B_7_7.dat"
#define AUTOTB_TVIN_AB_0 "../tv/cdatafile/c.mm.autotvin_AB_0.dat"
#define AUTOTB_TVOUT_AB_0 "../tv/cdatafile/c.mm.autotvout_AB_0.dat"
#define AUTOTB_TVIN_AB_1 "../tv/cdatafile/c.mm.autotvin_AB_1.dat"
#define AUTOTB_TVOUT_AB_1 "../tv/cdatafile/c.mm.autotvout_AB_1.dat"
#define AUTOTB_TVIN_AB_2 "../tv/cdatafile/c.mm.autotvin_AB_2.dat"
#define AUTOTB_TVOUT_AB_2 "../tv/cdatafile/c.mm.autotvout_AB_2.dat"
#define AUTOTB_TVIN_AB_3 "../tv/cdatafile/c.mm.autotvin_AB_3.dat"
#define AUTOTB_TVOUT_AB_3 "../tv/cdatafile/c.mm.autotvout_AB_3.dat"
#define AUTOTB_TVIN_AB_4 "../tv/cdatafile/c.mm.autotvin_AB_4.dat"
#define AUTOTB_TVOUT_AB_4 "../tv/cdatafile/c.mm.autotvout_AB_4.dat"
#define AUTOTB_TVIN_AB_5 "../tv/cdatafile/c.mm.autotvin_AB_5.dat"
#define AUTOTB_TVOUT_AB_5 "../tv/cdatafile/c.mm.autotvout_AB_5.dat"
#define AUTOTB_TVIN_AB_6 "../tv/cdatafile/c.mm.autotvin_AB_6.dat"
#define AUTOTB_TVOUT_AB_6 "../tv/cdatafile/c.mm.autotvout_AB_6.dat"
#define AUTOTB_TVIN_AB_7 "../tv/cdatafile/c.mm.autotvin_AB_7.dat"
#define AUTOTB_TVOUT_AB_7 "../tv/cdatafile/c.mm.autotvout_AB_7.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_AB_0 "../tv/rtldatafile/rtl.mm.autotvout_AB_0.dat"
#define AUTOTB_TVOUT_PC_AB_1 "../tv/rtldatafile/rtl.mm.autotvout_AB_1.dat"
#define AUTOTB_TVOUT_PC_AB_2 "../tv/rtldatafile/rtl.mm.autotvout_AB_2.dat"
#define AUTOTB_TVOUT_PC_AB_3 "../tv/rtldatafile/rtl.mm.autotvout_AB_3.dat"
#define AUTOTB_TVOUT_PC_AB_4 "../tv/rtldatafile/rtl.mm.autotvout_AB_4.dat"
#define AUTOTB_TVOUT_PC_AB_5 "../tv/rtldatafile/rtl.mm.autotvout_AB_5.dat"
#define AUTOTB_TVOUT_PC_AB_6 "../tv/rtldatafile/rtl.mm.autotvout_AB_6.dat"
#define AUTOTB_TVOUT_PC_AB_7 "../tv/rtldatafile/rtl.mm.autotvout_AB_7.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void mm_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_mm_hw(void* __xlx_apatb_param_A_0, void* __xlx_apatb_param_A_1, void* __xlx_apatb_param_A_2, void* __xlx_apatb_param_A_3, void* __xlx_apatb_param_A_4, void* __xlx_apatb_param_A_5, void* __xlx_apatb_param_A_6, void* __xlx_apatb_param_A_7, void* __xlx_apatb_param_B_0_0, void* __xlx_apatb_param_B_0_1, void* __xlx_apatb_param_B_0_2, void* __xlx_apatb_param_B_0_3, void* __xlx_apatb_param_B_0_4, void* __xlx_apatb_param_B_0_5, void* __xlx_apatb_param_B_0_6, void* __xlx_apatb_param_B_0_7, void* __xlx_apatb_param_B_1_0, void* __xlx_apatb_param_B_1_1, void* __xlx_apatb_param_B_1_2, void* __xlx_apatb_param_B_1_3, void* __xlx_apatb_param_B_1_4, void* __xlx_apatb_param_B_1_5, void* __xlx_apatb_param_B_1_6, void* __xlx_apatb_param_B_1_7, void* __xlx_apatb_param_B_2_0, void* __xlx_apatb_param_B_2_1, void* __xlx_apatb_param_B_2_2, void* __xlx_apatb_param_B_2_3, void* __xlx_apatb_param_B_2_4, void* __xlx_apatb_param_B_2_5, void* __xlx_apatb_param_B_2_6, void* __xlx_apatb_param_B_2_7, void* __xlx_apatb_param_B_3_0, void* __xlx_apatb_param_B_3_1, void* __xlx_apatb_param_B_3_2, void* __xlx_apatb_param_B_3_3, void* __xlx_apatb_param_B_3_4, void* __xlx_apatb_param_B_3_5, void* __xlx_apatb_param_B_3_6, void* __xlx_apatb_param_B_3_7, void* __xlx_apatb_param_B_4_0, void* __xlx_apatb_param_B_4_1, void* __xlx_apatb_param_B_4_2, void* __xlx_apatb_param_B_4_3, void* __xlx_apatb_param_B_4_4, void* __xlx_apatb_param_B_4_5, void* __xlx_apatb_param_B_4_6, void* __xlx_apatb_param_B_4_7, void* __xlx_apatb_param_B_5_0, void* __xlx_apatb_param_B_5_1, void* __xlx_apatb_param_B_5_2, void* __xlx_apatb_param_B_5_3, void* __xlx_apatb_param_B_5_4, void* __xlx_apatb_param_B_5_5, void* __xlx_apatb_param_B_5_6, void* __xlx_apatb_param_B_5_7, void* __xlx_apatb_param_B_6_0, void* __xlx_apatb_param_B_6_1, void* __xlx_apatb_param_B_6_2, void* __xlx_apatb_param_B_6_3, void* __xlx_apatb_param_B_6_4, void* __xlx_apatb_param_B_6_5, void* __xlx_apatb_param_B_6_6, void* __xlx_apatb_param_B_6_7, void* __xlx_apatb_param_B_7_0, void* __xlx_apatb_param_B_7_1, void* __xlx_apatb_param_B_7_2, void* __xlx_apatb_param_B_7_3, void* __xlx_apatb_param_B_7_4, void* __xlx_apatb_param_B_7_5, void* __xlx_apatb_param_B_7_6, void* __xlx_apatb_param_B_7_7, void* __xlx_apatb_param_AB_0, void* __xlx_apatb_param_AB_1, void* __xlx_apatb_param_AB_2, void* __xlx_apatb_param_AB_3, void* __xlx_apatb_param_AB_4, void* __xlx_apatb_param_AB_5, void* __xlx_apatb_param_AB_6, void* __xlx_apatb_param_AB_7)
{
  static hls::sim::Register port0 {
    .name = "B_0_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_0),
#endif
  };
  port0.param = __xlx_apatb_param_B_0_0;

  static hls::sim::Register port1 {
    .name = "B_0_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_1),
#endif
  };
  port1.param = __xlx_apatb_param_B_0_1;

  static hls::sim::Register port2 {
    .name = "B_0_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_2),
#endif
  };
  port2.param = __xlx_apatb_param_B_0_2;

  static hls::sim::Register port3 {
    .name = "B_0_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_3),
#endif
  };
  port3.param = __xlx_apatb_param_B_0_3;

  static hls::sim::Register port4 {
    .name = "B_0_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_4),
#endif
  };
  port4.param = __xlx_apatb_param_B_0_4;

  static hls::sim::Register port5 {
    .name = "B_0_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_5),
#endif
  };
  port5.param = __xlx_apatb_param_B_0_5;

  static hls::sim::Register port6 {
    .name = "B_0_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_6),
#endif
  };
  port6.param = __xlx_apatb_param_B_0_6;

  static hls::sim::Register port7 {
    .name = "B_0_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_7),
#endif
  };
  port7.param = __xlx_apatb_param_B_0_7;

  static hls::sim::Register port8 {
    .name = "B_1_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_0),
#endif
  };
  port8.param = __xlx_apatb_param_B_1_0;

  static hls::sim::Register port9 {
    .name = "B_1_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_1),
#endif
  };
  port9.param = __xlx_apatb_param_B_1_1;

  static hls::sim::Register port10 {
    .name = "B_1_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_2),
#endif
  };
  port10.param = __xlx_apatb_param_B_1_2;

  static hls::sim::Register port11 {
    .name = "B_1_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_3),
#endif
  };
  port11.param = __xlx_apatb_param_B_1_3;

  static hls::sim::Register port12 {
    .name = "B_1_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_4),
#endif
  };
  port12.param = __xlx_apatb_param_B_1_4;

  static hls::sim::Register port13 {
    .name = "B_1_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_5),
#endif
  };
  port13.param = __xlx_apatb_param_B_1_5;

  static hls::sim::Register port14 {
    .name = "B_1_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_6),
#endif
  };
  port14.param = __xlx_apatb_param_B_1_6;

  static hls::sim::Register port15 {
    .name = "B_1_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_7),
#endif
  };
  port15.param = __xlx_apatb_param_B_1_7;

  static hls::sim::Register port16 {
    .name = "B_2_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_0),
#endif
  };
  port16.param = __xlx_apatb_param_B_2_0;

  static hls::sim::Register port17 {
    .name = "B_2_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_1),
#endif
  };
  port17.param = __xlx_apatb_param_B_2_1;

  static hls::sim::Register port18 {
    .name = "B_2_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_2),
#endif
  };
  port18.param = __xlx_apatb_param_B_2_2;

  static hls::sim::Register port19 {
    .name = "B_2_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_3),
#endif
  };
  port19.param = __xlx_apatb_param_B_2_3;

  static hls::sim::Register port20 {
    .name = "B_2_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_4),
#endif
  };
  port20.param = __xlx_apatb_param_B_2_4;

  static hls::sim::Register port21 {
    .name = "B_2_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_5),
#endif
  };
  port21.param = __xlx_apatb_param_B_2_5;

  static hls::sim::Register port22 {
    .name = "B_2_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_6),
#endif
  };
  port22.param = __xlx_apatb_param_B_2_6;

  static hls::sim::Register port23 {
    .name = "B_2_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_7),
#endif
  };
  port23.param = __xlx_apatb_param_B_2_7;

  static hls::sim::Register port24 {
    .name = "B_3_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_0),
#endif
  };
  port24.param = __xlx_apatb_param_B_3_0;

  static hls::sim::Register port25 {
    .name = "B_3_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_1),
#endif
  };
  port25.param = __xlx_apatb_param_B_3_1;

  static hls::sim::Register port26 {
    .name = "B_3_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_2),
#endif
  };
  port26.param = __xlx_apatb_param_B_3_2;

  static hls::sim::Register port27 {
    .name = "B_3_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_3),
#endif
  };
  port27.param = __xlx_apatb_param_B_3_3;

  static hls::sim::Register port28 {
    .name = "B_3_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_4),
#endif
  };
  port28.param = __xlx_apatb_param_B_3_4;

  static hls::sim::Register port29 {
    .name = "B_3_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_5),
#endif
  };
  port29.param = __xlx_apatb_param_B_3_5;

  static hls::sim::Register port30 {
    .name = "B_3_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_6),
#endif
  };
  port30.param = __xlx_apatb_param_B_3_6;

  static hls::sim::Register port31 {
    .name = "B_3_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_7),
#endif
  };
  port31.param = __xlx_apatb_param_B_3_7;

  static hls::sim::Register port32 {
    .name = "B_4_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_0),
#endif
  };
  port32.param = __xlx_apatb_param_B_4_0;

  static hls::sim::Register port33 {
    .name = "B_4_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_1),
#endif
  };
  port33.param = __xlx_apatb_param_B_4_1;

  static hls::sim::Register port34 {
    .name = "B_4_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_2),
#endif
  };
  port34.param = __xlx_apatb_param_B_4_2;

  static hls::sim::Register port35 {
    .name = "B_4_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_3),
#endif
  };
  port35.param = __xlx_apatb_param_B_4_3;

  static hls::sim::Register port36 {
    .name = "B_4_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_4),
#endif
  };
  port36.param = __xlx_apatb_param_B_4_4;

  static hls::sim::Register port37 {
    .name = "B_4_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_5),
#endif
  };
  port37.param = __xlx_apatb_param_B_4_5;

  static hls::sim::Register port38 {
    .name = "B_4_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_6),
#endif
  };
  port38.param = __xlx_apatb_param_B_4_6;

  static hls::sim::Register port39 {
    .name = "B_4_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_7),
#endif
  };
  port39.param = __xlx_apatb_param_B_4_7;

  static hls::sim::Register port40 {
    .name = "B_5_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_0),
#endif
  };
  port40.param = __xlx_apatb_param_B_5_0;

  static hls::sim::Register port41 {
    .name = "B_5_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_1),
#endif
  };
  port41.param = __xlx_apatb_param_B_5_1;

  static hls::sim::Register port42 {
    .name = "B_5_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_2),
#endif
  };
  port42.param = __xlx_apatb_param_B_5_2;

  static hls::sim::Register port43 {
    .name = "B_5_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_3),
#endif
  };
  port43.param = __xlx_apatb_param_B_5_3;

  static hls::sim::Register port44 {
    .name = "B_5_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_4),
#endif
  };
  port44.param = __xlx_apatb_param_B_5_4;

  static hls::sim::Register port45 {
    .name = "B_5_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_5),
#endif
  };
  port45.param = __xlx_apatb_param_B_5_5;

  static hls::sim::Register port46 {
    .name = "B_5_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_6),
#endif
  };
  port46.param = __xlx_apatb_param_B_5_6;

  static hls::sim::Register port47 {
    .name = "B_5_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_7),
#endif
  };
  port47.param = __xlx_apatb_param_B_5_7;

  static hls::sim::Register port48 {
    .name = "B_6_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_0),
#endif
  };
  port48.param = __xlx_apatb_param_B_6_0;

  static hls::sim::Register port49 {
    .name = "B_6_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_1),
#endif
  };
  port49.param = __xlx_apatb_param_B_6_1;

  static hls::sim::Register port50 {
    .name = "B_6_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_2),
#endif
  };
  port50.param = __xlx_apatb_param_B_6_2;

  static hls::sim::Register port51 {
    .name = "B_6_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_3),
#endif
  };
  port51.param = __xlx_apatb_param_B_6_3;

  static hls::sim::Register port52 {
    .name = "B_6_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_4),
#endif
  };
  port52.param = __xlx_apatb_param_B_6_4;

  static hls::sim::Register port53 {
    .name = "B_6_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_5),
#endif
  };
  port53.param = __xlx_apatb_param_B_6_5;

  static hls::sim::Register port54 {
    .name = "B_6_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_6),
#endif
  };
  port54.param = __xlx_apatb_param_B_6_6;

  static hls::sim::Register port55 {
    .name = "B_6_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_6_7),
#endif
  };
  port55.param = __xlx_apatb_param_B_6_7;

  static hls::sim::Register port56 {
    .name = "B_7_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_0),
#endif
  };
  port56.param = __xlx_apatb_param_B_7_0;

  static hls::sim::Register port57 {
    .name = "B_7_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_1),
#endif
  };
  port57.param = __xlx_apatb_param_B_7_1;

  static hls::sim::Register port58 {
    .name = "B_7_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_2),
#endif
  };
  port58.param = __xlx_apatb_param_B_7_2;

  static hls::sim::Register port59 {
    .name = "B_7_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_3),
#endif
  };
  port59.param = __xlx_apatb_param_B_7_3;

  static hls::sim::Register port60 {
    .name = "B_7_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_4),
#endif
  };
  port60.param = __xlx_apatb_param_B_7_4;

  static hls::sim::Register port61 {
    .name = "B_7_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_5),
#endif
  };
  port61.param = __xlx_apatb_param_B_7_5;

  static hls::sim::Register port62 {
    .name = "B_7_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_6),
#endif
  };
  port62.param = __xlx_apatb_param_B_7_6;

  static hls::sim::Register port63 {
    .name = "B_7_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_7_7),
#endif
  };
  port63.param = __xlx_apatb_param_B_7_7;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port64 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port64 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0),
#endif
#endif
  };
  port64.param = { __xlx_apatb_param_A_0 };
  port64.depth = { 8 };
  port64.offset = {  };
  port64.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port65 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port65 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1),
#endif
#endif
  };
  port65.param = { __xlx_apatb_param_A_1 };
  port65.depth = { 8 };
  port65.offset = {  };
  port65.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port66 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port66 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2),
#endif
#endif
  };
  port66.param = { __xlx_apatb_param_A_2 };
  port66.depth = { 8 };
  port66.offset = {  };
  port66.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port67 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port67 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3),
#endif
#endif
  };
  port67.param = { __xlx_apatb_param_A_3 };
  port67.depth = { 8 };
  port67.offset = {  };
  port67.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port68 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port68 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4),
#endif
#endif
  };
  port68.param = { __xlx_apatb_param_A_4 };
  port68.depth = { 8 };
  port68.offset = {  };
  port68.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port69 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port69 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_5" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5),
#endif
#endif
  };
  port69.param = { __xlx_apatb_param_A_5 };
  port69.depth = { 8 };
  port69.offset = {  };
  port69.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port70 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port70 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_6" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_6),
#endif
#endif
  };
  port70.param = { __xlx_apatb_param_A_6 };
  port70.depth = { 8 };
  port70.offset = {  };
  port70.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port71 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port71 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "A_7" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_A_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_7),
#endif
#endif
  };
  port71.param = { __xlx_apatb_param_A_7 };
  port71.depth = { 8 };
  port71.offset = {  };
  port71.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port72 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port72 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_0),
#endif
#endif
  };
  port72.param = { __xlx_apatb_param_AB_0 };
  port72.depth = { 8 };
  port72.offset = {  };
  port72.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port73 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port73 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_1),
#endif
#endif
  };
  port73.param = { __xlx_apatb_param_AB_1 };
  port73.depth = { 8 };
  port73.offset = {  };
  port73.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port74 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port74 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_2),
#endif
#endif
  };
  port74.param = { __xlx_apatb_param_AB_2 };
  port74.depth = { 8 };
  port74.offset = {  };
  port74.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port75 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port75 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_3" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_3),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_3),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_3),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_3),
#endif
#endif
  };
  port75.param = { __xlx_apatb_param_AB_3 };
  port75.depth = { 8 };
  port75.offset = {  };
  port75.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port76 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port76 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_4" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_4),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_4),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_4),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_4),
#endif
#endif
  };
  port76.param = { __xlx_apatb_param_AB_4 };
  port76.depth = { 8 };
  port76.offset = {  };
  port76.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port77 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port77 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_5" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_5),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_5),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_5),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_5),
#endif
#endif
  };
  port77.param = { __xlx_apatb_param_AB_5 };
  port77.depth = { 8 };
  port77.offset = {  };
  port77.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port78 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port78 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_6" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_6),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_6),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_6),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_6),
#endif
#endif
  };
  port78.param = { __xlx_apatb_param_AB_6 };
  port78.depth = { 8 };
  port78.offset = {  };
  port78.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port79 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port79 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "AB_7" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_AB_7),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_AB_7),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_AB_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_AB_7),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_AB_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_AB_7),
#endif
#endif
  };
  port79.param = { __xlx_apatb_param_AB_7 };
  port79.depth = { 8 };
  port79.offset = {  };
  port79.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port72);
    check(port73);
    check(port74);
    check(port75);
    check(port76);
    check(port77);
    check(port78);
    check(port79);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    CodeState = CALL_C_DUT;
    mm_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_B_0_0, __xlx_apatb_param_B_0_1, __xlx_apatb_param_B_0_2, __xlx_apatb_param_B_0_3, __xlx_apatb_param_B_0_4, __xlx_apatb_param_B_0_5, __xlx_apatb_param_B_0_6, __xlx_apatb_param_B_0_7, __xlx_apatb_param_B_1_0, __xlx_apatb_param_B_1_1, __xlx_apatb_param_B_1_2, __xlx_apatb_param_B_1_3, __xlx_apatb_param_B_1_4, __xlx_apatb_param_B_1_5, __xlx_apatb_param_B_1_6, __xlx_apatb_param_B_1_7, __xlx_apatb_param_B_2_0, __xlx_apatb_param_B_2_1, __xlx_apatb_param_B_2_2, __xlx_apatb_param_B_2_3, __xlx_apatb_param_B_2_4, __xlx_apatb_param_B_2_5, __xlx_apatb_param_B_2_6, __xlx_apatb_param_B_2_7, __xlx_apatb_param_B_3_0, __xlx_apatb_param_B_3_1, __xlx_apatb_param_B_3_2, __xlx_apatb_param_B_3_3, __xlx_apatb_param_B_3_4, __xlx_apatb_param_B_3_5, __xlx_apatb_param_B_3_6, __xlx_apatb_param_B_3_7, __xlx_apatb_param_B_4_0, __xlx_apatb_param_B_4_1, __xlx_apatb_param_B_4_2, __xlx_apatb_param_B_4_3, __xlx_apatb_param_B_4_4, __xlx_apatb_param_B_4_5, __xlx_apatb_param_B_4_6, __xlx_apatb_param_B_4_7, __xlx_apatb_param_B_5_0, __xlx_apatb_param_B_5_1, __xlx_apatb_param_B_5_2, __xlx_apatb_param_B_5_3, __xlx_apatb_param_B_5_4, __xlx_apatb_param_B_5_5, __xlx_apatb_param_B_5_6, __xlx_apatb_param_B_5_7, __xlx_apatb_param_B_6_0, __xlx_apatb_param_B_6_1, __xlx_apatb_param_B_6_2, __xlx_apatb_param_B_6_3, __xlx_apatb_param_B_6_4, __xlx_apatb_param_B_6_5, __xlx_apatb_param_B_6_6, __xlx_apatb_param_B_6_7, __xlx_apatb_param_B_7_0, __xlx_apatb_param_B_7_1, __xlx_apatb_param_B_7_2, __xlx_apatb_param_B_7_3, __xlx_apatb_param_B_7_4, __xlx_apatb_param_B_7_5, __xlx_apatb_param_B_7_6, __xlx_apatb_param_B_7_7, __xlx_apatb_param_AB_0, __xlx_apatb_param_AB_1, __xlx_apatb_param_AB_2, __xlx_apatb_param_AB_3, __xlx_apatb_param_AB_4, __xlx_apatb_param_AB_5, __xlx_apatb_param_AB_6, __xlx_apatb_param_AB_7);
    CodeState = DUMP_OUTPUTS;
    dump(port72, port72.owriter, tcl.AESL_transaction);
    dump(port73, port73.owriter, tcl.AESL_transaction);
    dump(port74, port74.owriter, tcl.AESL_transaction);
    dump(port75, port75.owriter, tcl.AESL_transaction);
    dump(port76, port76.owriter, tcl.AESL_transaction);
    dump(port77, port77.owriter, tcl.AESL_transaction);
    dump(port78, port78.owriter, tcl.AESL_transaction);
    dump(port79, port79.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}