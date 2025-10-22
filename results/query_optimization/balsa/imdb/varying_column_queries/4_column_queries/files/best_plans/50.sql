/*+ MergeJoin(title movie_companies movie_info_idx movie_info movie_keyword)
 MergeJoin(title movie_companies movie_info_idx movie_info)
 MergeJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=1 and movie_info_idx.info_type_id=101 and title.phonetic_code<10832;

