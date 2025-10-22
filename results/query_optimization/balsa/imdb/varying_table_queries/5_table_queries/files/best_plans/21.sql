/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<77586 and cast_info.role_id=4 and title.kind_id>1 and title.episode_nr<11 and title.season_nr=0;

