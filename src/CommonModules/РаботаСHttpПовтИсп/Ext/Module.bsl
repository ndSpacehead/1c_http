
Функция КодировкаПоУмолчанию() Экспорт
	Возврат "CESU-8";
КонецФункции

// Возвращает: адресный перечень типов MIME
//
// Возвращаемые значения:
//     ФиксированнаяСтруктура - ключи: группы типов MIME типа ФиксированнаяСтруктура, ключи которых сами типы
//
Функция ТипыMIME() Экспорт
	Возврат Новый ФиксированнаяСтруктура(
		"application, audio, image, message, model, multipart, text, video, vnd, x, x_pkcs",
		Новый ФиксированнаяСтруктура( // application - внутренний формат прикладной программы
			"atom_xml, directory, EDI_X12, EDIFACT, json, javascript, octet_stream, ogg, pdf, postscript, soap_xml, font_woff, xhtml_xml, xml_dtd, xop_xml, zip, gzip, x_bittorrent, x_tex, xml",
			"application/atom+xml",     // Atom
			"application/directory",    // directory
			"application/EDI-X12",      // EDI X12 (RFC 1767)
			"application/EDIFACT",      // EDI EDIFACT (RFC 1767)
			"application/json",         // JavaScript Object Notation JSON (RFC 4627)
			"application/javascript",   // JavaScript (RFC 4329)
			"application/octet-stream", // двоичный файл без указания формата (RFC 2046)
			"application/ogg",          // Ogg (RFC 5334)
			"application/pdf",          // Portable Document Format, PDF (RFC 3778)
			"application/postscript",   // PostScript (RFC 2046)
			"application/soap+xml",     // SOAP (RFC 3902)
			"application/font-woff",    // Web Open Font Format
			"application/xhtml+xml",    // XHTML (RFC 3236)
			"application/xml-dtd",      // DTD (RFC 3023)
			"application/xop+xml",      // XOP
			"application/zip",          // ZIP
			"application/gzip",         // Gzip
			"application/x-bittorrent", // BitTorrent
			"application/x-tex",        // TeX
			"application/xml"           // XML
		),
		Новый ФиксированнаяСтруктура( // audio - аудио
			"basic, L24, mp4, aac, mpeg, ogg, vorbis, x_ms_wma, x_ms_wax, vnd_rn_realaudio, vnd_wave, webm",
			"audio/basic",            // mulaw аудио, 8 кГц, 1 канал (RFC 2046)
			"audio/L24",              // 24bit Linear PCM аудио, 8-48 кГц, 1-N каналов (RFC 3190)
			"audio/mp4",              // MP4
			"audio/aac",              // AAC
			"audio/mpeg",             // MP3 или др. MPEG (RFC 3003)
			"audio/ogg",              // Ogg Vorbis, Speex, Flac или др. аудио (RFC 5334)
			"audio/vorbis",           // Vorbis (RFC 5215)
			"audio/x-ms-wma",         // Windows Media Audio
			"audio/x-ms-wax",         // Windows Media Audio перенаправление
			"audio/vnd.rn-realaudio", // RealAudio
			"audio/vnd.wave",         // WAV(RFC 2361)
			"audio/webm"              // WebM
		),
		Новый ФиксированнаяСтруктура( // image - изображение
			"gif, jpeg, pjpeg, png, svg_xml, tiff, vnd_microsoft_icon, vnd_wap_wbmp, webp, bmp",
			"image/gif",                // GIF(RFC 2045 и RFC 2046)
			"image/jpeg",               // JPEG (RFC 2045 и RFC 2046)
			"image/pjpeg",              // JPEG
			"image/png",                // Portable Network Graphics (RFC 2083)
			"image/svg+xml",            // SVG
			"image/tiff",               // TIFF(RFC 3302)
			"image/vnd.microsoft.icon", // ICO
			"image/vnd.wap.wbmp",       // WBMP
			"image/webp",               // WebP
			"image/bmp"                 // BMP
		),
		Новый ФиксированнаяСтруктура( // message - сообщение
			"http, imdn_xml, partial, rfc822",
			"message/http",     // (RFC 2616)
			"message/imdn+xml", // IMDN (RFC 5438)
			"message/partial",  // E-mail (RFC 2045 и RFC 2046)
			"message/rfc822"    // E-mail; EML-файлы, MIME-файлы, MHT-файлы, MHTML-файлы (RFC 2045 и RFC 2046)
		),
		Новый ФиксированнаяСтруктура( // model - для 3D-моделей
			"example, iges, mesh, vrml, x3d_binary, x3d_vrml, x3d_xml",
			"model/example",    // (RFC 4735)
			"model/iges",       // IGS файлы, IGES файлы (RFC 2077)
			"model/mesh",       // MSH файлы, MESH файлы (RFC 2077), SILO файлы
			"model/vrml",       // WRL файлы, VRML файлы (RFC 2077)
			"model/x3d+binary", // X3D ISO стандарт для 3D компьютерной графики, X3DB файлы
			"model/x3d+vrml",   // X3D ISO стандарт для 3D компьютерной графики, X3DV VRML файлы
			"model/x3d+xml"     // X3D ISO стандарт для 3D компьютерной графики, X3D XML файлы
		),
		Новый ФиксированнаяСтруктура( // multipart - составные
			"mixed, alternative, related, form_data, signed, encrypted",
			"multipart/mixed",       // MIME E-mail (RFC 2045 и RFC 2046)
			"multipart/alternative", // MIME E-mail (RFC 2045 и RFC 2046)
			"multipart/related",     // MIME E-mail (RFC 2387 и используемое MHTML (HTML mail))
			"multipart/form-data",   // MIME Webform (RFC 2388)
			"multipart/signed",      // (RFC 1847)
			"multipart/encrypted"    // (RFC 1847)
		),
		Новый ФиксированнаяСтруктура( // text - текст
			"cmd, css, csv, html, javascript, plain, php, xml, markdown, cache_manifest",
			"text/cmd",           // команды
			"text/css",           // Cascading Style Sheets (RFC 2318)
			"text/csv",           // CSV (RFC 4180)
			"text/html",          // HTML (RFC 2854)
			"text/javascript",    // (Obsolete): JavaScript (RFC 4329)
			"text/plain",         // текстовые данные (RFC 2046 и RFC 3676)
			"text/php",           // Скрипт языка PHP
			"text/xml",           // Extensible Markup Language (RFC 3023)
			"text/markdown",      // файл языка разметки Markdown (RFC 7763)
			"text/cache-manifest" // файл манифеста(RFC 2046)
		),
		Новый ФиксированнаяСтруктура( // video - видео
			"mpeg, mp4, ogg, quicktime, webm, x_ms_wmv, x_flv, _3gpp, _3gpp2",
			"video/mpeg",      // MPEG-1 (RFC 2045 и RFC 2046)
			"video/mp4",       // MP4 (RFC 4337)
			"video/ogg",       // Ogg Theora или другое видео (RFC 5334)
			"video/quicktime", // QuickTime
			"video/webm",      // WebM
			"video/x-ms-wmv",  // Windows Media Video
			"video/x-flv",     // FLV
			"video/3gpp",      // 3gpp .3gp
			"video/3gpp2"      // 3gpp2 .3g2
		),
		Новый ФиксированнаяСтруктура( // vnd - вендорные файлы
			"oot, oos, oop, oog, ms_excel, ms_excel_2007, ms_powerpoint, ms_powerpoint_2007, ms_word, ms_word_2007, mozilla_xul_xml, google_earth_kml_xml",
			"application/vnd.oasis.opendocument.text",                                   // OpenDocument
			"application/vnd.oasis.opendocument.spreadsheet",                            // OpenDocument
			"application/vnd.oasis.opendocument.presentation",                           // OpenDocument
			"application/vnd.oasis.opendocument.graphics",                               // OpenDocument
			"application/vnd.ms-excel",                                                  // Microsoft Excel файлы
			"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",         // Microsoft Excel 2007 файлы
			"application/vnd.ms-powerpoint",                                             // Microsoft Powerpoint файлы
			"application/vnd.openxmlformats-officedocument.presentationml.presentation", // Microsoft Powerpoint 2007 файлы
			"application/msword",                                                        // Microsoft Word файлы
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document",   // Microsoft Word 2007 файлы
			"application/vnd.mozilla.xul+xml",                                           // Mozilla XUL файлы
			"application/vnd.google-earth.kml+xml"                                       // KML файлы (например, для Google Earth)
		),
		Новый ФиксированнаяСтруктура( // x - нестандартные файлы
			"www_form_urlencoded, dvi, latex, font_ttf, shockwave_flash, stuffit, zip_compressed, rar_compressed, tar, jquery_tmpl, javascript",
			"application/x-www-form-urlencoded", // Form Encoded Data
			"application/x-dvi",                 // DVI
			"application/x-latex",               // LaTeX файлы
			"application/x-font-ttf",            // TrueType (не зарегистрированный MIME-тип, но наиболее часто используемый)
			"application/x-shockwave-flash",     // Adobe Flash
			"application/x-stuffit",             // StuffIt
			"application/x-zip-compressed",      // ZIP
			"application/x-rar-compressed",      // RAR
			"application/x-tar",                 // Tarball
			"text/x-jquery-tmpl",                // jQuery
			"application/x-javascript"           // javascript
		),
		Новый ФиксированнаяСтруктура( // x_pkcs - Public Key Cryptography Standards
			"pkcs12, pkcs7_certificates, pkcs7_certreqresp, pkcs7_mime, pkcs7_signature",
			"application/x-pkcs12",             // p12 и pfx файлы
			"application/x-pkcs7-certificates", // p7b и spc файлы
			"application/x-pkcs7-certreqresp",  // p7r файлы
			"application/x-pkcs7-mime",         // p7c и p7m файлы
			"application/x-pkcs7-signature"     // p7s файлы
		)
	);
