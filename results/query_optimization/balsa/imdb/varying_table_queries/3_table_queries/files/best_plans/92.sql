/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>8221 and title.series_years>0;

