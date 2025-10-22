/*+ HashJoin(title movie_info_idx movie_keyword movie_info cast_info)
 MergeJoin(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<5 and title.production_year<126 and title.series_years<1400;

