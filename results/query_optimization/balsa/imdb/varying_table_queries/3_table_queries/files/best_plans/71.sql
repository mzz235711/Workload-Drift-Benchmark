/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.episode_nr<112 and title.series_years>0 and title.kind_id=7 and title.phonetic_code<18354;

