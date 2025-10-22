/*+ HashJoin(movie_info_idx movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (movie_companies title)))) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0 and title.phonetic_code<21021 and title.season_nr<2 and title.production_year<127;

