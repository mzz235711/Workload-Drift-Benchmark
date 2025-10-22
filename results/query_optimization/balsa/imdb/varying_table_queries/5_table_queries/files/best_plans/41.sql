/*+ HashJoin(title cast_info movie_companies movie_info movie_keyword)
 NestLoop(title cast_info movie_companies movie_info)
 NestLoop(title cast_info movie_companies)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<39 and title.season_nr=2;

