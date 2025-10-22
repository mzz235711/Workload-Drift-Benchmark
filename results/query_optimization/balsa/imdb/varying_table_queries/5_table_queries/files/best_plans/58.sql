/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 NestLoop(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and cast_info.nr_order<3000 and title.episode_nr<93 and title.production_year>125;

