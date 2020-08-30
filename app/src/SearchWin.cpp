#include "SearchWin.h"
#include <iostream>

SearchWin::SearchWin(float width, float height) : m_width(width), m_height(height) {
    if (!font.loadFromFile("app/resources/font/Px437_IBM_Conv.ttf")) {
        //handle error
        std::cerr << "Error loading fonts for menu window: ./app/src/Menu.cpp\n";
    }
    menu[0].setFont(font);
    menu[0].setFillColor(sf::Color::Green);
    menu[0].setString(">. URL");
    menu[0].setCharacterSize((height / width) * 50);
    menu[0].setPosition(sf::Vector2f(width / 2,
                        height / (5 + 1) * 1));
    menu[0].setOrigin(menu[0].getLocalBounds().width / 2.0f,
                        menu[0].getLocalBounds().height / 2.0f);

    menu[1].setFont(font);
    menu[1].setFillColor(sf::Color::White);
    menu[1].setString(">. threads count");
    menu[1].setCharacterSize((height / width) * 50);
    menu[1].setPosition(sf::Vector2f(width / 2,
                        height / (5 + 1) * 2));
    menu[1].setOrigin(menu[1].getLocalBounds().width / 2.0f,
                        menu[1].getLocalBounds().height / 2.0f);

    menu[2].setFont(font);
    menu[2].setFillColor(sf::Color::White);
    menu[2].setString(">. search");
    menu[2].setCharacterSize((height / width) * 50);
    menu[2].setPosition(sf::Vector2f(width / 2,
                        height / (5 + 1) * 3));
    menu[2].setOrigin(menu[2].getLocalBounds().width / 2.0f,
                        menu[2].getLocalBounds().height / 2.0f);

    menu[3].setFont(font);
    menu[3].setFillColor(sf::Color::White);
    menu[3].setString(">. limit");
    menu[3].setCharacterSize((height / width) * 50);
    menu[3].setPosition(sf::Vector2f(width / 2,
                        height / (5 + 1) * 4));
    menu[3].setOrigin(menu[3].getLocalBounds().width / 2.0f,
                        menu[3].getLocalBounds().height / 2.0f);

    m_selectedItem = 1;

    menu[4].setFont(font);
    menu[4].setFillColor(sf::Color::White);
    menu[4].setString("stop if found?");
    menu[4].setCharacterSize((height / width) * 50);
    menu[4].setPosition(sf::Vector2f(width / 2,
                        height / (5 + 1) * 5));
    menu[4].setOrigin(menu[4].getLocalBounds().width / 2.0f,
                        menu[4].getLocalBounds().height / 2.0f);
    m_selectedItem = 0;

}

void SearchWin::Draw(sf::RenderWindow &window) {
    for (int i = 0; i < 5; i++) {
        window.draw(menu[i]);
    }
}

void SearchWin::MoveDown() {
    if (m_selectedItem + 1 < 5) {
        menu[m_selectedItem].setFillColor(sf::Color::White);
        m_selectedItem++;
        menu[m_selectedItem].setFillColor(sf::Color::Green);
    }
}

void SearchWin::MoveUp() {
    if (m_selectedItem - 1 >= 0) {
        menu[m_selectedItem].setFillColor(sf::Color::White);
        m_selectedItem--;
        menu[m_selectedItem].setFillColor(sf::Color::Green);
    }
}

void SearchWin::EnterURL(sf::Event event) {
    sf::String playerInput;

    if (this->m_selectedItem != 4) {
        if (menu[this->m_selectedItem].getString() == ">. URL"
            || menu[this->m_selectedItem].getString() == ">. threads count"
            || menu[this->m_selectedItem].getString() == ">. search"
            || menu[this->m_selectedItem].getString() == ">. limit")
            menu[this->m_selectedItem].setString(">. ");
        if (event.text.unicode == 8 && menu[this->m_selectedItem].getString().getSize() > 3) {
            menu[this->m_selectedItem].setString(menu[this->m_selectedItem].getString().substring(0, menu[this->m_selectedItem].getString().getSize() - 1));
            menu[this->m_selectedItem].setPosition(sf::Vector2f(m_width / 2,
                        m_height / (5 + 1) * (m_selectedItem + 1)));
            menu[this->m_selectedItem].setOrigin(menu[this->m_selectedItem].getLocalBounds().width / 2.0f,
                        menu[this->m_selectedItem].getLocalBounds().height / 2.0f);
        } else if (event.text.unicode != 8 && !std::isspace(event.text.unicode)) {
            playerInput += event.text.unicode;
            menu[this->m_selectedItem].setString(menu[this->m_selectedItem].getString() + playerInput);
            menu[this->m_selectedItem].setPosition(sf::Vector2f(m_width / 2,
                        m_height / (5 + 1) * (m_selectedItem + 1)));
            menu[this->m_selectedItem].setOrigin(menu[this->m_selectedItem].getLocalBounds().width / 2.0f,
                        menu[this->m_selectedItem].getLocalBounds().height / 2.0f);
        }
    }
}

void SearchWin::PasteItem(sf::Event event) {
    sf::String userString = sf::Clipboard::getString();

    if (this->m_selectedItem != 4) {
        menu[this->m_selectedItem].setString(".> " + userString);
        menu[this->m_selectedItem].setPosition(sf::Vector2f(m_width / 2,
                        m_height / (5 + 1) * (m_selectedItem + 1)));
        menu[this->m_selectedItem].setOrigin(menu[this->m_selectedItem].getLocalBounds().width / 2.0f,
                    menu[this->m_selectedItem].getLocalBounds().height / 2.0f);
    }
}

std::string SearchWin::GetItem() {
    return menu[this->m_selectedItem].getString().substring(3,
                    menu[this->m_selectedItem].getString().getSize());
}
