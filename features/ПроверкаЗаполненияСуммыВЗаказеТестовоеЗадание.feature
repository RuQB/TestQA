﻿#language: ru

@tree

Функционал: Проверка расчета суммы

Как Администратор я хочу в Заказе
проверить, что сумма считается верно, при изменении количества или цены 
чтобы избежать ошибок  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И мне доступна роль "Администратор"
	

Сценарий: Проверка расчета суммы в документе Заказ

Когда В панели разделов я выбираю 'Закупки'
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И в таблице "Список" я активизирую поле с именем "Склад"
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ * от *'
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '45,00'
И в таблице "Товары" я завершаю редактирование строки
* Проверка изменения цены
	Тогда таблица "Товары" содержит строки:
	| 'Товар'   | 'Цена'  | 'Количество' | 'Сумма'    |
	| 'Масло'   | '45,00' | '100'        | '4 500,00' |
* Проверка изменения количества
	Когда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'  |
		| '50'         | '2 750,00' | 'Ряженка' | '55,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '120'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" содержит строки:
			| 'Товар'   | 'Цена'  | 'Количество' | 'Сумма'    |
			| 'Ряженка' | '55,00' | '120'        | '6 600,00' |

	Когда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '120'
	И в таблице "Товары" я завершаю редактирование строки
		
	
	Когда открылось окно 'Заказ * от * *'
	И Я закрываю окно 'Заказ * от * *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
			

Сценарий: Проверить возможность ввести количество, когда Номенклатура - услуга

	


