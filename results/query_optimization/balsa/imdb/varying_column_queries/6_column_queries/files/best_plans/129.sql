/*+ MergeJoin(movie_keyword cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (cast_info (movie_info_idx (title movie_companies))))) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and cast_info.role_id=1 and movie_keyword.keyword_id>137 and title.kind_id=1 and title.phonetic_code>12110 and title.imdb_index=0;

