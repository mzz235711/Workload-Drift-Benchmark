/*+ MergeJoin(title cast_info movie_info_idx movie_companies movie_keyword)
 MergeJoin(title cast_info movie_info_idx movie_companies)
 MergeJoin(title cast_info movie_info_idx)
 MergeJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_companies.company_type_id<2 and title.season_nr=0 and title.series_years<1203 and title.phonetic_code<17184;

