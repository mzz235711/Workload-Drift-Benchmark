/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.production_year>0 and title.phonetic_code<20434;

