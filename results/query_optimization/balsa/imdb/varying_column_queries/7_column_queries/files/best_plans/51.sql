/*+ MergeJoin(movie_info movie_companies movie_keyword movie_info_idx title)
 MergeJoin(movie_companies movie_keyword movie_info_idx title)
 MergeJoin(movie_keyword movie_info_idx title)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_companies (movie_keyword (movie_info_idx title))))) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<16 and movie_companies.company_type_id<2 and movie_keyword.keyword_id>2560 and title.series_years>0 and title.kind_id>1 and title.production_year>117 and title.phonetic_code>9960;

