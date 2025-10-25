CREATE TABLE cast_info (
    id integer NOT NULL PRIMARY KEY,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_role_id integer,
    note character varying,
    nr_order integer,
    role_id integer NOT NULL
);

CREATE TABLE movie_companies (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    company_id integer NOT NULL,
    company_type_id integer NOT NULL,
    note character varying
);

CREATE TABLE movie_info_idx (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info character varying NOT NULL,
    note character varying(1)
);

CREATE TABLE movie_keyword (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    keyword_id integer NOT NULL
);

CREATE TABLE title (
    id integer NOT NULL PRIMARY KEY,
    title character varying,
    imdb_index integer,
    kind_id integer NOT NULL,
    production_year integer,
    imdb_id integer,
    phonetic_code integer,
    episode_of_id double precision,
    season_nr integer,
    episode_nr integer,
    series_years integer,
    md5sum character varying(32),
    latitude integer,
    longitude integer
);

CREATE TABLE movie_info (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info character varying NOT NULL,
    note character varying,
    x double precision,
    y double precision,
    z double precision
);
copy cast_info from 'datasets/imdb/cast_info.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;
copy movie_companies from 'datasets/imdb/movie_companies.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;
copy movie_info_idx from 'datasets/imdb/movie_info_idx.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;
copy movie_keyword from 'datasets/imdb/movie_keyword.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;
copy title from 'datasets/imdb/title.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;
copy movie_info from 'datasets/imdb/movie_info.csv' DELIMITER ',' ESCAPE '\' HEADER CSV;


