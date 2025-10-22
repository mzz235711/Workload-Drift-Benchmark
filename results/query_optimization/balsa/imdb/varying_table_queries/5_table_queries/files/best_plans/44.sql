/*+ HashJoin(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.season_nr=0 and title.phonetic_code<12173 and title.kind_id=2;

