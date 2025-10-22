/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>10577 and title.imdb_index>0 and title.production_year<108;

