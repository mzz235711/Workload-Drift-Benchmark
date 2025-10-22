/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from cast_info,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.production_year>55 and title.phonetic_code<14563 and title.series_years<1296;

