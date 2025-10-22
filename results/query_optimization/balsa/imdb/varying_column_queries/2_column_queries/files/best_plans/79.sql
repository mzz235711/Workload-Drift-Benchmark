/*+ HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (cast_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id=7 and title.phonetic_code<20336;

