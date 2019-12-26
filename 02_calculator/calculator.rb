#write your code here
def add(num1,num2)
    num1 + num2
end

def subtract(num1,num2)
    num1 - num2
end

def sum(arr)
    sum = 0
    arr.each {|i| sum += i}
    return sum
end

def mult(arr)
    result = 1;
    arr.each {|i| result *= i}
    return result
end

def pow(num1,num2)
    num1**num2
end

def fact(num)
    if num == 0
        return 1
    end
    return fact(num-1) * num
end