КонецФункции

#Область ТИПЫ_MIME
Функция ТипMIMEJSON() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().application.json;
КонецФункции

Функция ТипMIMETextXML() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().text.xml;
КонецФункции

Функция ТипMIMEHTML() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().text.html;
КонецФункции

Функция ТипMIMEOctetStream() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().application.octet_stream;
КонецФункции

Функция ТипMIMEPDF() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().application.pdf;
КонецФункции

Функция ТипMIMEExcel() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().vnd.ms_excel;
КонецФункции

Функция ТипMIMEExcel2007() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().vnd.ms_excel_2007;
КонецФункции

Функция ТипMIMEJPEG() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().image.jpeg;
КонецФункции

Функция ТипMIMEGIF() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().image.gif;
КонецФункции

Функция ТипMIMEPNG() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().image.png;
КонецФункции

Функция ТипMIMEZip() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().application.zip;
КонецФункции

Функция ТипMIMEZipCompressed() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().x.zip_compressed;
КонецФункции

Функция ТипMIMEXWWWFormUrlEncoded() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().x.www_form_urlencoded;
КонецФункции

Функция ТипMIMEMultipartFromData() Экспорт
	Возврат РаботаСHttpПовтИсп.ТипыMIME().multipart.form_data;
КонецФункции
#КонецОбласти

