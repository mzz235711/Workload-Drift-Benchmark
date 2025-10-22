/*+ HashJoin(movie_info_idx cast_info title movie_info movie_companies)
 HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((movie_info_idx (cast_info (title movie_info))) movie_companies)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<1000 and title.kind_id<7 and title.phonetic_code>0 and title.episode_nr<213 and title.season_nr<2;

