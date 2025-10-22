/*+ HashJoin(movie_keyword title movie_info_idx cast_info)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((movie_keyword (title movie_info_idx)) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>2 and title.episode_nr<159 and title.phonetic_code<18557 and title.season_nr<13;