Функция ТипыMIMEРасширенийФайлов() Экспорт
	фРезультат = Новый Соответствие;
	фРезультат.Вставить("jpg",  РаботаСHttpПовтИсп.ТипMIMEJPEG());
	фРезультат.Вставить("jpeg", РаботаСHttpПовтИсп.ТипMIMEJPEG());
	фРезультат.Вставить("png",  РаботаСHttpПовтИсп.ТипMIMEPNG());
	фРезультат.Вставить("gif",  РаботаСHttpПовтИсп.ТипMIMEGIF());
	фРезультат.Вставить("tiff", РаботаСHttpПовтИсп.ТипыMIME().image.tiff);
	фРезультат.Вставить("webp", РаботаСHttpПовтИсп.ТипыMIME().image.webp);
	фРезультат.Вставить("bmp",  РаботаСHttpПовтИсп.ТипыMIME().image.bmp);
	фРезультат.Вставить("xls",  РаботаСHttpПовтИсп.ТипMIMEExcel());
	фРезультат.Вставить("xlsx", РаботаСHttpПовтИсп.ТипMIMEExcel2007());
	фРезультат.Вставить("zip",  РаботаСHttpПовтИсп.ТипMIMEZip());
	фРезультат.Вставить("json", РаботаСHttpПовтИсп.ТипMIMEJSON());
	фРезультат.Вставить("xml",  РаботаСHttpПовтИсп.ТипMIMETextXML());
	фРезультат.Вставить("pdf",  РаботаСHttpПовтИсп.ТипMIMEPDF());
	фРезультат.Вставить("mp4",  РаботаСHttpПовтИсп.ТипыMIME().video.mp4);
	фРезультат.Вставить("webm", РаботаСHttpПовтИсп.ТипыMIME().video.webm);
	фРезультат.Вставить("flv",  РаботаСHttpПовтИсп.ТипыMIME().video.x_flv);
	фРезультат.Вставить("mp3",  РаботаСHttpПовтИсп.ТипыMIME().audio.mpeg);
	фРезультат.Вставить("bat",  РаботаСHttpПовтИсп.ТипыMIME().text.cmd);
	фРезультат.Вставить("sh",   РаботаСHttpПовтИсп.ТипыMIME().text.cmd);
	фРезультат.Вставить("css",  РаботаСHttpПовтИсп.ТипыMIME().text.css);
	фРезультат.Вставить("csv",  РаботаСHttpПовтИсп.ТипыMIME().text.csv);
	фРезультат.Вставить("html", РаботаСHttpПовтИсп.ТипыMIME().text.html);
	фРезультат.Вставить("js",   РаботаСHttpПовтИсп.ТипыMIME().text.javascript);
	фРезультат.Вставить("php",  РаботаСHttpПовтИсп.ТипыMIME().text.php);
	фРезультат.Вставить("md",   РаботаСHttpПовтИсп.ТипыMIME().text.markdown);
	фРезультат.Вставить("txt",  РаботаСHttpПовтИсп.ТипыMIME().text.plain);
	
	Возврат фРезультат;
