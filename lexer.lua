
require "token"

require "util"

function tryPatterns( input, start )
   
    local tokens = {}

    for _, t in ipairs( tokenPatterns ) do
        local pattern = "^" .. t.pattern .. "()"
        local result = { string.match( input, pattern, start ) }

        if result[1] then 

            start = result[#result]

            table.remove( result, #result )

            if t.name ~= "ignore" then

                tokens[#tokens + 1] = { token = t.name;  result }
             
            end

            return tokens, start
        end
    end

    return false, start

end

function lex( input )
    
    local start = 1
    local tokens = {}

    while start <= #input do
   
        local res

        res, start = tryPatterns( input, start )
       
        if not res then
            error(  "failure: " .. string.sub( input,  start - 20, start + 20 ) .. "\n" .. string.sub( input, start, start ))
        end

        tokens[#tokens + 1] = res

    end

    return tokens

end
        
