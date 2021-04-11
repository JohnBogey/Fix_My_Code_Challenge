###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        puts "{"
        puts i_arg
        if result[i] < i_arg
            i += 1
        else
            if i - 1 < 0
                result.insert(0, i_arg)
            elsif i > l
                result << i_arg
            else
                result.insert(i - 1, i_arg)
            end
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
    puts result
    puts "[[[[[[[[[[[[[[[["
end

puts result
