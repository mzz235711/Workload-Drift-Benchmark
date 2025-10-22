/*+ HashJoin(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((movie_keyword (title movie_companies)) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>941 and movie_companies.company_type_id=1 and movie_info.info_type_id>5 and title.phonetic_code<2681 and title.kind_id=1 and title.imdb_index=0;

