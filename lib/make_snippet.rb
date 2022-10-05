def make_snippet(arg)
    a=arg.split(" ", 10)
    b= "#{a[0]} " + "#{a[1]} " + "#{a[2]} " + "#{a[3]} " + "#{a[4]} "
    c= "..."
    d= if a.count > 5
            return "#{b.rstrip!}" + "#{c}"
            else "#{b.rstrip!}"
        end

    return d
end
