/*+ HashJoin(movie_info_idx title cast_info movie_keyword movie_info)
 HashJoin(movie_info_idx title cast_info movie_keyword)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and cast_info.nr_order<14 and title.production_year<111;

