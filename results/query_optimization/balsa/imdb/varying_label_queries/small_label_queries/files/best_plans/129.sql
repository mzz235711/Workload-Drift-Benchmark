/*+ MergeJoin(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_companies title) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<17 AND title.series_years<600 AND title.production_year>77 AND title.phonetic_code<3752 AND movie_companies.company_type_id>1 AND title.episode_nr>705;

