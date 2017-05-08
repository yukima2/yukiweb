puts "1.１０との比較"
size = 6
if size > 10
    puts "large"
elsif size == 10
    puts "eq"
else
    puts "small"
end

puts "\n2.abの小さい方出力"
a = 1
b = 2
if a > b
    p "b: #{b}"
else
    p "a: #{a}"
end

puts "\n3.abを入れ替えて出力"
p "a: #{a}"
p "b: #{b}"
a, b = b, a
p "a: #{a}"
p "b: #{b}"

puts "\n4.0~9まで出力"
0.upto(9) do |i|
    p i
    i += 1
end

puts "\n5.*を増やして出力"
def star_output(number)
    1.upto(number) do |i|
        puts "*" * i
    end
end

star_output(5)

puts "\n6.123を配列numbersに"
a, b, c = 1, 2, 3
numbers = [a, b, c]
p numbers

puts "\n7.numbersを出力"
numbers.each { |number| p number }

puts "\n8.numbersへ新規追加のみ許可"
add_number = 4

numbers.each do |number|
  if numbers.include?(add_number) == false
    numbers << add_number
  end
end
p numbers

puts "\n9.numbers配列の合計"
def sum(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  p sum
end
sum(numbers)

puts "\n10.numbers配列の平均"
def ave(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  p sum.to_f / array.size
end
ave(numbers)


puts "\n11.numbers配列15まで加算"
numbers = [1, 2, 3, 4, 5, 6, 7]
p numbers
def sum_to15(array)
sum = 0
  array.each do |number|
    if sum < 15
      p number
      sum += number
    else
      break
    end
  end
end
sum_to15(numbers)

puts "\n12.連想配列"
hash_numbers = {":key1" => 1, ":key2" => 2, ":key3" => 3}
p hash_numbers

puts "\n13.key2の取り出し"
p hash_numbers[":key2"]

puts "\n14.key4を追加"
hash_numbers[":key4"] = 4
p hash_numbers

puts "\n15.出力"
hash_numbers.each do |name,number|
  puts "#{name} is #{number}" 
end

puts "\n16.全て２倍して出力"
hash_numbers.each do |name,number|
  puts "key#{name}*2 = #{number * 2}" 
end

puts "\n17.０〜１００のFizzBuzz問題"
1.upto(100) do |i|
  if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"
  elsif i % 5 ==0
    puts "buzz"
  elsif i % 3 == 0
    puts "fizz"
  else
    puts i
  end
end

puts "\n18.配列１２３から配列２４６の作成"
a1 = [1, 2, 3]
p a1.map { |num| num *= 2 }

puts "\n19.配列に存在するか確認する"
numbers = [3,2,8]
p numbers
def newadd(array, input_number)
  x = false
array.each do |origin_number|
  if input_number == origin_number
    x = true
    break
  end
end
puts x
end
newadd(numbers,3)

puts "\n20.配列から最小を見つける関数"
p numbers
def min(array)
  min = array[0]
  array.each do |num|
    if num < min
      min = num
    end
  end
  puts min
end
min(numbers)

puts "\n21.配列内の重複の有無"
numbers = [1, 3, 2, 3, 8, 3, 2]
p numbers
def exist(array)
  test = {} 
  x = false
  array.each do |number|
    test.each do |key,value|
    if key == number
      x = true
    end
  end
    test[number] = 0
end
    p x
end
exist(numbers)

puts "\n22.重複している値の出力"
def exist_value(array)
  test = {} 
  array.each do |number|
        x = false 
    test.each do |key,value|
    if key == number
      x = true
    end
  end
    if x == true
    test[number] = 1
    elsif
    test[number] = 0
    end
end
    test.each do |key,value|
        if value == 0
            test.delete(key)
        end
    end
    p test.keys.sort
end
exist_value(numbers)

puts "\n23.重複する回数の出力"
def exist_time(array)
  test = {} 
  array.each do |number|
        x = false 
    test.each do |key,value|
    if key == number
      x = true
    end
  end
    if x == true
    test[number] += 1
    elsif
    test[number] = 1
    end
end
    test.each do |key,value|
        if value == 1 
            test.delete(key) 
        end
    end
    p test.sort
end
exist_time(numbers)
