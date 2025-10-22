/*+ HashJoin(title cast_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_companies)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<71762 and cast_info.role_id>1 and title.production_year<73 and title.season_nr=0 and title.kind_id>1;

