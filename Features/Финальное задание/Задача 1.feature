#language: ru

@tree

Функционал: проверка возможности прикрепления файла картинки

Как Тестировщик я хочу
добавить картинку на элемент справочника Товары
чтобы убедиться, что картинка добавляется и отображается

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание файла картинки
	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'   | 'Подпись'                                                   | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=985c54e1ade5e0a411ed9ee06edf9bec' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df2' | '' | 'Кросс'        | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcNs2WAgPe791crKSvpWJgbGpkZGRjoGqdaWuiamKQa6CZZGhvqJicnGaaYp6Ykm1ia6/ByVRuCCINaXi4QAhmwkgVi0P8b/x8wCHi5eboxMDIyMDACIcP/2wwtDJxs7BzsbJwc7BxcXJzcvGL8vDw8vNIiogJiCrJKSgqy8vIqGiY6KmqG6vLyura6hqbmVlZWytr2LvYWziaWVuaMXFxcvDy8Uvz8Uuaq8qrmJIP/BxgEORhiGGKYGZUYmAQZmQUZ/x9hkAY6kIkZ5FQ4YGFlZmNnZAJKGgswMLIwMrEAATtEBUgxiyCrIpuQsKFjYGKhUuPEhSJiykaiTs5BRU0X2YGaxBgZUYwD6QIZJiaIIQ50wS0GHmagoYLMggz2DG9edDR0dHAQIrpsuwsdPkrP/dWSYsJ3+Mz6VZuPG3Mkn+6ufr6L5wRYTbfM5aPM3M+nTty4WGXvAQaBFNegdyoXb8nEVjaYpEw6nvy69yr/8/XH7tfmqvVsdrr/mu2zTOWnH/ylGrffRrYtLfdPCzsqXL33eOr67JrQuMVpfeqmjWt1X1seTn+QPKVaZq17h9K1/K3fXpmveN503cjz4NTF+/XMssv/3Xu1uem1323zY4sjNp5NSeydObv37m37R3ZdgUpf9wb78c57vU7iierRAzvPyq1T3r7Nf9GGh/dsF3sdvlk/y+NJdmVaN/v0fUe0xD6q7VHN1nKXXcl53nsyu1yL7N7zf4NLpUqWL/h969h0meKNey51rVO9H9izTDvv+o7n7lIh8w+/3/p5P++B5EZe2z9mFufEj/8rVT155Nvam682Xcmt8bG0NWueYJd488upp1e//Lo1OzbZf3nhhi0TlOXlLST+JTcYTzKcevEHW88ul2OWqaqTPDzYa2oUF6T/jX4yVfqXki7Du52hc7O+dn+6MU3bZ86e7dMM6nhkiv5sbL0atvPIHNvowMKNoqdLcmTYT8YXfHx1eVutG3/ej2C3xV7XFsmrTLxYMjf+nmo/470lOcavW7vO3Fqtc/J0VNTbF9PCm7bEM6tYW7k//i5Txp74PWDW6VtqS7M/GsbtjJnj9GzPjuQz7RVzarZHmNrWR3R53BYxPHI8f7vJ0sV2dvKKT5YIaWVEza3xkzaPMJ/i9bKhUG6xxft9/LO2LjV9c0ovvFrmgMEDs/JS9s/yJjFTlF75XUvzXJ7v23zm03e7g66Xfkz6MzGi9sfjkl7mxcLJT55Z3pku2/B7pajlr9ashm1Wn7fwc7yyl/x+qNc/ZG+d+7Zt8xjTLHddLvq78cVe3rQl93Ljw15u+LYyso/nW/En7n0Hw19+urvY9criyYstqued7H916OODu9/zbnwIU07o3bWh/8vrCxnSbF9lCr9FvubNymRONV1tUl5sZ16zR1Ssc/0rYz5vkTPnJZ9lJHYev23P+Vtn0vWNK7NLn13SfDUhopJn0zunMzwJMnM32ZYpaLJHr9SP2pKvIi7Wl2TzJyw1+PCtkF05Rruubo/aaMh6XpeXlyHnAts9lefHtW7mCAoyCgoIM59QUvjMfEK/wKZJiUlJQUmJ//9NAA==' | 'кросс.jpeg' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN42CAgPe791crhSrVAgA=' | 'False'    | 'False'      | 'False'       |

Сценарий: проверка добавления картинки
* открытие элемента справочника 
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df2"
* проверка очистики существующей картинки
	И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
	И у элемента с именем 'Картинка' я жду значения '' в течение 10 секунд	
* проверка добавления картинки
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Кросс'        |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И у элемента с именем 'Картинка' я жду значения 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=985c54e1ade5e0a411ed9ee06edf9bec' в течение 10 секунд
	И я закрываю все окна клиентского приложения