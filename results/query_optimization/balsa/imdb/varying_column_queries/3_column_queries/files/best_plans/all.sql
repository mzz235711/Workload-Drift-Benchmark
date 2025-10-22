/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.series_years<1397 and title.imdb_index>0;

/*+ MergeJoin(title movie_keyword movie_info)
 MergeJoin(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code<22826 and title.episode_nr>0 and title.production_year>0;

/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<75 and movie_companies.company_type_id=2 and title.kind_id>1;

/*+ HashJoin(title movie_companies movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<36767 and movie_companies.company_type_id<2 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_info_idx movie_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and title.episode_nr<13 and title.production_year<123;

/*+ MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id>7281 and title.series_years>0;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<21697 and title.episode_nr>0;

/*+ HashJoin(movie_info movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (title cast_info)))) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and cast_info.role_id<8 and title.phonetic_code<11010;

/*+ NestLoop(title movie_companies movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>2488 and cast_info.nr_order>2 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>382 and movie_info_idx.info_type_id>99 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<28 and movie_info.info_type_id<16 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.season_nr<31 and title.imdb_index=0 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.kind_id>1 and title.production_year>62;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_keyword))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order<49 and title.production_year>101;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id=7 and title.production_year>24 and title.series_years>0;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.season_nr>0 and title.series_years>0 and title.kind_id=7;

/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.imdb_index=0 and title.production_year>79;

/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 MergeJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<16 and title.season_nr=1;

/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id<107 and title.season_nr=2;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and movie_keyword.keyword_id<71480 and title.production_year>48;

/*+ MergeJoin(cast_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>165 and cast_info.nr_order>3 and title.episode_nr>0;

/*+ HashJoin(movie_info cast_info title movie_companies)
 MergeJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and cast_info.role_id=9 and title.phonetic_code>6741;

/*+ HashJoin(movie_info movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title cast_info)
 HashJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>2 and movie_companies.company_type_id=1 and title.phonetic_code<6494;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code>0 and title.production_year<125 and title.episode_nr<4074;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies movie_info)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info ((movie_info_idx title) movie_companies)) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.production_year>35;

/*+ HashJoin(movie_info movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_keyword (title cast_info))))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<20318 and title.season_nr>0 and title.phonetic_code<8094;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<17 and movie_companies.company_type_id>1 and title.production_year<30;

/*+ NestLoop(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<93 and movie_companies.company_type_id<2 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info movie_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=2 and movie_info_idx.info_type_id>99 and title.imdb_index>0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code<20635 and title.imdb_index>0 and title.episode_nr<267;

/*+ NestLoop(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((((title movie_info_idx) movie_keyword) movie_companies)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.kind_id<7 and title.production_year>63 and title.series_years>0;

/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.production_year<122;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.season_nr<4 and title.episode_nr>0 and title.phonetic_code>0;

/*+ HashJoin(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.production_year<121 and title.phonetic_code>0;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0 and title.production_year<124 and title.kind_id=7;

/*+ NestLoop(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=10 and title.kind_id=7 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id=2 and title.phonetic_code>10695;

/*+ NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id<80542 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info movie_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>1 and title.season_nr=9 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and cast_info.nr_order>6 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and cast_info.role_id<9 and title.episode_nr>0;

/*+ NestLoop(title movie_info movie_info_idx movie_keyword)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((((title movie_info) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<24222 and title.series_years>0 and title.production_year<109;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.production_year<127 and title.phonetic_code>0 and title.episode_nr<19;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.season_nr>0 and title.production_year<125;

/*+ NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info_idx) cast_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.season_nr<8 and title.series_years>0 and title.kind_id<7;

/*+ NestLoop(title movie_companies movie_keyword movie_info_idx cast_info)
 NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id<2629 and title.kind_id>1;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<31 and title.series_years>0 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info,movie_companies,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=0 and title.imdb_index>0;

/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years>0 and title.kind_id<7 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and title.episode_nr>0 and title.production_year<120;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr>0 and title.phonetic_code>0 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_companies movie_info_idx movie_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<16 and title.episode_nr>0 and title.production_year>114;

/*+ HashJoin(title movie_companies movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>382 and title.production_year<126 and title.kind_id>1;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and title.production_year>125 and title.kind_id=1;

/*+ NestLoop(title movie_info movie_info_idx movie_keyword)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((((title movie_info) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and title.episode_nr<3322 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year>106 and title.phonetic_code>2871;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<15470 and title.production_year<121 and title.series_years>0;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0 and title.kind_id>1 and title.imdb_index=0;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>73 and title.production_year>102 and title.season_nr>0;

/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code>0 and title.season_nr>0 and title.imdb_index=0;

/*+ HashJoin(movie_info movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 HashJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_companies (title cast_info))))) */
select count(*) from movie_companies,movie_info,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=1 and title.phonetic_code>11161;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and title.phonetic_code>25 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info movie_companies cast_info)
 NestLoop(title movie_info_idx movie_info movie_companies)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_info) movie_companies) cast_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and cast_info.role_id>5 and title.production_year<13;

