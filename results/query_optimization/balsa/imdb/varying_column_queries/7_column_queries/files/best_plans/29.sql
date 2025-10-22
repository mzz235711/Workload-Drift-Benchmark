/*+ MergeJoin(title movie_info_idx movie_keyword movie_info cast_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<83151 and movie_info_idx.info_type_id=99 and movie_info.info_type_id>1 and cast_info.nr_order>1 and title.series_years>0 and title.season_nr=0 and title.kind_id<4;

