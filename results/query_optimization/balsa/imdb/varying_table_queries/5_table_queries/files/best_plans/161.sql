/*+ HashJoin(title movie_info_idx movie_info movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_info.info_type_id>16 and title.imdb_index=0 and title.episode_nr>18;

