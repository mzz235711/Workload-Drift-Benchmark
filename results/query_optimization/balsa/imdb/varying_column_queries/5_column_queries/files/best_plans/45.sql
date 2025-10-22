/*+ HashJoin(movie_keyword title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword ((title movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<8001 and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr>1 and title.episode_nr<4;

