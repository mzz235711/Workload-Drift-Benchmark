/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and cast_info.role_id<10 and title.production_year<126 and title.series_years>0 and title.phonetic_code<20613;

