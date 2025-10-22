/*+ MergeJoin(movie_companies title movie_info_idx movie_info movie_keyword)
 MergeJoin(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id<2 and title.production_year<127 and title.phonetic_code>298 and title.episode_nr<12 and title.season_nr<15;

