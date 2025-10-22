/*+ HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<358 AND title.imdb_index<1 AND title.phonetic_code>21302;

