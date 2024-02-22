#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

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
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void mm(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*);
extern "C" void apatb_mm_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_B_0_0, volatile void * __xlx_apatb_param_B_0_1, volatile void * __xlx_apatb_param_B_0_2, volatile void * __xlx_apatb_param_B_0_3, volatile void * __xlx_apatb_param_B_0_4, volatile void * __xlx_apatb_param_B_0_5, volatile void * __xlx_apatb_param_B_0_6, volatile void * __xlx_apatb_param_B_0_7, volatile void * __xlx_apatb_param_B_1_0, volatile void * __xlx_apatb_param_B_1_1, volatile void * __xlx_apatb_param_B_1_2, volatile void * __xlx_apatb_param_B_1_3, volatile void * __xlx_apatb_param_B_1_4, volatile void * __xlx_apatb_param_B_1_5, volatile void * __xlx_apatb_param_B_1_6, volatile void * __xlx_apatb_param_B_1_7, volatile void * __xlx_apatb_param_B_2_0, volatile void * __xlx_apatb_param_B_2_1, volatile void * __xlx_apatb_param_B_2_2, volatile void * __xlx_apatb_param_B_2_3, volatile void * __xlx_apatb_param_B_2_4, volatile void * __xlx_apatb_param_B_2_5, volatile void * __xlx_apatb_param_B_2_6, volatile void * __xlx_apatb_param_B_2_7, volatile void * __xlx_apatb_param_B_3_0, volatile void * __xlx_apatb_param_B_3_1, volatile void * __xlx_apatb_param_B_3_2, volatile void * __xlx_apatb_param_B_3_3, volatile void * __xlx_apatb_param_B_3_4, volatile void * __xlx_apatb_param_B_3_5, volatile void * __xlx_apatb_param_B_3_6, volatile void * __xlx_apatb_param_B_3_7, volatile void * __xlx_apatb_param_B_4_0, volatile void * __xlx_apatb_param_B_4_1, volatile void * __xlx_apatb_param_B_4_2, volatile void * __xlx_apatb_param_B_4_3, volatile void * __xlx_apatb_param_B_4_4, volatile void * __xlx_apatb_param_B_4_5, volatile void * __xlx_apatb_param_B_4_6, volatile void * __xlx_apatb_param_B_4_7, volatile void * __xlx_apatb_param_B_5_0, volatile void * __xlx_apatb_param_B_5_1, volatile void * __xlx_apatb_param_B_5_2, volatile void * __xlx_apatb_param_B_5_3, volatile void * __xlx_apatb_param_B_5_4, volatile void * __xlx_apatb_param_B_5_5, volatile void * __xlx_apatb_param_B_5_6, volatile void * __xlx_apatb_param_B_5_7, volatile void * __xlx_apatb_param_B_6_0, volatile void * __xlx_apatb_param_B_6_1, volatile void * __xlx_apatb_param_B_6_2, volatile void * __xlx_apatb_param_B_6_3, volatile void * __xlx_apatb_param_B_6_4, volatile void * __xlx_apatb_param_B_6_5, volatile void * __xlx_apatb_param_B_6_6, volatile void * __xlx_apatb_param_B_6_7, volatile void * __xlx_apatb_param_B_7_0, volatile void * __xlx_apatb_param_B_7_1, volatile void * __xlx_apatb_param_B_7_2, volatile void * __xlx_apatb_param_B_7_3, volatile void * __xlx_apatb_param_B_7_4, volatile void * __xlx_apatb_param_B_7_5, volatile void * __xlx_apatb_param_B_7_6, volatile void * __xlx_apatb_param_B_7_7, volatile void * __xlx_apatb_param_AB_0, volatile void * __xlx_apatb_param_AB_1, volatile void * __xlx_apatb_param_AB_2, volatile void * __xlx_apatb_param_AB_3, volatile void * __xlx_apatb_param_AB_4, volatile void * __xlx_apatb_param_AB_5, volatile void * __xlx_apatb_param_AB_6, volatile void * __xlx_apatb_param_AB_7) {
using hls::sim::createStream;
  // Collect __xlx_A_0__tmp_vec
std::vector<Byte<4>> __xlx_A_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_0)[i]);
}
  int __xlx_size_param_A_0 = 8;
  int __xlx_offset_param_A_0 = 0;
  int __xlx_offset_byte_param_A_0 = 0*4;
  // Collect __xlx_A_1__tmp_vec
