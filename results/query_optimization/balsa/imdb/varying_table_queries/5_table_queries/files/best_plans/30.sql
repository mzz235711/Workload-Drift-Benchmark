/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and title.kind_id=2 and title.season_nr=0;

