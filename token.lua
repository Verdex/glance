
tokenPatterns = {}

function token( name, pattern )
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern }
end

token( "ikky", "({)" )
token( "blarg", "(})" )
token( "zap", "([_%a][_%w]*)" )
token( "ignore", "%s" )


