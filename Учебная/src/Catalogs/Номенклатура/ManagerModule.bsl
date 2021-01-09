
Процедура ПечатьНаСервереММ(ТабДок)   Экспорт
	Макет = Справочники.Номенклатура.ПолучитьМакет("Макет");
	ОблШапка = Макет.ПолучитьОбласть("Шапка");
	ОблСтрока = Макет.ПолучитьОбласть("Таблица");
	
	ТабДок.Вывести(ОблШапка);
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Номенклатура.Код КАК Код,
		|	Номенклатура.НазваниеКомпании КАК НазваниеКомпании,
		|	Номенклатура.ЦенаПродажи КАК ЦенаПродажи
		|ИЗ
		|	Справочник.Номенклатура КАК Номенклатура
		|ГДЕ
		|	НЕ Номенклатура.ЭтоГруппа";
	

	Результат = Запрос.Выполнить();
	       
	Выборка = Результат.Выбрать();
	Пока Выборка.Следующий() Цикл
		        			
		ОблСтрока.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(ОблСтрока);
		                            		
		Сообщить (Выборка.Наименование);
	КонецЦикла;	
КонецПроцедуры
