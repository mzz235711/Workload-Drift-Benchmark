/*+ MergeJoin(movie_companies title movie_info_idx movie_info movie_keyword)
 MergeJoin(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((movie_companies title) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and movie_companies.company_type_id>1 and title.season_nr=0 and title.kind_id=1 and title.production_year>0 and title.phonetic_code<16649;

