/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<124 and title.episode_nr>1;

