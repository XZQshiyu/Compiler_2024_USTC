#pragma once

/*
类似 llvm的ilist实现

*/

#include <cassert>
#include <iterator>
#include <stdexcept>
#include <list>

template <typename T> class ilist {
    public:
        class node {
            friend class ilist<T>;

            private:
                T data_;
                T * prev_{nullptr};
                T * next_{nullptr};
        }
};