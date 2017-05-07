puts "1.１０との比較"
size = 6
if size >10
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
c = a
a = b
b = c
p "a: #{a}"
p "b: #{b}"

puts "\n4.0~9まで出力"
0.upto(9) do |i|
    p i
    i += 1
end

puts "\n5.*を増やして出力"
def putstar(number)
    1.upto(number) do |i|
        puts "*" * i
    end
end

putstar(5)

puts "\n6.123を配列numbersに"
numbers = [1,2,3]
p numbers

puts "\n7.numbersを出力"
numbers.each do |number|
    puts "Number: #{number}"
end

puts "\n8.numbersへ新規追加のみ許可"
q = 0
add = 4

# 同じものがあればqを1に
numbers.each do |number|
if number == add
    q = 1
end
end

# qが0なら格納
if q == 0 
    numbers << add
end

numbers.each do |number|
    puts "Number: #{number}"
end

puts "\n9.numbers配列の合計"
sum = 0
numbers.each do |number|
  sum += number
end
puts sum

puts "\n10.numbers配列の平均"
puts sum.to_f / numbers.size

puts "\n11.numbers配列15まで加算"
numbers = [1,2,3,4,5,6,7]
p numbers
sum = 0
numbers.each do |number|
  if sum < 15
    p number
    sum += number
  else
    break
  end
end

puts "\n12.連想配列"
numbers2 = {1 => 1, 2 => 2, 3 => 3}
p numbers2

puts "\n13.key2の取り出し"
p numbers2[2]

puts "\n14.key4を追加"
numbers2[4] = 4
p numbers2

puts "\n15.出力"
numbers2.each do |name,number|
  puts "key#{name} is #{number}" 
end

puts "\n16.全て２倍して出力"
numbers2.each do |name,number|
  puts "key#{name}*2 = #{number * 2}" 
end

puts "\n17.０〜１００のFizzBuzz問題"
1.upto(100) do |i|
if i % 3 == 0 && i % 5 == 0
  puts "fizzbuzz"
elsif i % 3 != 0 && i % 5 ==0
  puts "buzz"
elsif i % 3 == 00 && i % 5 != 0
  puts "fizz"
else
  puts i
end
end

puts "\n18.配列１２３から配列２４６の作成"
a1 = [1,2,3]
a2 = Array.new
a1.each do |num|
  num *= 2
  a2 << num
end
p a2

puts "\n19.配列に存在するか確認する"
numbers3 = [3,2,8]
p numbers3
def newadd(array,addnum)
  x = false
array.each do |orinum|
  if addnum == orinum
    x = true
    break
  end
end
puts "#{addnum}は配列に存在する。=>#{x}"
end
newadd(numbers3,3)

puts "\n20.配列から最小を見つける関数"
p numbers3
def min(array)
  min = array[0]
  array.each do |num|
    if num < min
      min = num
    end
  end
  puts "最小＝#{min}" 
end
min(numbers3)

puts "\n21.配列内の重複の有無"
numbers4 = [1,3,2,3,8,3,2]
p numbers4
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
exist(numbers4)

puts "\n22.重複している値の出力"
def exist2(array)
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
exist2(numbers4)

puts "\n23.重複する回数の出力"
def exist3(array)
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
exist3(numbers4)
