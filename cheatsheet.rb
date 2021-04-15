# encoding: utf-8

# @@var - переменная класса, доступна для каждого объекта класса. Принадлежит классу.
# Используется когда нужна информация о классе. Наследуются и тд

#@var - инстанс переменная или переменная экзепляра, работает в классе, но не наследуется


begin
  raise NoMemoryError, 'Кончилась память'
rescue NoMemoryError => exception_variable
  puts 'Ошибка NoMemoryError', exception_variable
else
  puts 'Код отработал без ошибок'
ensure
  puts 'Этот код выполнится в любом случае'
end



42.class                          # => Fixnum
999999999999999999999.class       # => Bignum
999_999_999_999_999_999_999.class # => Bignum
3.6.class                         # => Float
45.23e2.class                     # => Float

a = 42.to_s 
a.class # => String



1 + 1   # => 2
8 - 1   # => 7
10 * 2  # => 20
35 / 5  # => 7
2 ** 5  # => 32
Многие функции сгруппированы в модуле Math:

Math.sqrt(64)         # => 8.0
Math.log(8, 2)        # => 3.0
Math.sin(Math::PI/2)  # => 1.0



word = "интерполяцию"

string1 = 'допускает экранирование \', но не понимает \n других последовательностей'
string2 = "допускает\nлюбые\tуправляющие последовательности и #{word}"
string3 = %q[Экранирует "двойные" и 'одинарные' кавычки, но не понимает \n других последовательностей]
string4 = %Q[Экранирует "двойные" и 'одинарные' кавычки и допускает\nлюбые\tуправляющие последовательности и #{word}]
string5 = `ls -a`  # команда ОС, выведет список файлов в каталоге


text = <<MARKER
маркер 
может 
быть
любым
MARKER


puts :authorized.class   # => Symbol

status = :authorized

status == :authorized     # => true
status == 'authorized'    # => false
status == :guest          # => false



Массивы
Массивы в Ruby относятся к классу Array и могут содержать элементы с разными типами данных. Индексация начинается с нуля.

Создание
my_array = [9, "eight", false, nil, 3.0]
empty_array = Array.new(5)      # => [nil, nil, nil, nil, nil]
true_array = Array.new(5, true) # => [true, true, true, true, true]
Узнать длину массива:

my_array.length
my_array.count
my_array.size
Получение элементов
my_array[1]         # => eight
my_array.[] 1       # => eight

my_array[3].class   # => NilClass
my_array[33].class  # => NilClass
my_array.at(4)      # => 3.0

my_array[-3] # => false 
my_array.last # => 3.0 
my_array.first # => 9

Получить диапазон элементов:

my_array[1, 2]                   # => ["eight", false]
my_array[0..4]                   # => [9, "eight", false, nil, 3.0]
my_array[0...4]                  # => [9, "eight", false, nil]
my_array.values_at(1, 4, 1..2)   # => ["eight", 3.0, "eight", false]
my_array.take(3)                 # => [9, "eight", false]
Добавление
test_array = [42]

# в конец
test_array << 43          # => [42, 43]
test_array.push(46)       # => [42, 43, 46]

# в начало
test_array.unshift(41)    # => [41, 42, 43, 46]

# на любую позицию
test_array.insert(3, 44, 45)   # => [41, 42, 43, 44, 45, 46]
Удаление
new_array = [1, 2, 3, 3, 3, 4, 5, nil, nil, 6]

# последнего элемента
last = new_array.pop             # => 6
print new_array                  # => [1, 2, 3, 3, 3, 4, 5, nil, nil]

# первого элемента
first = new_array.shift          # => 1
print new_array                  # => [2, 3, 3, 3, 4, 5, nil, nil]

# с указанной позиции
item = new_array.delete_at(2)    # => 3
print new_array                  # => [2, 3, 3, 4, 5, nil, nil]

# удаление конкретного значения
value = new_array.delete(3)      # => 3
print new_array                  # => [2, 4, 5, nil, nil]

# удаление nil
array_compact = new_array.compact # без изменения исходного массива
print array_compact               # => [2, 4, 5]
print new_array                   # => [2, 4, 5, nil, nil]
array_compact = new_array.compact!  # с изменением исходного массива
print array_compact                 # => [2, 4, 5]
print new_array                     # => [2, 4, 5]

# удаление повторяющихся значений
double_array = [2, 3, 4, 5, 3, 6, 7, 5, 5]
uniq_array = double_array.uniq # => [2, 3, 4, 5, 6, 7]


Хеши
Структуры данных, состоящие из пар ключ-значение. В качестве ключа обычно выступает строка или символ (с версии 1.9):

hash = {'color' => 'green', 'number' => 5}
hash.keys       #=> ['color', 'number']

#хеш с символьными ключами 
symbol_hash = { key1: 'value1', key2: 'value2' } 
#хеш со смешанными ключами 
mixed_hash = { :key1 => 'value1', 'key2' => 'value2' }
Зная ключ, можно получить связанное с ним значение. Если указанного ключа нет, вернется nil.

hash['color']    #=> 'green'
hash['number']   #=> 5
hash['nothing']  #=> nil
Логические выражения
2 == 1                  # => false
[1, 2, 3] == [1, 2, 3]  # => true

1 != 1  # => false
2 != 1  # => true

!true   # => false
!0      #=> false

1 < 10  # => true
1 > 10  # => false
2 <= 2  # => true
2 >= 2  # => true

1 <=> 1   # => 0, числа равны
1 <=> 2   # => -1, левое число меньше
2 <=> 1   # => 1, левое число больше
Ruby-шпаргалка по функциям
Управляющие конструкции
Условия
if и unless
if условие then
  # ...
else 
  # ...
end

unless условие then
  # ...
else 
  # ...
end

x = if a > 0 then b else c end
x = unless a <= 0 then b else c end


case
period = 2.3

case period
  when 0
    puts "Beginner"
  when 0..1
    puts "Junior"
  when 1..3
    puts "Middle"
  when 3..6
    puts "Senior"
  else
    puts "Super!"
end


Циклы
while и until
counter = 1
while counter <= 5
  puts "итерация #{counter}"
  counter += 1
end

counter = 0 
until counter == 5
  puts "значение счетчика #{counter}" 
  counter += 1 
end



for
for counter in 1..5
  puts "итерация #{counter}"
end
Вместо цикла for в Ruby удобнее применять итераторы.

Итераторы
Методы чисел
# 3 итерации
3.times do |i|
  puts "итерация #{i}"
end

# от 0 до 3
0.upto(3) { |i| puts "значение счетчика #{i}" }
each
Метод each можно вызвать для массива, хеша или диапазона значений. Он принимает блок кода, который будет выполнен для каждого элемента.

(1..5).each do |counter|
  puts "итерация #{counter}"
end

(1..5).each { |counter| puts "итерация #{counter}" }

[1, 2, 3].each { |element| puts "Элемент #{element}" }

{ "age": 18, "name": "John" }.each do |key, value|
  puts "Свойство #{key} имеет значение #{value}"
end
Вариация метода each для учета индексов в массиве – each_with_index:

["крокодилы", "бегемоты", "обезьяны", "кашалоты"].each_with_index do |element, index|
  puts "№ #{index} - #{element}"
end
Другие перебирающие методы
# получение суммы всех элементов
(5..10).reduce(:+)                            # => 45
(5..10).inject { |sum, n| sum + n }           # => 45

# создание массива
(1..4).map { |i| i*i }                          # => [1, 4, 9, 16]
(1..4).collect { "cat"  }                       # => ["cat", "cat", "cat", "cat"]
Обо всех доступных методах перечисляемых объектов (enumerable) можно прочитать в документации.




Функции
Функции всегда возвращают значение последнего вычисленного выражения. При вызове можно не использовать скобки, если выражение однозначно. Параметры разделяются запятой.

def double(x)
  x*2             # значение этого выражения будет возвращено
end

double(2)          # => 4
double 3           # => 6 

double double 4    # => 16

def sum(x, y)
  x + y
end

sum 3, 4            # => 7

sum sum(3, 4), 5    # => 12
Чтобы собрать список параметров в один массив, используется splat-оператор (*).

def foo(*array)
  print array
end

foo("arg1", 2, false) # => ["arg1", 2, false]
Оператор yield позволяет передать внутрь функции любой блок кода.

def surround
  puts "{"
  yield 
  puts "}"
end

surround { puts 'hello world' }

# => {
# => hello world    
# => }



Ruby-шпаргалка по классам
Классы объявляются с помощью ключевого слова class, принадлежат к типу Class, а их имена являются глобальными константами.

# ключевое слово class
class Human end

Human.class   # => Class
Переменные
Переменные класса начинаются с @@.
Переменные экземпляров – с  @.
Доступ к переменным возможен только через методы. Можно создавать геттеры и сеттеры вручную или воспользоваться встроенными акцессорами:

class Human
  @@species = "H.sapiens"    # переменная класса
  NAME = "Human Class"       # константа класса

  def initialize(name, age=0) 
    @name = name             # переменная экземпляра
    @age = age               
  end

  def species                # геттер для переменной класса
    @@species
  end

  def name=(name)            # сеттер для @name
    @name = name
  end

  def name                    # геттер для @name
    @name
  end

  attr_reader :name, :age      # геттеры можно задать так
  attr_writer :name, :age      # а сеттеры так

  attr_accessor :name, :age    # или все сразу

end



Методы
Модификаторы:

public;
private;
protected.
Модификатор влияет на все перечисленные или объявленные после него методы.

Методы класса должны начинаться с self. Вызвать их можно только из самого класса.

class Human

  # ...

  def self.say(message)  # метод класса
    puts "#{message}"
  end

  def method1
    # ...
  end

  def method2
    # ...
  end

  def method3
    # ...
  end

  private :method1, :method2  # приватные методы
  protected :method3          # защищенный метод
  public                      # все нижележащие методы публичные

  def method4
    # ...
  end

end
Экземпляры классов
john = Human.new("John Dow", 30)

john.species         # => "H. sapiens"
john.name            # => "John Doe"
john.name = "John William Doe"
john.name            # => "John William Doe"

Human.say("Hello")   # => "Hello"
Наследование
Класс-наследник получает доступ ко всем методам и переменным класса родителя. Методы родителя могут перекрываться одноименными методами наследника. Но к ним можно обратиться с помощью ключевого слова super.

class Doctor < Human
  def examinePatient  # собственный метод класса
    # ...
  end

  def method1          # метод перекрывает родительский
    super.method1()
    # ...
  end
end

doc = Doctor.new("Gregory House")
puts doc.species       # H. Sapiens, переменная класса-родителя
Множественное наследование в Ruby отсутствует, вместо него следует использовать примеси.

Модули
Модули в Ruby очень похожи на классы, но не могут наследоваться или создавать экземпляры. Их используют в основном для создания примесей или пространств имен.

module ModuleExample
  def foo
    'foo'
  end
end
Если подключить модуль с помощью include, его методы добавятся экземплярам класса. Если воспользоваться оператором extend – самому классу.

class Person
  include ModuleExample
end

class Book
  extend ModuleExample
end

Person.foo     # => NoMethodError: undefined method `foo' for Person:Class
Person.new.foo # => 'foo'
Book.foo       # => 'foo'
Book.new.foo   # => NoMethodError: undefined method `foo'



puts Math::PI
#=> 3.141592653589793
PI -это константа , принадлежащая модулю Math . Доступ к константам осуществляется через оператор :: #



# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = ENCODING

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX



Ruby Global Variables $global_variable = 10
Ruby Instance Variables @cust_id = id
Ruby Class Variables @@no_of_customers = 0

Ruby Pseudo-Variables
They are special variables that have the appearance of local variables but behave like constants. You cannot assign any value to these variables.

self − The receiver object of the current method.

true − Value representing true.

false − Value representing false.

nil − Value representing undefined.

FILE − The name of the current source file.

LINE − The current line number in the source file.