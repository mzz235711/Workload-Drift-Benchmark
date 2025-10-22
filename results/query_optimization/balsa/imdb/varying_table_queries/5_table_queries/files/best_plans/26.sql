/*+ MergeJoin(cast_info title movie_companies movie_info movie_keyword)
 MergeJoin(cast_info title movie_companies movie_info)
 MergeJoin(title movie_companies movie_info)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((cast_info ((title movie_companies) movie_info)) movie_keyword)) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>121 and title.season_nr>0 and title.phonetic_code<17638 and title.kind_id>4;