std::vector<Byte<4>> __xlx_A_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_1)[i]);
}
  int __xlx_size_param_A_1 = 8;
  int __xlx_offset_param_A_1 = 0;
  int __xlx_offset_byte_param_A_1 = 0*4;
  // Collect __xlx_A_2__tmp_vec
std::vector<Byte<4>> __xlx_A_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_2)[i]);
}
  int __xlx_size_param_A_2 = 8;
  int __xlx_offset_param_A_2 = 0;
  int __xlx_offset_byte_param_A_2 = 0*4;
  // Collect __xlx_A_3__tmp_vec
std::vector<Byte<4>> __xlx_A_3__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_3)[i]);
}
  int __xlx_size_param_A_3 = 8;
  int __xlx_offset_param_A_3 = 0;
  int __xlx_offset_byte_param_A_3 = 0*4;
  // Collect __xlx_A_4__tmp_vec
std::vector<Byte<4>> __xlx_A_4__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_4)[i]);
}
  int __xlx_size_param_A_4 = 8;
  int __xlx_offset_param_A_4 = 0;
  int __xlx_offset_byte_param_A_4 = 0*4;
  // Collect __xlx_A_5__tmp_vec
std::vector<Byte<4>> __xlx_A_5__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_5)[i]);
}
  int __xlx_size_param_A_5 = 8;
  int __xlx_offset_param_A_5 = 0;
  int __xlx_offset_byte_param_A_5 = 0*4;
  // Collect __xlx_A_6__tmp_vec
std::vector<Byte<4>> __xlx_A_6__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_6)[i]);
}
  int __xlx_size_param_A_6 = 8;
  int __xlx_offset_param_A_6 = 0;
  int __xlx_offset_byte_param_A_6 = 0*4;
  // Collect __xlx_A_7__tmp_vec
std::vector<Byte<4>> __xlx_A_7__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_A_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_7)[i]);
}
  int __xlx_size_param_A_7 = 8;
  int __xlx_offset_param_A_7 = 0;
  int __xlx_offset_byte_param_A_7 = 0*4;
  // Collect __xlx_AB_0__tmp_vec
std::vector<Byte<4>> __xlx_AB_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_0)[i]);
}
  int __xlx_size_param_AB_0 = 8;
  int __xlx_offset_param_AB_0 = 0;
  int __xlx_offset_byte_param_AB_0 = 0*4;
  // Collect __xlx_AB_1__tmp_vec
std::vector<Byte<4>> __xlx_AB_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_1)[i]);
}
  int __xlx_size_param_AB_1 = 8;
  int __xlx_offset_param_AB_1 = 0;
  int __xlx_offset_byte_param_AB_1 = 0*4;
  // Collect __xlx_AB_2__tmp_vec
std::vector<Byte<4>> __xlx_AB_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_2)[i]);
}
  int __xlx_size_param_AB_2 = 8;
  int __xlx_offset_param_AB_2 = 0;
  int __xlx_offset_byte_param_AB_2 = 0*4;
  // Collect __xlx_AB_3__tmp_vec
std::vector<Byte<4>> __xlx_AB_3__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_3)[i]);
}
  int __xlx_size_param_AB_3 = 8;
  int __xlx_offset_param_AB_3 = 0;
  int __xlx_offset_byte_param_AB_3 = 0*4;
  // Collect __xlx_AB_4__tmp_vec
std::vector<Byte<4>> __xlx_AB_4__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_4)[i]);
}
  int __xlx_size_param_AB_4 = 8;
  int __xlx_offset_param_AB_4 = 0;
  int __xlx_offset_byte_param_AB_4 = 0*4;
  // Collect __xlx_AB_5__tmp_vec
std::vector<Byte<4>> __xlx_AB_5__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_5)[i]);
}
  int __xlx_size_param_AB_5 = 8;
  int __xlx_offset_param_AB_5 = 0;
  int __xlx_offset_byte_param_AB_5 = 0*4;
  // Collect __xlx_AB_6__tmp_vec
