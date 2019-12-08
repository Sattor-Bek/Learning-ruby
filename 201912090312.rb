def series_sum_st(n)
    if n == 0
      return '0,00'
    elsif n == 1
        n = '1.00'
        return n
    else
        numerator = 1
        count = n
        num = 0

        n.times do
            dominator = 1 + 3 * (count = count - 1)
            obj = Rational(numerator, dominator).to_f
            num = num + obj
        end
        answer = num.round(2).to_s
        if answer[3].nil?
            answer = "#{answer}0"
        end
        return answer
    end
end

def series_sum(n)
  return "0.00" if n == 0
  '%.2f' % (0..n-1).to_a.map { | x | (1.0/(x*3+1))}.reduce(:+)
end
