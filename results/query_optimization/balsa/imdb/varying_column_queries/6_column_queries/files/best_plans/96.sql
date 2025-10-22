/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>117 and movie_info.info_type_id<16 and title.kind_id=7 and title.phonetic_code>8694 and title.production_year>116 and title.episode_nr<13;

