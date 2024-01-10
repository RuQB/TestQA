#language: ru

@tree

Функционал: Создание элементов номенклатуры в цикле

Как Администратор я хочу
создать 10 элементов номенклатура
чтобы уменьшить строки кода   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _001Создание номенклатуры в цикле

//И для каждой строки таблицы 'List' я выполняю
И Я запоминаю в переменную "Шаг" значение 1
//И Я запоминаю в переменную "RefValue" значение "e1cib/data/Catalog.Items?ref="
//И Я запоминаю в переменную "RefUID" значение '{StrReplace(New UUID,"-", "")}'
И я делаю 10 раз 
	И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
	И Я запоминаю значение выражения '"Наименование "+$Шаг$ ' в переменную "НаименованиеНоменк"

	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en'       | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID,"-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58791'  | ''            | '$НаименованиеНоменк$' | ''                 | ''               | ''               |          |          |          | 0.21     |         |



	
