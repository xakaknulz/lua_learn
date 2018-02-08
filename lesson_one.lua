function borderline()
	print('###########################################################')
end

borderline()

function bottles(i)
	print('В ящике осталось ' .. i .. ' бутылок пива')
end

-- цикл от 10 до 1 с шагом -1
for i = 10, 1, - 1 do
	bottles(i)
end

borderline()

-- аналогично предыдущему варианту
i = 10
while i ~= 0 do
	bottles(i)
	i = i - 1
end

borderline()

-- цикл с пост-условием, выполнять пока условие ложно
-- выполняется всегда хотя бы один раз вне зависимости от условия
i = 10
repeat
	bottles(i)
	i = i - 1
until i < 1 -- !!! повторять ПОКА i НЕ будет меньше 1

borderline()

-- пример работы ввода/вывода
function guess_number()
	user_number = io.read('*number') -- io стандартный модуль для работы с вводом/выводом
	if not user_number then
		print('какое же это число? это фигня какая-то =(')
	elseif user_number < 0 then
		print('Воу! Это же отрицательное число!')
	elseif user_number ~= 0 then
		print('Это число явно не нуль, значит натуральное, да?')
	else
		print('Подозреваю ошибку деления на это число')
	end
end

--guess_number()

-- еще один пример io, обрати внимание, что io.write не переносит
-- каретку на следующую строку
function input_number()
	num = 0
	print('Уважаемый,')
	io.write('Введика число:')
	num = io.read('*number')
	io.flush()
	return num
end
print(input_number())
