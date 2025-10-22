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
select count(*) from movie_info_idx,movie_keyword,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id<10582 and cast_info.nr_order<26 and movie_info.info_type_id>2 and title.kind_id>1 and title.phonetic_code<237 and title.production_year>125;

