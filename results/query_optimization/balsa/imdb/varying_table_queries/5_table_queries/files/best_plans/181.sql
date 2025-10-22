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
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and title.kind_id>1 and title.episode_nr>0 and title.season_nr<4 and title.imdb_index=0;

