

def thing(number, _arr = [])
    puts number
    trampoline(Random.new.rand)
end

def trampoline(number)
    thing(number)
end

thing(2)
