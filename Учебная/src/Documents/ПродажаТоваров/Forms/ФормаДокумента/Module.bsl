
&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	РассчитатьСумму()
КонецПроцедуры

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	РассчитатьСумму()
КонецПроцедуры


&НаКлиенте
Процедура РассчитатьСумму()
Стр = Элементы.Товары.ТекущиеДанные;
Стр.Сумма = Стр.Цена * Стр.Количество;
	

КонецПроцедуры 


&НаКлиенте
Процедура ТоварыНоменклатураПриИзменении(Элемент)
	Стр = Элементы.Товары.ТекущиеДанные;
	Стр.Цена = ПолучитьЦенуТовара(Стр.Номенклатура)
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьЦенуТовара(Товар)

	   Возврат Товар.ЦенаПокупки;
	
КонецФункции


&НаСервере
Процедура СгруппироватьТЧНаСервере()
	ТЗ = Объект.Товары.Выгрузить();
	ТЗ.Свернуть("Номенклатура", "Количество, Сумма");
	Объект.Товары.Загрузить(ТЗ);
КонецПроцедуры


&НаКлиенте
Процедура СгруппироватьТЧ(Команда)
	СгруппироватьТЧНаСервере();
КонецПроцедуры

