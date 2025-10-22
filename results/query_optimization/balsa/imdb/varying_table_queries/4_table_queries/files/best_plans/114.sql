/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=1 and title.phonetic_code<16614 and title.series_years>0 and title.production_year>82;

