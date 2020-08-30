#pragma once
#include <iostream>
#include <queue>
#include <string>
#include <utility>

class URLqueue final {
public:
    URLqueue(const std::string& URL, size_t maxCount);
    ~URLqueue() = default;

    void ReadURL(const std::queue<std::string>& m_queue);

private:
    std::queue<std::string> m_queue;
};
