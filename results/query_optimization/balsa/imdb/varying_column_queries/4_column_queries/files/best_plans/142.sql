/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<104 and title.season_nr>1 and title.phonetic_code<14412 and title.episode_nr>8;

