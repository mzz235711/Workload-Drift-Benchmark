/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.production_year<122 and title.series_years>0 and title.phonetic_code<3952;

