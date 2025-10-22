/*+ HashJoin(movie_companies title cast_info movie_info movie_keyword)
 HashJoin(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.season_nr=2;

