# HTTP-клиент

Подсистема 1С для работы с HTTP. Представляет собой библиотеку методов и инструменты выполнения HTTP-запросов. Реализованы:

- исполнение запросов по URI
- текучий интерфейс методов настройки выполнения запроса
- хранение данных результатов запросов в рамках сессии
- консоль интерактивного выполнения запросов
- кодогенерация настроенного в консоли запроса
- импорт из Postman (v 2.1) в консоль
- настройка консоли в соответствии с командой curl
- выполнение запросов в серверном и клиентском контексте 1С

Минимальная требуемая версия платформы: 8.3.10

Разрабатывается на платформе 8.3.18.1433

Используются синхронные вызовы

---

[Установка](/doc/installation.md)

[Примеры кода](/doc/code_examples.md) (расширенный список примеров представлен в Wiki репозитория)

[Способ разбора Set-Cookie](/doc/dfa.md)

---

## Структура каталогов репозитория

`./doc` – файлы документации

`./src` – каталог файлов конфигурации

## Ссылки

[Cookies: HTTP State Management Mechanism](https://datatracker.ietf.org/doc/html/draft-ietf-httpbis-rfc6265bis)

[Punycode](https://datatracker.ietf.org/doc/html/rfc3492)

[Описание формата ZIP файла](https://blog2k.ru/archives/3391), [Запись ZIP файла](https://blog2k.ru/archives/3397)

[curl man page](https://curl.se/docs/manpage.html)

[Создание подписанного запроса для AWS API](https://docs.aws.amazon.com/IAM/latest/UserGuide/create-signed-request.html) и [аутентификация AWS Signature v4](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) от Amazon.
