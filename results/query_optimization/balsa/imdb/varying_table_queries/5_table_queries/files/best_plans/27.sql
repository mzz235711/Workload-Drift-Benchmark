/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<7 and title.season_nr<63 and title.phonetic_code>0;

