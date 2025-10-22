/*+ HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id>1 AND movie_info_idx.info_type_id<107 AND title.production_year=34 AND title.series_years<624 AND title.imdb_index<8 AND title.season_nr<84;

