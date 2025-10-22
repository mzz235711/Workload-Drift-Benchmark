/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and movie_info.info_type_id>2 and movie_keyword.keyword_id>994 and title.imdb_index>0 and title.production_year<115;

