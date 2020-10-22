# Настройка рабочего окружения фронтенд разработчика на Windows

- [Git](#git)
- [Node.js](#%D0%9F%D0%B0%D0%BA%D0%B5%D1%82%D1%8B-nodejs--npm)
    - [gulp](#gulp)
- [Консоль](#%D0%9A%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D1%8C)
  - [Дополнения](#%D0%94%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F)
    - [ConEmu](conemu)
    - [Clink](#clink)
    - [Настройка консоли, алиасы, функции](#%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D0%BA%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D0%B8-%D0%B0%D0%BB%D0%B8%D0%B0%D1%81%D1%8B-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8)
- [Wox](#wox)
  - [Плагины Wox](#%D0%9F%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD%D1%8B-wox)
    - [CanIUse](#caniuse)
    - [FileZilla](filezilla)
    - [Dash.Doc](#dashdoc)
    - [Browser Bookmarks](#browser-bookmarks)
- [Другие программы и инструменты](#%D0%94%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B-%D0%B8-%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B)
  - [Firefox](#firefox)
  - [FileZilla](#filezilla-1)
  - [Облачное хранилище файлов](#%D0%9E%D0%B1%D0%BB%D0%B0%D1%87%D0%BD%D0%BE%D0%B5-%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D0%BB%D0%B8%D1%89%D0%B5-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2)

## Sublime Text

[Sublime Text](http://www.sublimetext.com/3) — самый лучший текстовый редактор для веб-разработки. Мастхэв вещи из коробки — это миникарта, мультивыделение и поиск, с помощью регулярных выражений, в том числе по файлам и конечно же тысячи плагинов.

Быстрая и простая установка плагинов доступна после установки системы управления пакетами — [Package Control](https://packagecontrol.io/), после этого надо всего лишь нажать <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>P</kbd> и набрать `install`.

### Плагины Sublime Text

#### SFTP

[SFTP](https://packagecontrol.io/packages/SFTP) — FTP плагин, удаленное редактирование файлов

#### Sidebar Enhancements

[SidebarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements) — расширяет возможности сайдбара. Создание нового файла/папки, открыть/выполнить, копировать/вырезать/вставить/переименовать/удалить и многое другое. 

#### Emmet

[Emmet](https://packagecontrol.io/packages/Emmet) — инструмент для ускорения работы с HTML и CSS, из аббревиатур генерируются готовые фрагменты кода

#### Auto File Name

[AutoFileName](https://packagecontrol.io/packages/AutoFileName) — автоматически предлагает выбрать файл.

#### Color Highlighter

[Color Highlighter](https://packagecontrol.io/packages/Color%20Highlighter) — Подсветка код цвета реальным цветом.

#### Advanced New File 

[AdvancedNewFile](https://packagecontrol.io/packages/AdvancedNewFile) — Создание новых файлов без диалоговых окон. После нажатия <kbd>Ctrl</kbd><kbd>Alt</kbd><kbd>N</kbd> внизу, у строки состояния появляется строка ввода в которой предлагается ввести имя файла, а в самой строке состояния указывается папка где будет создан файл. Можно настроить папку по умолчанию.

#### Golden Ratio

[Golden Ratio](https://packagecontrol.io/packages/GoldenRatio) — При работе в 2 колонки позволяет автоматически увеличивать ширину активной колонки, автоматически или по нажатию клавиш.

## Git

[Git](https://ru.wikipedia.org/wiki/Git) — это легкая в исользовании система управления файлами, даже если вы **пока** не используете Git, после установки вам будет доступны некоторые linux команды в консоли. Для работы с git обычно используют [GitHub](http://github.com). GitHub предлагает свой [GUI клиент](https://windows.github.com/) для работы с git. После установки клиента, вам будет доступны так же и инструменты для работы с git из командной строки. Бесплатная книга по git — [Pro Git](http://git-scm.com/book/ru/v2) на русском.

## Node.js

[Node.js](https://nodejs.org) — это среда для выполнения JavaScript. Обычно это среда для выполнения JavaScript на сервере, но так как мы фронтенд разработчики, мы будем использовать его для повышения эффективности своей работы, а также для ее упрощения.

### Пакеты node.js — npm

[npm](http://npmjs.com) — это менеджер пакетов для node.js

#### gulp

[gulp](http://gulpjs.com/) — система управления задачами или по другому — сборщик проектов, как написано на сайте, автоматизирует и повышает эффективность вашего рабочего процесса.

##### gulp плагины 

- del — удаление файлов/папок
- gulp-concat — объединение файлов
- gulp-imagemin — оптимизация изображений
- gulp-livereload — обновление браузера по изменению файлов
- gulp-load-plugins — подключение gulp плагинов одной строкой
- gulp-minify-css — минификация css
- gulp-notify — вывод уведомлений в командной строке и во всплывающей подсказке
- gulp-plumber — перехват ошибок в gulp
- gulp-postcss — постпроцессор, это как препроцессоры, но лучше :smile:
  - autoprefixer-core — плагины для postcss, расставляет автоматически префиксы
  - postcss-color-function — цветовые функции, lightness, blackness, и т.д.
  - postcss-simple-vars — переменные в css, объявил 1 раз `$blue: #056ef0;` пользуешся везде `background: $blue;`
- gulp-rename — переименование файлов
- gulp-rigger — подключение файлов, include для css/js/html
- gulp-uglify — минификация js
- gulp-zip — архивирование

и примерно 1500 других плагинов...

## Консоль
### Дополнения
#### ConEmu
#### Clink
#### Настройка консоли, алиасы, функции

## Wox

[Wox](http://getwox.com) — лаунчер, который поможет нам в разработке и сделает ее проще и эффективней. Запускается сочетанием клавиш <kbd>Alt</kbd><kbd>Space</kbd>, можно настроить на другое сочетание клавиш.

### Плагины Wox

#### CanIUse
#### FileZilla
#### Dash.Doc
#### Browser Bookmarks

## Другие программы и инструменты
### Firefox
### FileZilla
### Облачное хранилище файлов
* Dropbox
* Yandex.Disk
* Google Drive