КонецФункции

Функция ПараметрыPunycode() Экспорт
	Возврат Новый Структура(
		"TMin, TMax, Base, InitialN, InitialBias, Damp, Skew, Delimiter, НаибольшееЧисло",
		1,   // TMin
		26,  // TMax
		36,  // Base
		128, // InitialN
		72,  // InitialBias
		700, // Damp
		38,  // Skew
		"-", // Delimiter
		9999999999 // НаибольшееЧисло
	);
КонецФункции

Функция СостоянияДКАПарсингаПеченья() Экспорт
	Возврат Новый ФиксированнаяСтруктура(
		"ИмяПеченьки, ЗначениеПеченьки, ИмяАтрибута, ЗначениеАтрибута, ИмяИлиЗначениеПеченьки, ИмяПеченькиИлиЗначениеАтрибута",
		"A",  // ИмяПеченьки
		"B",  // ЗначениеПеченьки
		"C",  // ИмяАтрибута
		"D",  // ЗначениеАтрибута
		"AB", // ИмяИлиЗначениеПеченьки
		"AD"  // ИмяПеченькиИлиЗначениеАтрибута
	);
КонецФункции

Функция ДКАПарсингаПеченья() Экспорт
	фРезультат = Новый Соответствие;
	СостоянияДКА = РаботаСHttpПовтИсп.СостоянияДКАПарсингаПеченья();
	ТипыТокенов = РаботаСHttpПовтИсп.ТипыТокеновПарсингаПеченья();
	
	ИмяПеченьки = Новый Соответствие;
	ИмяПеченьки.Вставить(ТипыТокенов.РазделителиПар,       СостоянияДКА.ЗначениеПеченьки);
	ИмяПеченьки.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ИмяПеченьки.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяПеченьки);

	ЗначениеПеченьки = Новый Соответствие;
	ЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиПар,       СостоянияДКА.ЗначениеПеченьки);
	ЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяИлиЗначениеПеченьки);

	ИмяАтрибута = Новый Соответствие;
	ИмяАтрибута.Вставить(ТипыТокенов.РазделителиПар,       СостоянияДКА.ЗначениеАтрибута);
	ИмяАтрибута.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ИмяАтрибута.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяПеченьки);

	ЗначениеАтрибута = Новый Соответствие;
	ЗначениеАтрибута.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ЗначениеАтрибута.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяПеченькиИлиЗначениеАтрибута);

	ИмяИлиЗначениеПеченьки = Новый Соответствие;
	ИмяИлиЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиПар,       СостоянияДКА.ЗначениеПеченьки);
	ИмяИлиЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ИмяИлиЗначениеПеченьки.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяИлиЗначениеПеченьки);

	ИмяПеченькиИлиЗначениеАтрибута = Новый Соответствие;
	ИмяПеченькиИлиЗначениеАтрибута.Вставить(ТипыТокенов.РазделителиПар,       СостоянияДКА.ЗначениеПеченьки);
	ИмяПеченькиИлиЗначениеАтрибута.Вставить(ТипыТокенов.РазделителиАтрибутов, СостоянияДКА.ИмяАтрибута);
	ИмяПеченькиИлиЗначениеАтрибута.Вставить(ТипыТокенов.РазделителиПеченья,   СостоянияДКА.ИмяПеченькиИлиЗначениеАтрибута);

	фРезультат.Вставить(СостоянияДКА.ИмяПеченьки,                    ИмяПеченьки);
	фРезультат.Вставить(СостоянияДКА.ЗначениеПеченьки,               ЗначениеПеченьки);
	фРезультат.Вставить(СостоянияДКА.ИмяАтрибута,                    ИмяАтрибута);
	фРезультат.Вставить(СостоянияДКА.ЗначениеАтрибута,               ЗначениеАтрибута);
	фРезультат.Вставить(СостоянияДКА.ИмяИлиЗначениеПеченьки,         ИмяИлиЗначениеПеченьки);
	фРезультат.Вставить(СостоянияДКА.ИмяПеченькиИлиЗначениеАтрибута, ИмяПеченькиИлиЗначениеАтрибута);
	
	Возврат Новый ФиксированноеСоответствие(фРезультат);
