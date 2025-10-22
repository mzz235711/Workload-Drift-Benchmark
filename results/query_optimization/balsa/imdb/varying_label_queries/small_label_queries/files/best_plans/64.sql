/*+ HashJoin(title movie_companies movie_info)
 NestLoop(movie_companies movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((title (movie_companies movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<59 AND title.imdb_index=11 AND title.production_year<131 AND title.episode_nr<4618 AND movie_companies.company_type_id=2;

