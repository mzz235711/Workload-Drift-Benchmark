/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>1644 and movie_info.info_type_id<108 and cast_info.nr_order>4 and title.imdb_index=1 and title.phonetic_code>15597;

