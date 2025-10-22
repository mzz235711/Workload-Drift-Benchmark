/*+ MergeJoin(title movie_info_idx movie_keyword cast_info movie_info)
 HashJoin(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<8 and cast_info.role_id<8 and movie_keyword.keyword_id>783 and title.production_year<115 and title.imdb_index<1 and title.kind_id=3;

