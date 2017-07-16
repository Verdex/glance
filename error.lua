
-- TODO display the line that the error took place on
-- with a message about the issue


-- need a way to map tokens, grammar entity, mis-type to a line

-- once you know the line you can just move backward to the
-- nearest \n (or whatever) and then forward for the same
-- finally grab the line above or below or something to provide
-- context

-- also want a map that takes the character number of the error
-- and converts it into a line number + column length
