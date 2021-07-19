CREATE TEXT SEARCH DICTIONARY czech_unaccent (template=ispell, dictfile = czech_unaccent, afffile=czech_unaccent, stopwords=czech_unaccent);
CREATE TEXT SEARCH CONFIGURATION czech_unaccent (copy=english);
ALTER TEXT SEARCH CONFIGURATION czech_unaccent ALTER MAPPING FOR word, asciiword WITH czech_unaccent, simple;
