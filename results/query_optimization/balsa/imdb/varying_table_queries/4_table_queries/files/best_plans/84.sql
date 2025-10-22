/*+ HashJoin(title cast_info movie_companies movie_info)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_companies) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.series_years<1347;