std::vector<Byte<4>> __xlx_AB_6__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_6)[i]);
}
  int __xlx_size_param_AB_6 = 8;
  int __xlx_offset_param_AB_6 = 0;
  int __xlx_offset_byte_param_AB_6 = 0*4;
  // Collect __xlx_AB_7__tmp_vec
std::vector<Byte<4>> __xlx_AB_7__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_AB_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_AB_7)[i]);
}
  int __xlx_size_param_AB_7 = 8;
  int __xlx_offset_param_AB_7 = 0;
  int __xlx_offset_byte_param_AB_7 = 0*4;
  // DUT call
  mm(__xlx_A_0__tmp_vec.data(), __xlx_A_1__tmp_vec.data(), __xlx_A_2__tmp_vec.data(), __xlx_A_3__tmp_vec.data(), __xlx_A_4__tmp_vec.data(), __xlx_A_5__tmp_vec.data(), __xlx_A_6__tmp_vec.data(), __xlx_A_7__tmp_vec.data(), __xlx_apatb_param_B_0_0, __xlx_apatb_param_B_0_1, __xlx_apatb_param_B_0_2, __xlx_apatb_param_B_0_3, __xlx_apatb_param_B_0_4, __xlx_apatb_param_B_0_5, __xlx_apatb_param_B_0_6, __xlx_apatb_param_B_0_7, __xlx_apatb_param_B_1_0, __xlx_apatb_param_B_1_1, __xlx_apatb_param_B_1_2, __xlx_apatb_param_B_1_3, __xlx_apatb_param_B_1_4, __xlx_apatb_param_B_1_5, __xlx_apatb_param_B_1_6, __xlx_apatb_param_B_1_7, __xlx_apatb_param_B_2_0, __xlx_apatb_param_B_2_1, __xlx_apatb_param_B_2_2, __xlx_apatb_param_B_2_3, __xlx_apatb_param_B_2_4, __xlx_apatb_param_B_2_5, __xlx_apatb_param_B_2_6, __xlx_apatb_param_B_2_7, __xlx_apatb_param_B_3_0, __xlx_apatb_param_B_3_1, __xlx_apatb_param_B_3_2, __xlx_apatb_param_B_3_3, __xlx_apatb_param_B_3_4, __xlx_apatb_param_B_3_5, __xlx_apatb_param_B_3_6, __xlx_apatb_param_B_3_7, __xlx_apatb_param_B_4_0, __xlx_apatb_param_B_4_1, __xlx_apatb_param_B_4_2, __xlx_apatb_param_B_4_3, __xlx_apatb_param_B_4_4, __xlx_apatb_param_B_4_5, __xlx_apatb_param_B_4_6, __xlx_apatb_param_B_4_7, __xlx_apatb_param_B_5_0, __xlx_apatb_param_B_5_1, __xlx_apatb_param_B_5_2, __xlx_apatb_param_B_5_3, __xlx_apatb_param_B_5_4, __xlx_apatb_param_B_5_5, __xlx_apatb_param_B_5_6, __xlx_apatb_param_B_5_7, __xlx_apatb_param_B_6_0, __xlx_apatb_param_B_6_1, __xlx_apatb_param_B_6_2, __xlx_apatb_param_B_6_3, __xlx_apatb_param_B_6_4, __xlx_apatb_param_B_6_5, __xlx_apatb_param_B_6_6, __xlx_apatb_param_B_6_7, __xlx_apatb_param_B_7_0, __xlx_apatb_param_B_7_1, __xlx_apatb_param_B_7_2, __xlx_apatb_param_B_7_3, __xlx_apatb_param_B_7_4, __xlx_apatb_param_B_7_5, __xlx_apatb_param_B_7_6, __xlx_apatb_param_B_7_7, __xlx_AB_0__tmp_vec.data(), __xlx_AB_1__tmp_vec.data(), __xlx_AB_2__tmp_vec.data(), __xlx_AB_3__tmp_vec.data(), __xlx_AB_4__tmp_vec.data(), __xlx_AB_5__tmp_vec.data(), __xlx_AB_6__tmp_vec.data(), __xlx_AB_7__tmp_vec.data());
