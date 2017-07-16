
tokenPatterns = {}

function token( name, pattern )
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern }
end

function keyword( name, pattern )
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern; keyword = true }
end
    


token( "lparen", "%(" )
token( "rparen", "%)" )
token( "langle", "<" )
token( "rangle", ">" )
token( "lcurly", "{" )
token( "rcurly", "}" )
keyword( "foreach", "foreach" )
keyword( "while", "while" )
keyword( "struct", "struct" )
keyword( "union", "union" )


token( "symbol", "([_%a][_%w]*)" )

token( "ignore", "%s" )


