#pragma once
#include <string>
#include <Graphics.hpp>

class SearchWin final {
public:
    SearchWin(float width, float height);
    ~SearchWin() = default;

    void Draw(sf::RenderWindow &window);
    void MoveUp();
    void MoveDown();
    int GetPressedItem() { return m_selectedItem; }
    void EnterURL(sf::Event event);
    void PasteItem(sf::Event event);
    std::string GetItem();

private:
    const int m_width;
    const int m_height;
    int m_selectedItem = 0;
    sf::Font font;
    sf::Text menu[5];
};
