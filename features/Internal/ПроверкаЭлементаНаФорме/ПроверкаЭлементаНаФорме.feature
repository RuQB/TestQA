﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
Тогда открылось окно 'Заказы покупателей'
И я нажимаю на кнопку с именем 'FormCreate'
Тогда открылось окно 'Заказ покупателя (создание)'
И элемент формы "Контрагент" не доступен
И я нажимаю кнопку выбора у поля с именем "Partner"
Тогда открылось окно 'Партнеры'
И в таблице "List" я активизирую поле с именем "Description"
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя (создание) *'


Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
И элемент формы "Контрагент"  доступен
Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'

И я закрываю все окна клиентского приложения
