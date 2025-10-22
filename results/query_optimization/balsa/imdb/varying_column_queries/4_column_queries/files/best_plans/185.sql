/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<17985 and title.season_nr<7 and title.production_year<127 and title.series_years>0;