КонецФункции

Функция ТокеныПарсингаПеченьяАтрибуты() Экспорт
	фРезультат = Новый Массив;
	фРезультат.Добавить("expires");
	фРезультат.Добавить("max-age");
	фРезультат.Добавить("domain");
	фРезультат.Добавить("path");
	фРезультат.Добавить("secure");
	фРезультат.Добавить("httponly");
	фРезультат.Добавить("samesite");
	
	Возврат Новый ФиксированныйМассив(фРезультат);
КонецФункции

Функция ТокеныПарсингаПеченьяРазделителиПар() Экспорт
	фРезультат = Новый Массив;
	фРезультат.Добавить("=");
	
	Возврат Новый ФиксированныйМассив(фРезультат);
КонецФункции

Функция ТокеныПарсингаПеченьяРазделителиАтрибутов() Экспорт
	фРезультат = Новый Массив;
	фРезультат.Добавить(";");
	
	Возврат Новый ФиксированныйМассив(фРезультат);
КонецФункции

Функция ТокеныПарсингаПеченьяРазделителиПеченья() Экспорт
	фРезультат = Новый Массив;
	фРезультат.Добавить(",");
	
	Возврат Новый ФиксированныйМассив(фРезультат);
КонецФункции

Функция ТокеныПарсингаПеченья() Экспорт
	фРезультат = Новый Массив;
	ТипыТокенов = РаботаСHttpПовтИсп.ТипыТокеновПарсингаПеченья();
	
	КоличествоЗапятыхВАтрибуте = Новый Соответствие;
	КоличествоЗапятыхВАтрибуте.Вставить("expires", 1);
	КоличествоЗапятыхВАтрибуте.Вставить("max-age", 0);
	КоличествоЗапятыхВАтрибуте.Вставить("domain",  0);
	
	ТокеныТипов = Новый Массив;
	ТокеныТипов.Добавить(Новый Структура("Тип, Токены", ТипыТокенов.Атрибуты,             РаботаСHttpПовтИсп.ТокеныПарсингаПеченьяАтрибуты()));
	ТокеныТипов.Добавить(Новый Структура("Тип, Токены", ТипыТокенов.РазделителиПар,       РаботаСHttpПовтИсп.ТокеныПарсингаПеченьяРазделителиПар()));
	ТокеныТипов.Добавить(Новый Структура("Тип, Токены", ТипыТокенов.РазделителиАтрибутов, РаботаСHttpПовтИсп.ТокеныПарсингаПеченьяРазделителиАтрибутов()));
	ТокеныТипов.Добавить(Новый Структура("Тип, Токены", ТипыТокенов.РазделителиПеченья,   РаботаСHttpПовтИсп.ТокеныПарсингаПеченьяРазделителиПеченья()));

	Для Каждого ТокеныТипа Из ТокеныТипов Цикл
		Для Каждого Токен Из ТокеныТипа.Токены Цикл
			фРезультат.Добавить(
				Новый Структура(
					"Значение, Тип, Смещение, КоличествоЗапятых",
					Токен,           // Значение
					ТокеныТипа.Тип,  // Тип
					СтрДлина(Токен), // Смещение
					КоличествоЗапятыхВАтрибуте.Получить(Токен) // КоличествоЗапятых
				)
			);
		КонецЦикла;
	КонецЦикла;
	
	Возврат Новый ФиксированныйМассив(фРезультат);
