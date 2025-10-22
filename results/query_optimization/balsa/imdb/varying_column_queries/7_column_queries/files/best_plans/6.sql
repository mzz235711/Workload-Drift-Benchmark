/*+ NestLoop(movie_info_idx title movie_keyword cast_info)
 NestLoop(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((movie_info_idx title) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<80040 and movie_info_idx.info_type_id=101 and cast_info.nr_order>0 and title.series_years>0 and title.phonetic_code<8047 and title.episode_nr<5 and title.production_year>88;

