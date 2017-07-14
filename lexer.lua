
require "token"

-- TODO there's too many tables in the reuslts at the end of lex
-- TODO we need to be able to give an accurate location of the failure
-- the character count isn't going to work

function tryPatterns( input, start )
   
    local tokens = {}

    for _, t in ipairs( tokenPatterns ) do
        local pattern = "^" .. t.pattern .. "()"
        local result = { string.match( input, pattern, start ) }

        if result[1] then 

            start = result[#result]

            table.remove( result, #result )

            tokens[#tokens + 1] = { token = t.name;  result }

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

        if res.token ~= "ignore" then
            tokens[#tokens + 1] = res
        end

    end

    return tokens

end
        
