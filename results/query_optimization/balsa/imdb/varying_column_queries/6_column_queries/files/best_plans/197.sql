/*+ MergeJoin(cast_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order>0 and title.phonetic_code<18595 and title.production_year>80 and title.season_nr=0 and title.episode_nr<32;

