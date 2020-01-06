CREATE TEXT SEARCH DICTIONARY cspell
   (template=ispell, dictfile = czech_unaccent, afffile=czech_unaccent, stopwords=czech_unaccent);
CREATE TEXT SEARCH CONFIGURATION cs (copy=english);
ALTER TEXT SEARCH CONFIGURATION cs
ALTER MAPPING FOR word, asciiword WITH cspell, simple;
CREATE EXTENSION unaccent;
