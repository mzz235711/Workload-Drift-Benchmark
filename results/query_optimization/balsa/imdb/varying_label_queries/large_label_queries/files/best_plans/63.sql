/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id=1 AND title.kind_id>1 AND title.season_nr<53 AND title.production_year>56 AND title.imdb_index<8;

