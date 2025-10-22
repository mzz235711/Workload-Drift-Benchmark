/*+ HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.phonetic_code>4310 AND title.episode_nr<12734 AND movie_companies.company_type_id=1 AND title.kind_id<3 AND title.production_year=115 AND title.imdb_index<11;

