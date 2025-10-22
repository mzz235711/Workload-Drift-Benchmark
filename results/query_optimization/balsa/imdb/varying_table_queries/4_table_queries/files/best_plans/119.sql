/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and title.series_years>0 and title.phonetic_code>0 and title.kind_id<7;

