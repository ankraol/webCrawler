#include "renderSearchWin.h"

int CheckEvents(sf::RenderWindow& menu_window, SearchWin& menu) {
    sf::Event event;

    while (menu_window.pollEvent(event))
    {
        switch(event.type)
        {
            case sf::Event::KeyReleased:
                switch(event.key.code)
                {
                    case sf::Keyboard::Up:
                        menu.MoveUp();
                        break;
                    case sf::Keyboard::Down:
                        menu.MoveDown();
                        break;
                    case sf::Keyboard::Return:
                        //get entered text or switch to search && progress bar
                        break;
                    case sf::Keyboard::Escape:
                        menu_window.close();
                        break;
                    default:
                        break;
                }
                break;
            case sf::Event::KeyPressed:
                if (event.key.control && event.key.code == sf::Keyboard::V)
                    menu.PasteItem(event);
                break;
            case sf::Event::Closed:
                menu_window.close();
            case sf::Event::TextEntered:
                menu.EnterURL(event);
            default:
                break;
        }
    }
    return -1;
}

int renderSearchWindow(int width, int height) {
    sf::RenderWindow menu_window(sf::VideoMode(width, height),"WEB Crawler");
    SearchWin menu(menu_window.getSize().x, menu_window.getSize().y);
    int event = -1;
    
    while(menu_window.isOpen()) {
        event = CheckEvents(menu_window, menu);
        if (event != -1)
            return event;
        menu_window.clear();
        menu.Draw(menu_window);
        menu_window.display();
    }
    return -1;
}
