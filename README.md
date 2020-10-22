# Настройка рабочего окружения фронтенд разработчика на Windows

- [scoop](#scoop)
- [Git](#git)
- [Node.js](#%D0%9F%D0%B0%D0%BA%D0%B5%D1%82%D1%8B-nodejs--npm)
    - [gulp](#gulp)
- [Консоль](#%D0%9A%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D1%8C)
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

## scoop

Установщик программ из командной строки.

### Установка
Открыть PowerShell и выполнить сперва:
```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```
а потом:
```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

### Использование

Для установки программы выполните:
```powershell
scoop install <app>
```
Чтобы узнать, нужно ли обновить одну из установленных программ:
```powershell
scoop status
```
Чтобы обновить программу:
```powershell
scoop update <app>
```
Можно поискать программу:
```powershell
scoop search <app>
```
scoop сохраняет все скачанное в кэше, удаление кэша:
```powershell
scoop cache #посмотреть кэш
scoop cache rm <app> #удалить кэш определенной программы
scoop cache rm * #удалить весь кэш
```
scoop сохраняет не удаляет сам старые версии(вдруг вам придется откатиться), удаление старых версий:
```powershell
scoop cleanup <app> #удалить старые версии определенной программы
scoop cleanup * #удалить старые версии всех программ
```

## Git

[Git](https://ru.wikipedia.org/wiki/Git) — это легкая в исользовании система управления файлами, даже если вы **пока** не используете Git, после установки вам будет доступны некоторые linux команды в консоли. Для работы с git обычно используют [GitHub](http://github.com). GitHub предлагает свой [GUI клиент](https://windows.github.com/) для работы с git. После установки клиента, вам будет доступны так же и инструменты для работы с git из командной строки. Бесплатная книга по git — [Pro Git](http://git-scm.com/book/ru/v2) на русском.

## Node.js

[Node.js](https://nodejs.org) — это среда для выполнения JavaScript. Обычно это среда для выполнения JavaScript на сервере, но так как мы фронтенд разработчики, мы будем использовать его для повышения эффективности своей работы, а также для ее упрощения.

### Пакеты node.js — npm

[npm](http://npmjs.com) — это менеджер пакетов для node.js

#### gulp

[gulp](http://gulpjs.com/) — система управления задачами или по другому — сборщик проектов, как написано на сайте, автоматизирует и повышает эффективность вашего рабочего процесса.

## Консоль
### Настройка консоли, алиасы, функции

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
