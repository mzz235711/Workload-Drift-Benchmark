/*+ HashJoin(movie_keyword movie_info title cast_info movie_info_idx)
 HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(title cast_info movie_info_idx)
 NestLoop(title cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((movie_keyword (movie_info ((title cast_info) movie_info_idx)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.production_year>111 and title.kind_id<2 and title.phonetic_code>6886;

