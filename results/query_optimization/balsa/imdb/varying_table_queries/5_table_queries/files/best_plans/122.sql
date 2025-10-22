/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 NestLoop(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<24 and title.phonetic_code>0 and title.season_nr=1 and title.production_year>29;

