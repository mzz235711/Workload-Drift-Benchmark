/*+ HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.season_nr<70 AND title.phonetic_code>19113 AND title.kind_id>4 AND title.imdb_index<12 AND title.production_year<71;