/*+ NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id=1 and title.kind_id<7;

/*+ MergeJoin(movie_companies title cast_info movie_keyword movie_info)
 HashJoin(movie_companies title cast_info movie_keyword)
 MergeJoin(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_companies title) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<100 and movie_info.info_type_id>16 and title.imdb_index>0;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>4 and movie_companies.company_type_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.episode_nr>30;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<77 and title.episode_nr<115 and title.season_nr=1;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<106 and title.phonetic_code>0 and title.season_nr=0;

/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year>125 and title.phonetic_code<15630;

/*+ HashJoin(movie_info movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_companies (title cast_info)))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and movie_companies.company_type_id>1 and title.production_year<123;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>245 and movie_companies.company_type_id>1 and title.production_year<48;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.phonetic_code>16013 and title.production_year<123;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<26 and title.kind_id=4 and title.season_nr=0;

/*+ HashJoin(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>1572 and movie_info.info_type_id>3 and title.kind_id=1;

/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=3 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>117 and movie_info_idx.info_type_id>99 and title.production_year>72;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and title.production_year<100 and title.kind_id=6;

/*+ HashJoin(movie_info movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_companies (title cast_info))))) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.kind_id>1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<10 and title.phonetic_code<22457 and title.imdb_index=0;

/*+ NestLoop(title movie_companies movie_info cast_info)
 NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<18 and title.production_year<113 and title.imdb_index>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr>0 and title.production_year>122;

/*+ HashJoin(movie_info movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (title cast_info)))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>3 and title.kind_id<7 and title.production_year>81;

/*+ MergeJoin(movie_companies title cast_info movie_keyword movie_info)
 MergeJoin(movie_companies title cast_info movie_keyword)
 MergeJoin(movie_companies title cast_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_companies title) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>478 and cast_info.nr_order>0 and title.episode_nr>0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<125 and title.phonetic_code>0 and title.season_nr>0;

/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>17088 and title.production_year<122;

/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.season_nr>0 and title.series_years<1267;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<54327 and title.season_nr=0 and title.phonetic_code<18005;

/*+ HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id<41742 and title.phonetic_code<7174;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and title.production_year>118 and title.episode_nr<4;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and movie_info.info_type_id>2 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.season_nr>0 and title.series_years>0 and title.episode_nr<20;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>333 and title.production_year>123 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr=0 and title.series_years<1403 and title.kind_id>1;

/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.season_nr=0 and title.production_year<124;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and title.season_nr<1 and title.phonetic_code<1829;

/*+ HashJoin(movie_info cast_info movie_companies title movie_info_idx)
 MergeJoin(cast_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and title.kind_id>1;

/*+ HashJoin(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and movie_keyword.keyword_id>824 and title.production_year>110;

/*+ MergeJoin(title cast_info movie_companies movie_keyword movie_info)
 MergeJoin(title cast_info movie_companies movie_keyword)
 MergeJoin(title cast_info movie_companies)
 MergeJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<52 and movie_keyword.keyword_id<3311 and title.production_year>123;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.production_year>63 and title.series_years>0 and title.phonetic_code>0;

/*+ NestLoop(title movie_keyword movie_companies cast_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_companies) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.episode_nr>0 and title.production_year>0 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.series_years<1338 and title.kind_id<2;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr<140 and title.imdb_index=0 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<120481 and movie_info_idx.info_type_id>99 and title.production_year<58;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and title.phonetic_code>0 and title.episode_nr<85;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr>0 and title.production_year>122;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.imdb_index=0 and title.production_year>123;

/*+ HashJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 HashJoin(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (title cast_info)))) */
select count(*) from movie_keyword,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>121 and title.phonetic_code>0 and title.production_year<127;

