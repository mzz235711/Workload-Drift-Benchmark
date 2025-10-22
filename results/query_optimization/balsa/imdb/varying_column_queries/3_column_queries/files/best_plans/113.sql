/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.imdb_index=0 and title.production_year>79;

