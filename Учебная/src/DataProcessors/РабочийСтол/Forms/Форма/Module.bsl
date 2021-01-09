
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ТекущаяДата = ТекущаяДата();
КонецПроцедуры


&НаКлиенте
Процедура ВалютаПриИзменении(Элемент)
	Курс = ПолучитьКурсВалют (Валюта);
	// Вставить содержимое обработчика.
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьКурсВалют(Валюта)
	Структура = Новый Структура;
	Структура.Вставить("Валюта", Валюта);
	
	Последнее = РегистрыСведений.КурсыВалют.ПолучитьПоследнее(ТекущаяДата(), Структура);
	
	Возврат Последнее.Курс;


КонецФункции // ПолучитьКурсВалют()