/*+ NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id>99 and title.phonetic_code>10286;

/*+ NestLoop(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.episode_nr>0 and title.production_year<126 and title.phonetic_code>0;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<2 and title.episode_nr<10731 and title.series_years>0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.phonetic_code<2587 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr>0 and title.kind_id>2;

/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<109 and title.production_year<92;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=100 and movie_info.info_type_id<109 and title.series_years>0;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.phonetic_code<19414 and title.imdb_index>0 and title.production_year>43;

/*+ NestLoop(title cast_info movie_keyword movie_info movie_companies)
 MergeJoin(title cast_info movie_keyword movie_info)
 MergeJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((((title cast_info) movie_keyword) movie_info) movie_companies)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and title.production_year<80 and title.episode_nr<17;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.season_nr<10 and title.episode_nr>0 and title.production_year>80;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=10 and title.series_years>0 and title.season_nr=0;

/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>103 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>93 and title.phonetic_code>0 and title.kind_id=7;

/*+ HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.series_years<1383 and title.episode_nr<5727 and title.imdb_index=0;

/*+ MergeJoin(cast_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_companies) movie_keyword))) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<25 and title.episode_nr<10 and title.phonetic_code<7293;

/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>261 and title.imdb_index>0 and title.episode_nr<7;

/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.season_nr=0 and title.production_year<126 and title.series_years<1381;

/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<10 and movie_companies.company_type_id=2 and title.kind_id=7;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code>0 and title.kind_id<7 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr>0 and title.phonetic_code>2806;

/*+ NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading(((title movie_info) movie_info_idx)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.imdb_index>0 and title.production_year<125;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.season_nr=0 and title.series_years>0 and title.phonetic_code<18118;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>1 and title.episode_nr>1 and title.production_year<113;

/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.imdb_index=0 and title.episode_nr<152 and title.production_year>92;

/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 MergeJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.production_year>0 and title.phonetic_code<20394;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id>1 and title.production_year>25 and title.series_years>0;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<107 and movie_keyword.keyword_id>43 and title.season_nr=0;

/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 HashJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<104 and title.production_year>40 and title.series_years>0;

/*+ MergeJoin(movie_keyword movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_keyword movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_keyword ((movie_info_idx title) movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and cast_info.role_id>1 and title.season_nr<26;

/*+ NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<74666 and title.phonetic_code<16961 and title.imdb_index>0;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code<20833 and title.kind_id>1 and title.series_years<917;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>0 and title.phonetic_code<11650 and title.kind_id=7;

/*+ MergeJoin(cast_info movie_info_idx title movie_keyword movie_info)
 MergeJoin(cast_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((cast_info ((movie_info_idx title) movie_keyword)) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.nr_order<10 and title.season_nr>0;

/*+ HashJoin(movie_info cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (movie_info_idx (title movie_companies))))) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id=8 and movie_info_idx.info_type_id>99 and title.imdb_index>0;

/*+ HashJoin(movie_info movie_info_idx title movie_companies cast_info)
 HashJoin(movie_info_idx title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx ((title movie_companies) cast_info)))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>1 and title.series_years>0;

/*+ MergeJoin(movie_keyword movie_companies movie_info_idx title cast_info)
 HashJoin(movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id<2 and title.phonetic_code>1224;

/*+ MergeJoin(cast_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info ((movie_info_idx title) movie_keyword))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>0 and title.episode_nr<90 and title.series_years<1366;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<51 and title.phonetic_code<20907 and title.season_nr=1;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year>126 and title.imdb_index=0;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>217 and title.phonetic_code<3604 and title.imdb_index=0;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.phonetic_code>19719 and title.series_years>0;

/*+ NestLoop(movie_companies title movie_info_idx cast_info movie_info)
 NestLoop(movie_companies title movie_info_idx cast_info)
 NestLoop(movie_companies title movie_info_idx)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_companies title) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_companies.company_type_id=2 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id<15105 and title.series_years>0;

/*+ MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id<34892 and title.series_years>0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=11 and title.episode_nr<15 and title.series_years>0;

/*+ HashJoin(movie_info movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_companies (title cast_info)))) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>1 and title.phonetic_code>0;

/*+ MergeJoin(movie_info movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id<101 and title.episode_nr<8;

/*+ HashJoin(movie_info movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (title cast_info)))) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.production_year<111 and title.episode_nr<12;

/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0 and title.kind_id=7 and title.phonetic_code<20982;

/*+ NestLoop(title movie_info movie_keyword cast_info)
 NestLoop(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.episode_nr>0 and title.phonetic_code<17205;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code<17451 and title.series_years>0 and title.episode_nr<4;

/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 MergeJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>1401 and title.kind_id>1 and title.production_year<93;

/*+ NestLoop(title movie_info_idx cast_info movie_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.role_id=4 and title.season_nr>2;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.season_nr>0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.imdb_index>0 and title.production_year<127;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.season_nr>0 and title.phonetic_code>19021;

/*+ HashJoin(movie_info movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_keyword (title cast_info))))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_companies cast_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_companies) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.role_id>1 and title.production_year>92 and title.kind_id=3;

/*+ MergeJoin(movie_info movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<103 and title.kind_id>2;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<128 and title.series_years>0 and title.phonetic_code>0;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.season_nr=0 and title.phonetic_code>0 and title.production_year>82;

/*+ NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and cast_info.role_id<10 and title.kind_id<7;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.kind_id=7 and title.production_year>121;

/*+ HashJoin(movie_info movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_companies (title cast_info))))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<107 and title.season_nr=0 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr<18 and title.series_years>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>216 and movie_companies.company_type_id<2 and title.phonetic_code<16905;

/*+ NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.season_nr=0 and title.kind_id=7;

/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<22 and movie_info.info_type_id>4 and title.production_year<112;

/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<53544 and movie_info.info_type_id>2 and title.imdb_index>0;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.imdb_index=0 and title.kind_id>6;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr>0 and title.kind_id>1 and title.phonetic_code<13660;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id>229 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id>1 and title.kind_id=1;

/*+ NestLoop(title movie_keyword movie_info_idx movie_info)
 NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and title.production_year<113 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.phonetic_code>0 and title.season_nr=0 and title.kind_id<7;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code>0 and title.production_year>25 and title.series_years>0;

/*+ MergeJoin(movie_keyword movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title cast_info)
 HashJoin(movie_info_idx title cast_info)
 HashJoin(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<19066 and title.season_nr<1;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.kind_id<7 and title.episode_nr<17 and title.production_year<126;

/*+ MergeJoin(cast_info movie_companies title movie_info_idx movie_info)
 HashJoin(cast_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((cast_info (movie_companies (title movie_info_idx))) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<104 and title.episode_nr>0 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info_idx (title movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>1138 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order<7 and title.imdb_index=0;

/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<107 and movie_companies.company_type_id<2 and title.kind_id=1;

/*+ HashJoin(movie_keyword movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword ((movie_info_idx title) movie_companies))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id>377 and title.season_nr=0;

/*+ HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr<9 and title.kind_id>1 and title.phonetic_code<20700;

/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 HashJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and title.series_years>0 and title.season_nr<1;

/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>0 and title.season_nr=2 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.production_year>83 and title.series_years>0 and title.phonetic_code>0;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code>8502 and title.season_nr=5;

