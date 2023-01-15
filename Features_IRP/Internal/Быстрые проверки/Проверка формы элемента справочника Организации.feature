﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: Проверка формы элемента справочника Организация

Как Тестировщик я хочу
проверить доступность вкладок Валюты и Вид Налога
чтобы у пользователя была возможность заполнить данные вкладки для собственных организаций

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка доступности вкладок налоги и валюты в справочнике Организации
* открытие элемента
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
* установка галочки и проверка элементов
	И я устанавливаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" присутствует на форме
	И элемент формы "Вид налога" присутствует на форме
* снятие галочки и проверка элементов
	И я снимаю флаг "Наша организация"
	И элемент формы "Валюты" существует и невидим на форме
	И элемент формы "Вид налога" существует и невидим на форме

Сценарий: проверка функциональной опции Использовать Организации
	И я закрываю все окна клиентского приложения
	И Я устанавливаю в константу "UseCompanies" значение "Ложь"
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'	
	И элемент формы "Организация" отсутствует на форме

Сценарий: проверка заполнения справочника Организация
	И я закрываю все окна клиентского приложения
* создание элемента
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'Description_ru' я ввожу текст 'Тестовая организация'
	И из выпадающего списка с именем "Type" я выбираю точное значение 'Организация'
	Когда открылось окно 'Организация (создание) *'
	И я нажимаю на кнопку с именем 'FormWrite'	
* проверка заполнения полей
	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовая организация'
	Тогда элемент формы с именем "Type" стал равен 'Организация'
* проверка после записи и открытия
	И я нажимаю на кнопку 'Записать и закрыть'
//	Когда открылось окно 'Организации'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'         |
		| 'Тестовая организация' |
	И в таблице "List" я выбираю текущую строку
* проверка заполнения полей
	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовая организация'
	Тогда элемент формы с именем "Type" стал равен 'Организация'