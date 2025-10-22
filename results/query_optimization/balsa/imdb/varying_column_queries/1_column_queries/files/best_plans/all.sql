/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<84;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.nr_order>3;

/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years<1374;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<57369;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>2;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>79;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id>1;

/*+ HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_companies (movie_info_idx title))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.production_year>0;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<64437;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ HashJoin(cast_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_info_idx) movie_keyword))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.series_years>0;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id=8;

/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.imdb_index>0;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<50979;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year<124;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>249;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ HashJoin(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.imdb_index=0;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.imdb_index=0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<14;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<87;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<58986;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.series_years>0;

/*+ HashJoin(movie_info cast_info movie_keyword title movie_info_idx)
 HashJoin(cast_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.production_year<124;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_companies title movie_info_idx movie_keyword)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((((movie_companies title) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.production_year<126;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id=1;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id=3;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.series_years<1325;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.episode_nr>0;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_keyword (movie_companies title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.series_years>0;

/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id>1;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id>1;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<4;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<18292;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.series_years>0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>353;

/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr<256;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.episode_nr>0;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>2;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.imdb_index=0;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<18;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<94;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.production_year<125;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years<1393;

/*+ HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_keyword (movie_companies title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.episode_nr<21;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<8;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id=7;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.phonetic_code<13095;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<17267;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>870;

/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.season_nr<11;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year<126;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<22369;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>4;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.nr_order<25;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.imdb_index=1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<4;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ MergeJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.series_years>0;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<107;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<16;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.production_year>0;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<60038;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year>28;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<16;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<16264;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code<19410;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<10605;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id>1;

/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr<243;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>137;

/*+ HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_keyword (movie_companies title))) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.season_nr>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.series_years<1366;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.nr_order<100;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<31488;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id=7;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.kind_id>1;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ HashJoin(cast_info movie_keyword movie_companies title)
 HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_keyword (movie_companies title)))) */
select count(*) from movie_keyword,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.episode_nr<226;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<18;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr=2;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ HashJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_companies (title movie_info_idx)))) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.production_year<124;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>3;

/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.kind_id>1;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>2;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>2;

/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 MergeJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.production_year>66;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.season_nr<1;

/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code<20832;

/*+ HashJoin(cast_info movie_keyword title movie_info)
 HashJoin(movie_keyword title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((cast_info (movie_keyword (title movie_info)))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr>0;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id<10;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=101;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.season_nr<12;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id=2;

/*+ HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_keyword (movie_companies title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.episode_nr<12;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=101;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<16;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_info cast_info movie_keyword title movie_info_idx)
 HashJoin(cast_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr>0;

/*+ HashJoin(movie_companies title movie_info_idx movie_keyword)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((((movie_companies title) movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.season_nr<16;

/*+ HashJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.kind_id=7;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.nr_order>1;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>56;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=101;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id=1;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr>0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id=7;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<19012;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr>0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id<101;

/*+ NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.series_years>0;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id<101;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr>0;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0;

/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 MergeJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.production_year>18;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id<18;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<16264;

/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>3;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.kind_id=1;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.episode_nr>0;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id<58737;

/*+ HashJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.phonetic_code<14447;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>910;

/*+ HashJoin(movie_info cast_info movie_keyword title)
 HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_keyword title)))) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.imdb_index>0;

/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.phonetic_code>2576;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id<2;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.kind_id<7;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id=1;

/*+ HashJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0;

/*+ NestLoop(movie_companies title movie_info_idx movie_info)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((movie_companies title) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.season_nr=1;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id=4;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id>99;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id<7;

/*+ HashJoin(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years<1374;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id>1;

/*+ HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr>0;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<17504;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id>1;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id<101;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id=7;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>2506;

/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id=1;

/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id<101;

/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.season_nr<2;

/*+ SeqScan(movie_keyword)
 Leading(movie_keyword) */
select count(*) from movie_keyword where movie_keyword.keyword_id>43;

/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.role_id>1;

