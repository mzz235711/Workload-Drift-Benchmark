/*+ NestLoop(title movie_keyword movie_info_idx cast_info)
 NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<21 and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id<80928 and title.season_nr>0 and title.production_year<48;

