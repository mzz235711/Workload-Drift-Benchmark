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
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>0 and movie_info_idx.info_type_id<101 and movie_info.info_type_id<16 and title.episode_nr<61 and title.season_nr>2 and title.production_year<101 and title.phonetic_code>10370;

