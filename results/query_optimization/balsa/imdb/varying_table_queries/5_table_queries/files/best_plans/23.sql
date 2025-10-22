/*+ HashJoin(movie_info_idx title movie_info movie_keyword cast_info)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<68250 and movie_info.info_type_id>2 and cast_info.nr_order<10 and title.season_nr>0 and title.production_year>123;

