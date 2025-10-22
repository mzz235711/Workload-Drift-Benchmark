/*+ NestLoop(title movie_info_idx movie_keyword movie_info cast_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and cast_info.nr_order<28 and movie_keyword.keyword_id<20211 and title.phonetic_code>5993 and title.imdb_index>0 and title.production_year>104 and title.kind_id>1;

