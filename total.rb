 def total(from, to)
   result = 0                # 合计值
   from.upto(to) do |num|    # 处理从 from 到 to 的值
       if block_given?         #   如果有块的话
         result += yield(num)  #     累加经过块处理的值
       else                    #   如果没有块的话
         result += num         #     直接累加
       end
     end
   return result             # 返回方法的结果
 end

 p total(1, 10)                  # 从 1 到 10 的和 => 55
 p total(1, 10){|num| num ** 2 } # 从 1 到 10 的 2 次幂的和 => 385