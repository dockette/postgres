CREATE TEXT SEARCH DICTIONARY czech_spell (template=ispell, dictfile = czech, afffile=czech, stopwords=czech);
CREATE TEXT SEARCH CONFIGURATION czech (copy=english);
ALTER TEXT SEARCH CONFIGURATION czech ALTER MAPPING FOR word, asciiword with czech_spell, simple;
