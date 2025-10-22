/*+ HashJoin(cast_info title movie_info movie_companies movie_keyword)
 HashJoin(cast_info title movie_info movie_companies)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>545 and cast_info.role_id=4 and movie_info.info_type_id<103 and title.production_year>117;

