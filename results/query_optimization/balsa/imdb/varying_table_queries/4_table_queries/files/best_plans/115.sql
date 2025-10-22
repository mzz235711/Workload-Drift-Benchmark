/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and title.kind_id=1 and title.imdb_index>0;

