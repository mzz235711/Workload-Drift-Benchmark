/*+ MergeJoin(movie_info movie_keyword movie_companies movie_info_idx title)
 MergeJoin(movie_keyword movie_companies movie_info_idx title)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_keyword (movie_companies (movie_info_idx title))))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and title.series_years<1374;

