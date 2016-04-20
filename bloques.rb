# def do_this_block
   
#     block = yield
# end

# num = 5
# puts do_this_block { num + 1 }

# name = "Fernando"

# do_this_block do 
#     puts name * 2
# end

puts "--------- Tiempo de ejecucion en un metodo"


def time_sleep
  yield

    def factorial(num)
      return 1 if num == 0 || num == 1

      contador = 1
      numero_factorial = 0
      res = 1

      while contador <= num
        res = res * contador
        numero_factorial = res
        contador += 1
      end

      numero_factorial
    end

  yield
end

time_sleep do
  p Time.now 
  sleep 2
end

p factorial(5)

def time_now
  yield

    def factorial_recursiva(num)
      return 1 if num == 0 || num == 1
      factorial_recursiva(num - 1 ) * num
    end 
  
  yield
end

time_now do
  p Time.now 
  # sleep 1
end

p factorial_recursiva(5)

