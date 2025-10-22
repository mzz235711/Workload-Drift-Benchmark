/*+ MergeJoin(movie_info title movie_companies)
 MergeJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading(((movie_info title) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.phonetic_code<6301 AND title.production_year>44 AND title.imdb_index<6 AND title.episode_nr>12279;

