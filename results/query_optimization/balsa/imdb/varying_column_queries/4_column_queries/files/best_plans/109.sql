/*+ HashJoin(movie_info_idx movie_info title)
 HashJoin(movie_info title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info_idx (movie_info title))) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>16 and title.season_nr<2 and title.phonetic_code>19;

