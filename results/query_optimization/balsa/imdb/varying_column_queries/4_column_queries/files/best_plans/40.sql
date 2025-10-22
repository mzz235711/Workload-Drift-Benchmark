/*+ HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<81 and title.imdb_index>0 and title.phonetic_code<4400;