// print __xlx_apatb_param_A_0
for (size_t i = 0; i < __xlx_size_param_A_0; ++i) {
((Byte<4>*)__xlx_apatb_param_A_0)[i] = __xlx_A_0__tmp_vec[__xlx_offset_param_A_0+i];
}
// print __xlx_apatb_param_A_1
for (size_t i = 0; i < __xlx_size_param_A_1; ++i) {
((Byte<4>*)__xlx_apatb_param_A_1)[i] = __xlx_A_1__tmp_vec[__xlx_offset_param_A_1+i];
}
// print __xlx_apatb_param_A_2
for (size_t i = 0; i < __xlx_size_param_A_2; ++i) {
((Byte<4>*)__xlx_apatb_param_A_2)[i] = __xlx_A_2__tmp_vec[__xlx_offset_param_A_2+i];
}
// print __xlx_apatb_param_A_3
for (size_t i = 0; i < __xlx_size_param_A_3; ++i) {
((Byte<4>*)__xlx_apatb_param_A_3)[i] = __xlx_A_3__tmp_vec[__xlx_offset_param_A_3+i];
}
// print __xlx_apatb_param_A_4
for (size_t i = 0; i < __xlx_size_param_A_4; ++i) {
((Byte<4>*)__xlx_apatb_param_A_4)[i] = __xlx_A_4__tmp_vec[__xlx_offset_param_A_4+i];
}
// print __xlx_apatb_param_A_5
for (size_t i = 0; i < __xlx_size_param_A_5; ++i) {
((Byte<4>*)__xlx_apatb_param_A_5)[i] = __xlx_A_5__tmp_vec[__xlx_offset_param_A_5+i];
}
// print __xlx_apatb_param_A_6
for (size_t i = 0; i < __xlx_size_param_A_6; ++i) {
((Byte<4>*)__xlx_apatb_param_A_6)[i] = __xlx_A_6__tmp_vec[__xlx_offset_param_A_6+i];
}
// print __xlx_apatb_param_A_7
for (size_t i = 0; i < __xlx_size_param_A_7; ++i) {
((Byte<4>*)__xlx_apatb_param_A_7)[i] = __xlx_A_7__tmp_vec[__xlx_offset_param_A_7+i];
}
// print __xlx_apatb_param_AB_0
for (size_t i = 0; i < __xlx_size_param_AB_0; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_0)[i] = __xlx_AB_0__tmp_vec[__xlx_offset_param_AB_0+i];
}
// print __xlx_apatb_param_AB_1
for (size_t i = 0; i < __xlx_size_param_AB_1; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_1)[i] = __xlx_AB_1__tmp_vec[__xlx_offset_param_AB_1+i];
}
// print __xlx_apatb_param_AB_2
for (size_t i = 0; i < __xlx_size_param_AB_2; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_2)[i] = __xlx_AB_2__tmp_vec[__xlx_offset_param_AB_2+i];
}
// print __xlx_apatb_param_AB_3
for (size_t i = 0; i < __xlx_size_param_AB_3; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_3)[i] = __xlx_AB_3__tmp_vec[__xlx_offset_param_AB_3+i];
}
// print __xlx_apatb_param_AB_4
for (size_t i = 0; i < __xlx_size_param_AB_4; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_4)[i] = __xlx_AB_4__tmp_vec[__xlx_offset_param_AB_4+i];
}
// print __xlx_apatb_param_AB_5
for (size_t i = 0; i < __xlx_size_param_AB_5; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_5)[i] = __xlx_AB_5__tmp_vec[__xlx_offset_param_AB_5+i];
}
// print __xlx_apatb_param_AB_6
for (size_t i = 0; i < __xlx_size_param_AB_6; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_6)[i] = __xlx_AB_6__tmp_vec[__xlx_offset_param_AB_6+i];
}
// print __xlx_apatb_param_AB_7
for (size_t i = 0; i < __xlx_size_param_AB_7; ++i) {
((Byte<4>*)__xlx_apatb_param_AB_7)[i] = __xlx_AB_7__tmp_vec[__xlx_offset_param_AB_7+i];
}
}
