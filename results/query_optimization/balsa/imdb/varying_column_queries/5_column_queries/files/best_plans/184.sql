/*+ HashJoin(movie_keyword movie_info title movie_companies movie_info_idx)
 NestLoop(movie_info title movie_companies movie_info_idx)
 HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading((movie_keyword ((movie_info (title movie_companies)) movie_info_idx))) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and title.imdb_index=0 and title.series_years>0 and title.phonetic_code>17649 and title.season_nr=0;