КонецФункции

Функция ТипыТокеновПарсингаПеченья() Экспорт
	Возврат Новый ФиксированнаяСтруктура(
		"Атрибуты, РазделителиПар, РазделителиАтрибутов, РазделителиПеченья",
		0, // Атрибуты
		1, // РазделителиПар
		2, // РазделителиАтрибутов
		3  // РазделителиПеченья
	);
КонецФункции

Функция АтрибутыКакСвойства() Экспорт
	фРезультат = Новый Соответствие;
	фРезультат.Вставить("expires", "Срок");
	фРезультат.Вставить("max-age", "ВремяАктуальности");
	фРезультат.Вставить("path",    "АдресРесурса");
	фРезультат.Вставить("secure",  "ЗащищенноеСоединение");
	
	Возврат Новый ФиксированноеСоответствие(фРезультат);
КонецФункции

Функция СвойствоПеченькаСрок() Экспорт
	Возврат "Срок";
КонецФункции

Функция СвойствоПеченькаВремяАктуальности() Экспорт
	Возврат "ВремяАктуальности";
КонецФункции

Функция СвойствоПеченькаАдресРесурса() Экспорт
	Возврат "АдресРесурса";
КонецФункции

Функция СвойствоПеченькаЗащищенноеСоединение() Экспорт
	Возврат "ЗащищенноеСоединение";
КонецФункции
