/*+ NestLoop(movie_companies title movie_keyword movie_info cast_info)
 NestLoop(movie_companies title movie_keyword movie_info)
 NestLoop(movie_companies title movie_keyword)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_companies title) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id<518 and cast_info.role_id>1 and title.phonetic_code<10068 and title.season_nr=0 and title.production_year>99 and title.series_years>0;

