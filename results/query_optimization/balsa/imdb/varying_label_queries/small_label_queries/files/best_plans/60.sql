/*+ MergeJoin(movie_info title movie_companies)
 MergeJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 Leading(((movie_info title) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id<2 AND title.season_nr>11 AND title.production_year<40 AND title.imdb_index<21;

