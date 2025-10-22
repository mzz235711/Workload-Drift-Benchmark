/*+ NestLoop(movie_info_idx movie_companies title)
 NestLoop(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.production_year>53 AND movie_info_idx.info_type_id=112 AND title.imdb_index<11 AND title.season_nr<86;

