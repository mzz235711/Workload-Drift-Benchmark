/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_info.info_type_id<16 and cast_info.nr_order<1 and title.phonetic_code>5326 and title.production_year<26 and title.season_nr>0;

