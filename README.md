# Настройка рабочего окружения фронтенд разработчика на Windows

- [scoop](#scoop)
- [Консоль](#%D0%9A%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D1%8C)
  - [Настройка консоли, алиасы, функции](#%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D0%BA%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D0%B8-%D0%B0%D0%BB%D0%B8%D0%B0%D1%81%D1%8B-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8)
- [Git](#git)
- [Node.js](#%D0%9F%D0%B0%D0%BA%D0%B5%D1%82%D1%8B-nodejs--npm)
    - [gulp](#gulp)
- [Wox](#wox)
  - [Плагины Wox](#%D0%9F%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD%D1%8B-wox)
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

## Консоль
Первое что вы должны установить после того как разбёретесь со **scoop** — это терминал, мы будем использовать **Windows Terminal**:
```powershell
scoop install windows-terminal
```

### Настройка консоли, алиасы, функции

Далее настройка терминала, на сайте https://windowsterminalthemes.dev/ выберите подходящую тему, откройте файл настройки терминала(<kbd>Ctrl</kbd>+<kbd>,</kbd> или в выпадающем меню выбрать `Settings`) докрутить до `schemes` и добавить тему выбранную на сайте тему.

Далее необходимо установить шрифт `Cascadia Code PL` это можно сделать добавив `bucket` `nerd-fonts` в `scoop`(`bucket` это репозиторий с манифестами программ, у `scoop` есть дефолтные репозитории с манифестами, но вы можете установить сторонние или создать свои):
```powershell
scoop bucket add nerd-fonts
```
а потом установить шрифт:
```powershell
scoop install Cascadia-Code
```

Этот шрифт нужен для нормального отображения приглашения `oh-my-posh`, устанавливаем `oh-my-posh`(и заодно `posh-git`):
```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```
Откройте профиль **PowerShell** с помощью `notepad $PROFILE`(или любого другого текстового редактора) и добавьте туда:
```powershell
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
```
`$PROFILE` это профиль **PowerShell**, не **Windows Terminal**

Заново открыв файл настройки **Windows Terminal**, найдите профиль **Windows PowerShell** и добавьте `"fontFace": "Cascadia Code PL"`

## Редактор кода
**Visual Studio Code** — редактор исходного кода, разработанный Microsoft, имеет широкие возможности для кастомизации: пользовательские темы, сочетания клавиш и файлы конфигурации. Распространяется бесплатно, разрабатывается как программное обеспечение с открытым исходным кодом, установка:
```powershell
scoop install vscode
```
Список рекомендуемых расширений:
- Bracket Pair Colorizer 2 — подсветка пар скобок
- Colorize — визуализация названий/значений цветов, например `red` будет выделен красным цветом
- Debugger for Firefox/Chrome — дебаггер для Firefox/Chrome
- Diff — расширения для сравнения файлов
- EditorConfig for Visual Studio Code — расширения для `.editorconfig` файлов
- HTML CSS Support — недостающие CSS фичи, дополнения классов и т.д.
- Markdown All in One — предосмотр md файлов
- Npm Intellisense — дополнение `npm` модулей
- Path Intellisense — дополнение путей
- PostCSS Language Support — подержка `PostCSS` синтаксиса
- Prettier - Code formatter — форматирование кода
- SVG Viewer — предосмотр SVG файлов

## Git

[Git](https://ru.wikipedia.org/wiki/Git) — это легкая в исользовании система управления файлами, даже если вы **пока** не используете Git, после установки вам будет доступны некоторые linux команды в консоли. Для работы с git обычно используют [GitHub](http://github.com). GitHub предлагает свой [GUI клиент](https://windows.github.com/) для работы с git. После установки клиента, вам будет доступны так же и инструменты для работы с git из командной строки. Бесплатная книга по git — [Pro Git](http://git-scm.com/book/ru/v2) на русском.

Установка:
```powershell
scoop install git
```

## Node.js

[Node.js](https://nodejs.org) — это среда для выполнения JavaScript. Обычно это среда для выполнения JavaScript на сервере, но так как мы фронтенд разработчики, мы будем использовать его для повышения эффективности своей работы, а также для ее упрощения.

Установка(если вам нужны разные версии ноды то установите `scoop install nvm` и далее меняйте версию ноды через него):
```powershell
scoop install nodejs # последняя версия nodejs
```

### Пакеты node.js — npm

[npm](http://npmjs.com) — это менеджер пакетов для node.js, устанавливается вместе с nodejs

### Пакеты node.js — yarn
[yarn](https://yarnpkg.com/lang/en/) — это альтернативный менеджер пакетов для node.js

Установка:
```powershell
scoop install yarn
```

#### gulp

[gulp](http://gulpjs.com/) — система управления задачами или по другому — сборщик проектов, как написано на сайте, автоматизирует и повышает эффективность вашего рабочего процесса.

## Wox

[Wox](http://getwox.com) — лаунчер, который поможет нам в разработке и сделает ее проще и эффективней. Запускается сочетанием клавиш <kbd>Alt</kbd><kbd>Space</kbd>, можно настроить на другое сочетание клавиш.

### Плагины Wox

- CanIUse — проверка поддержки технологий на сайте caniuse.com
- FileZilla — быстрое открытие сайта в FileZilla
- npm search — поиск модулей npm
- PostCSS Search — поиск модулей PostCSS
- StackOverlow - поиск вопросов Stack Overflow.
- Github - поиск github репозиториев, пользователей, просмотр ишью и пулл реквестов

## Другие программы и инструменты
### Firefox
### FileZilla
### Облачное хранилище файлов
* Dropbox
* Yandex.Disk
* Google Drive
