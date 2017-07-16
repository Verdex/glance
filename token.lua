
tokenPatterns = {}

function token( name, pattern )
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern }
end

function keyword( name, pattern )
    pattern = pattern or name
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern; keyword = true }
end
    


token( "lparen", "%(" )
token( "rparen", "%)" )
token( "langle", "<" )
token( "rangle", ">" )
token( "lcurly", "{" )
token( "rcurly", "}" )
keyword( "var" )
keyword( "const" )
keyword( "if" )
keyword( "elseif" )
keyword( "else" )
keyword( "foreach" )
keyword( "while" )
keyword( "struct" )
keyword( "union" )
keyword( "namespace" )
keyword( "public" )
keyword( "interface" )
keyword( "utility" )
keyword( "actor" )
keyword( "return" )
keyword( "yield" )
keyword( "ref" )
keyword( "break" )
keyword( "continue" )


token( "symbol", "([_%a][_%w]*)" )

token( "ignore", "%s" )


