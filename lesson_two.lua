print("5" + "6") -- вернёт 11
print("5" + 6.5 + "6") -- вернёт 17.5
print("5" + 6,5 + "6") -- вернёт 11 и через таб еще 11
print(5 .. 6) -- вернёт 56

string_a = "1"
int_b = 2
print(string_a > tostring(int_b)) -- false
--print(string_a > int_b) -- error
print(tonumber(string_a) > int_b) -- false

function abc()
	print("abc")
end
print(tostring(abc)) -- 0x1901540 или другой адрес
print(tonumber(abc)) -- nil

if string_a == "1" and int_b == 2 then 
	print("pass") 
end

if string_a == "1" or int_b == 2 then 
	print("pass") 
end

if not somevar then -- не объвлена, поэтому nil
	print("pass")
end



