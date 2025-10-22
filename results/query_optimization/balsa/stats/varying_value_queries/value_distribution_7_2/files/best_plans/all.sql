/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>103 AND p.Score<143 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>451 AND u.DownVotes<1752 AND v.CreationDate>'2012-12-02 20:31:46'::timestamp AND v.CreationDate<'2014-07-30 11:19:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-03-25 11:58:09'::timestamp AND b.Date<'2014-03-24 08:12:40'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<181 AND p.CommentCount>8 AND p.CommentCount<24 AND u.DownVotes>158 AND u.DownVotes<1300 AND v.CreationDate>'2010-07-16 19:44:27'::timestamp AND v.CreationDate<'2012-02-20 08:39:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2012-10-01 22:46:44'::timestamp AND b.Date<'2014-03-06 14:58:35'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<176 AND p.CommentCount>5 AND p.CommentCount<12 AND u.DownVotes>282 AND u.DownVotes<1686 AND v.CreationDate>'2010-11-27 16:12:25'::timestamp AND v.CreationDate<'2013-07-07 07:32:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-10-17 00:30:06'::timestamp AND b.Date<'2010-12-02 23:30:00'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<45 AND p.CommentCount>4 AND p.CommentCount<32 AND u.DownVotes>693 AND u.DownVotes<1490 AND v.CreationDate>'2011-10-22 16:02:56'::timestamp AND v.CreationDate<'2014-07-21 22:46:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-07-20 07:02:31'::timestamp AND b.Date<'2014-01-11 12:44:36'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<188 AND p.CommentCount>7 AND p.CommentCount<43 AND u.DownVotes>160 AND u.DownVotes<1774 AND v.CreationDate>'2012-06-13 22:38:31'::timestamp AND v.CreationDate<'2013-05-20 07:58:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-04-30 03:54:42'::timestamp AND b.Date<'2014-07-24 01:22:05'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<139 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>151 AND u.DownVotes<1854 AND v.CreationDate>'2009-06-04 01:34:49'::timestamp AND v.CreationDate<'2014-09-09 11:51:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-11-22 08:29:13'::timestamp AND b.Date<'2013-05-08 06:21:15'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<133 AND p.CommentCount>15 AND p.CommentCount<21 AND u.DownVotes>78 AND u.DownVotes<1450 AND v.CreationDate>'2009-07-20 09:17:23'::timestamp AND v.CreationDate<'2012-08-18 23:14:18'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-01-07 00:32:28'::timestamp AND b.Date<'2012-08-04 00:00:44'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<158 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>0 AND u.DownVotes<1185 AND v.CreationDate>'2011-04-06 21:16:06'::timestamp AND v.CreationDate<'2011-12-19 02:32:16'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2012-06-29 05:01:03'::timestamp AND b.Date<'2012-12-27 10:25:31'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<121 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>563 AND u.DownVotes<1279 AND v.CreationDate>'2009-10-20 10:02:28'::timestamp AND v.CreationDate<'2013-04-26 13:37:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-12-14 21:41:01'::timestamp AND b.Date<'2012-02-19 01:52:41'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<19 AND p.CommentCount>3 AND p.CommentCount<16 AND u.DownVotes>281 AND u.DownVotes<1219 AND v.CreationDate>'2012-02-04 06:13:13'::timestamp AND v.CreationDate<'2012-12-06 07:36:46'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2010-10-30 04:23:25'::timestamp AND b.Date<'2014-02-22 15:47:18'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<175 AND p.CommentCount>10 AND p.CommentCount<18 AND u.DownVotes>170 AND u.DownVotes<1809 AND v.CreationDate>'2011-01-20 02:43:06'::timestamp AND v.CreationDate<'2013-06-10 04:45:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2014-01-14 09:41:51'::timestamp AND b.Date<'2014-05-27 22:24:13'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<61 AND p.CommentCount>5 AND p.CommentCount<25 AND u.DownVotes>1 AND u.DownVotes<1442 AND v.CreationDate>'2009-06-01 16:33:41'::timestamp AND v.CreationDate<'2014-06-05 03:17:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-11-09 06:11:22'::timestamp AND b.Date<'2014-08-05 06:41:32'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<58 AND p.CommentCount>12 AND p.CommentCount<19 AND u.DownVotes>303 AND u.DownVotes<1303 AND v.CreationDate>'2009-08-10 13:40:45'::timestamp AND v.CreationDate<'2012-06-27 00:50:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-13 21:58:33'::timestamp AND b.Date<'2013-09-19 18:09:23'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<132 AND p.CommentCount>0 AND p.CommentCount<39 AND u.DownVotes>468 AND u.DownVotes<1816 AND v.CreationDate>'2009-04-22 21:01:47'::timestamp AND v.CreationDate<'2012-09-20 13:41:38'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-09-10 13:08:46'::timestamp AND b.Date<'2012-09-20 04:01:35'::timestamp;

/*+ MergeJoin(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<151 AND p.CommentCount>1 AND p.CommentCount<10 AND u.DownVotes>71 AND u.DownVotes<207 AND v.CreationDate>'2009-12-20 14:50:54'::timestamp AND v.CreationDate<'2011-01-03 22:16:54'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2012-08-17 20:54:37'::timestamp AND b.Date<'2013-03-16 02:18:46'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<70 AND p.CommentCount>6 AND p.CommentCount<35 AND u.DownVotes>488 AND u.DownVotes<1068 AND v.CreationDate>'2010-01-03 22:47:17'::timestamp AND v.CreationDate<'2014-08-06 11:44:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2014-04-23 15:32:53'::timestamp AND b.Date<'2014-05-11 09:43:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<30 AND p.CommentCount>11 AND p.CommentCount<44 AND u.DownVotes>177 AND u.DownVotes<435 AND v.CreationDate>'2009-02-02 22:25:45'::timestamp AND v.CreationDate<'2014-09-13 07:55:35'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-02-21 13:24:58'::timestamp AND b.Date<'2014-05-07 17:30:08'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<86 AND p.CommentCount>9 AND p.CommentCount<27 AND u.DownVotes>292 AND u.DownVotes<790 AND v.CreationDate>'2009-12-14 04:36:43'::timestamp AND v.CreationDate<'2013-11-22 13:49:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-08-12 07:16:54'::timestamp AND b.Date<'2012-06-27 14:50:40'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<145 AND p.CommentCount>0 AND p.CommentCount<3 AND u.DownVotes>7 AND u.DownVotes<1872 AND v.CreationDate>'2011-09-11 16:51:46'::timestamp AND v.CreationDate<'2011-12-31 08:58:39'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-01-15 11:53:26'::timestamp AND b.Date<'2011-12-24 23:25:37'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<135 AND p.CommentCount>8 AND p.CommentCount<27 AND u.DownVotes>261 AND u.DownVotes<1700 AND v.CreationDate>'2013-11-09 06:53:50'::timestamp AND v.CreationDate<'2014-03-18 08:05:23'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-11-04 20:18:31'::timestamp AND b.Date<'2014-08-22 05:09:26'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<108 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>453 AND u.DownVotes<1016 AND v.CreationDate>'2012-07-14 00:21:46'::timestamp AND v.CreationDate<'2014-07-02 02:52:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-01-03 13:36:14'::timestamp AND b.Date<'2011-08-15 13:38:29'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<179 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>641 AND u.DownVotes<1413 AND v.CreationDate>'2010-10-30 14:11:30'::timestamp AND v.CreationDate<'2011-08-23 14:28:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-04-29 05:42:21'::timestamp AND b.Date<'2013-10-16 16:39:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<99 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>0 AND u.DownVotes<682 AND v.CreationDate>'2013-01-01 22:51:54'::timestamp AND v.CreationDate<'2013-04-25 10:13:43'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2012-01-06 01:02:05'::timestamp AND b.Date<'2012-12-13 08:09:46'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<153 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>463 AND u.DownVotes<1352 AND v.CreationDate>'2009-12-29 08:27:30'::timestamp AND v.CreationDate<'2013-04-11 13:11:55'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-11-25 21:31:30'::timestamp AND b.Date<'2013-08-14 07:18:44'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>60 AND p.Score<133 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>313 AND u.DownVotes<1733 AND v.CreationDate>'2011-03-17 09:25:09'::timestamp AND v.CreationDate<'2013-08-22 21:20:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-11-30 17:43:44'::timestamp AND b.Date<'2014-03-17 08:19:54'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<21 AND p.CommentCount>15 AND p.CommentCount<39 AND u.DownVotes>394 AND u.DownVotes<1546 AND v.CreationDate>'2011-04-19 10:19:23'::timestamp AND v.CreationDate<'2013-12-15 23:14:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2013-10-31 02:08:49'::timestamp AND b.Date<'2014-08-29 17:28:49'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<77 AND p.CommentCount>7 AND p.CommentCount<38 AND u.DownVotes>735 AND u.DownVotes<1170 AND v.CreationDate>'2011-03-29 03:20:18'::timestamp AND v.CreationDate<'2013-12-14 09:02:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2010-12-10 00:47:28'::timestamp AND b.Date<'2011-01-13 23:40:19'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<80 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>4 AND u.DownVotes<997 AND v.CreationDate>'2012-02-07 10:06:26'::timestamp AND v.CreationDate<'2013-04-15 09:00:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-02-26 16:29:32'::timestamp AND b.Date<'2011-11-30 14:16:21'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<39 AND p.CommentCount>10 AND p.CommentCount<24 AND u.DownVotes>145 AND u.DownVotes<455 AND v.CreationDate>'2009-10-08 18:24:48'::timestamp AND v.CreationDate<'2014-06-16 05:25:37'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-12-21 22:26:34'::timestamp AND b.Date<'2012-09-16 04:33:02'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<105 AND p.CommentCount>13 AND p.CommentCount<43 AND u.DownVotes>304 AND u.DownVotes<1246 AND v.CreationDate>'2012-07-06 10:09:39'::timestamp AND v.CreationDate<'2013-01-15 19:04:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-07-28 22:56:59'::timestamp AND b.Date<'2013-02-17 09:25:47'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<10 AND p.CommentCount>16 AND p.CommentCount<26 AND u.DownVotes>761 AND u.DownVotes<1499 AND v.CreationDate>'2009-07-30 06:41:36'::timestamp AND v.CreationDate<'2011-10-30 15:49:12'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-09-15 12:09:40'::timestamp AND b.Date<'2013-11-18 20:03:29'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<71 AND p.CommentCount>14 AND p.CommentCount<16 AND u.DownVotes>672 AND u.DownVotes<1697 AND v.CreationDate>'2011-08-18 07:40:27'::timestamp AND v.CreationDate<'2014-03-20 04:01:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-12-01 16:57:30'::timestamp AND b.Date<'2013-02-05 07:43:07'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<88 AND p.CommentCount>0 AND p.CommentCount<22 AND u.DownVotes>29 AND u.DownVotes<1555 AND v.CreationDate>'2013-05-20 18:24:22'::timestamp AND v.CreationDate<'2014-05-03 12:16:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2014-01-26 12:33:08'::timestamp AND b.Date<'2014-03-17 22:25:20'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<81 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>372 AND u.DownVotes<1307 AND v.CreationDate>'2010-01-03 02:52:12'::timestamp AND v.CreationDate<'2013-09-05 16:12:27'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-09-17 17:31:19'::timestamp AND b.Date<'2013-07-14 12:08:44'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<0 AND p.CommentCount>15 AND p.CommentCount<44 AND u.DownVotes>26 AND u.DownVotes<252 AND v.CreationDate>'2009-12-09 10:31:09'::timestamp AND v.CreationDate<'2012-07-16 23:17:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-10-21 16:02:07'::timestamp AND b.Date<'2014-01-27 09:09:53'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<66 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>594 AND u.DownVotes<1324 AND v.CreationDate>'2009-03-19 21:12:30'::timestamp AND v.CreationDate<'2014-05-01 12:18:40'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-10-08 19:21:56'::timestamp AND b.Date<'2012-12-28 08:13:18'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<182 AND p.CommentCount>12 AND p.CommentCount<17 AND u.DownVotes>397 AND u.DownVotes<1214 AND v.CreationDate>'2010-08-15 00:48:41'::timestamp AND v.CreationDate<'2014-08-04 21:31:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2010-08-04 14:27:19'::timestamp AND b.Date<'2011-01-24 09:08:03'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<77 AND p.CommentCount>6 AND p.CommentCount<42 AND u.DownVotes>637 AND u.DownVotes<892 AND v.CreationDate>'2010-10-08 09:19:42'::timestamp AND v.CreationDate<'2013-01-19 00:58:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-08-11 05:27:56'::timestamp AND b.Date<'2013-12-12 14:19:53'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<151 AND p.CommentCount>14 AND p.CommentCount<42 AND u.DownVotes>692 AND u.DownVotes<1273 AND v.CreationDate>'2009-05-27 10:59:46'::timestamp AND v.CreationDate<'2013-09-06 12:40:57'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2013-02-13 03:49:34'::timestamp AND b.Date<'2014-01-17 07:37:38'::timestamp;

/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<122 AND p.CommentCount>12 AND p.CommentCount<21 AND u.DownVotes>55 AND u.DownVotes<172 AND v.CreationDate>'2009-11-06 08:42:34'::timestamp AND v.CreationDate<'2014-07-24 21:15:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-01-29 20:19:54'::timestamp AND b.Date<'2014-08-30 16:55:21'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<154 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>719 AND u.DownVotes<1690 AND v.CreationDate>'2012-02-06 00:00:45'::timestamp AND v.CreationDate<'2012-08-01 22:37:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-05-20 07:36:23'::timestamp AND b.Date<'2013-12-16 16:34:18'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<186 AND p.CommentCount>14 AND p.CommentCount<44 AND u.DownVotes>260 AND u.DownVotes<1304 AND v.CreationDate>'2012-11-09 07:23:00'::timestamp AND v.CreationDate<'2013-09-09 18:58:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-11-10 10:38:57'::timestamp AND b.Date<'2011-01-07 04:07:41'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<130 AND p.CommentCount>4 AND p.CommentCount<36 AND u.DownVotes>633 AND u.DownVotes<1051 AND v.CreationDate>'2010-11-03 11:03:33'::timestamp AND v.CreationDate<'2014-02-22 07:36:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-06-02 22:49:09'::timestamp AND b.Date<'2012-03-21 14:29:58'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<182 AND p.CommentCount>7 AND p.CommentCount<42 AND u.DownVotes>135 AND u.DownVotes<1278 AND v.CreationDate>'2009-03-29 08:31:49'::timestamp AND v.CreationDate<'2013-06-28 04:33:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-02-26 05:37:44'::timestamp AND b.Date<'2011-08-03 20:24:59'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<89 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>446 AND u.DownVotes<1704 AND v.CreationDate>'2010-08-14 15:44:58'::timestamp AND v.CreationDate<'2011-09-12 05:26:11'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2010-11-23 11:26:15'::timestamp AND b.Date<'2011-06-23 14:22:33'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<139 AND p.CommentCount>16 AND p.CommentCount<39 AND u.DownVotes>57 AND u.DownVotes<826 AND v.CreationDate>'2009-11-25 01:18:16'::timestamp AND v.CreationDate<'2011-03-16 18:33:55'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-08-07 05:19:11'::timestamp AND b.Date<'2011-11-22 18:59:26'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>100 AND p.Score<153 AND p.CommentCount>10 AND p.CommentCount<27 AND u.DownVotes>119 AND u.DownVotes<230 AND v.CreationDate>'2010-09-07 01:23:26'::timestamp AND v.CreationDate<'2013-03-02 20:36:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-05 00:25:59'::timestamp AND b.Date<'2013-05-31 05:28:31'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<176 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>8 AND u.DownVotes<1052 AND v.CreationDate>'2010-03-04 05:37:57'::timestamp AND v.CreationDate<'2012-01-18 18:38:52'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2012-04-21 23:25:13'::timestamp AND b.Date<'2012-10-09 20:16:29'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<116 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>758 AND u.DownVotes<951 AND v.CreationDate>'2011-01-27 01:13:42'::timestamp AND v.CreationDate<'2014-09-10 19:16:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-04-23 05:24:38'::timestamp AND b.Date<'2014-01-19 14:52:25'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<84 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>727 AND u.DownVotes<1111 AND v.CreationDate>'2011-06-26 18:38:15'::timestamp AND v.CreationDate<'2014-07-30 13:23:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2013-12-03 07:49:05'::timestamp AND b.Date<'2014-08-29 06:28:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<128 AND p.CommentCount>15 AND p.CommentCount<25 AND u.DownVotes>178 AND u.DownVotes<406 AND v.CreationDate>'2010-12-10 17:43:07'::timestamp AND v.CreationDate<'2014-02-16 04:44:39'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-02-08 11:46:05'::timestamp AND b.Date<'2012-03-09 01:15:13'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<159 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>347 AND u.DownVotes<561 AND v.CreationDate>'2010-09-07 08:53:21'::timestamp AND v.CreationDate<'2012-12-09 17:28:02'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-01-08 09:09:12'::timestamp AND b.Date<'2014-02-25 21:30:08'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<70 AND p.CommentCount>18 AND p.CommentCount<41 AND u.DownVotes>278 AND u.DownVotes<1281 AND v.CreationDate>'2010-08-08 22:24:27'::timestamp AND v.CreationDate<'2012-10-30 01:30:48'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-02-13 12:23:41'::timestamp AND b.Date<'2012-08-11 18:30:15'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<64 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>187 AND u.DownVotes<1103 AND v.CreationDate>'2009-12-24 10:25:11'::timestamp AND v.CreationDate<'2013-11-04 19:45:59'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2011-09-01 12:31:26'::timestamp AND b.Date<'2013-11-18 02:21:01'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<18 AND p.CommentCount>15 AND p.CommentCount<29 AND u.DownVotes>102 AND u.DownVotes<1120 AND v.CreationDate>'2010-04-12 16:23:21'::timestamp AND v.CreationDate<'2012-01-02 08:26:56'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-03-25 18:49:04'::timestamp AND b.Date<'2013-11-21 09:13:42'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<153 AND p.CommentCount>5 AND p.CommentCount<37 AND u.DownVotes>485 AND u.DownVotes<827 AND v.CreationDate>'2011-11-14 13:33:25'::timestamp AND v.CreationDate<'2014-06-30 01:32:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-08-31 01:38:49'::timestamp AND b.Date<'2013-12-07 19:26:59'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<96 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>206 AND u.DownVotes<642 AND v.CreationDate>'2010-01-10 23:31:53'::timestamp AND v.CreationDate<'2011-01-16 21:53:32'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2012-03-12 22:00:50'::timestamp AND b.Date<'2012-09-06 00:51:07'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<73 AND p.CommentCount>10 AND p.CommentCount<25 AND u.DownVotes>296 AND u.DownVotes<1671 AND v.CreationDate>'2009-12-04 12:52:47'::timestamp AND v.CreationDate<'2014-06-26 13:33:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-09-04 09:50:35'::timestamp AND b.Date<'2014-08-09 07:18:32'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<120 AND p.CommentCount>15 AND p.CommentCount<27 AND u.DownVotes>159 AND u.DownVotes<1879 AND v.CreationDate>'2010-11-09 06:06:49'::timestamp AND v.CreationDate<'2013-04-22 21:24:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-08-26 06:13:16'::timestamp AND b.Date<'2014-03-27 01:26:50'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<6 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>778 AND u.DownVotes<1150 AND v.CreationDate>'2009-09-03 22:02:13'::timestamp AND v.CreationDate<'2010-10-31 12:39:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2010-08-29 20:03:48'::timestamp AND b.Date<'2014-02-28 14:23:56'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<23 AND p.CommentCount>10 AND p.CommentCount<16 AND u.DownVotes>219 AND u.DownVotes<1033 AND v.CreationDate>'2012-02-18 06:00:55'::timestamp AND v.CreationDate<'2013-05-30 21:31:30'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-10-13 18:15:40'::timestamp AND b.Date<'2012-01-23 14:49:56'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<151 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>162 AND u.DownVotes<795 AND v.CreationDate>'2012-04-21 08:36:18'::timestamp AND v.CreationDate<'2013-12-30 00:25:36'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2012-05-18 18:20:21'::timestamp AND b.Date<'2013-07-29 11:30:37'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<11 AND p.CommentCount>5 AND p.CommentCount<41 AND u.DownVotes>4 AND u.DownVotes<337 AND v.CreationDate>'2009-07-03 20:51:39'::timestamp AND v.CreationDate<'2013-10-14 18:29:48'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<9 AND b.Date>'2011-02-17 05:19:18'::timestamp AND b.Date<'2013-10-16 11:14:18'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<134 AND p.CommentCount>9 AND p.CommentCount<12 AND u.DownVotes>665 AND u.DownVotes<998 AND v.CreationDate>'2010-04-04 17:40:20'::timestamp AND v.CreationDate<'2012-04-17 10:55:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-08-05 21:12:21'::timestamp AND b.Date<'2013-09-20 00:42:43'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<190 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>25 AND u.DownVotes<37 AND v.CreationDate>'2009-06-01 04:31:55'::timestamp AND v.CreationDate<'2011-10-07 12:53:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-11-12 22:02:41'::timestamp AND b.Date<'2012-10-19 23:33:30'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<139 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>615 AND u.DownVotes<1087 AND v.CreationDate>'2011-08-16 14:08:06'::timestamp AND v.CreationDate<'2014-02-07 06:33:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2013-02-07 15:59:39'::timestamp AND b.Date<'2013-11-12 04:32:10'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<162 AND p.CommentCount>9 AND p.CommentCount<15 AND u.DownVotes>56 AND u.DownVotes<748 AND v.CreationDate>'2013-04-15 17:34:04'::timestamp AND v.CreationDate<'2014-08-08 17:29:50'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-04-24 19:26:23'::timestamp AND b.Date<'2012-08-29 15:04:30'::timestamp;

/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<122 AND p.CommentCount>12 AND p.CommentCount<14 AND u.DownVotes>137 AND u.DownVotes<1173 AND v.CreationDate>'2009-06-09 17:55:25'::timestamp AND v.CreationDate<'2014-03-05 18:27:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-05-17 11:12:36'::timestamp AND b.Date<'2012-01-03 06:39:45'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<17 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>362 AND u.DownVotes<1894 AND v.CreationDate>'2010-11-26 22:55:11'::timestamp AND v.CreationDate<'2011-10-17 17:46:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-04-04 08:35:13'::timestamp AND b.Date<'2011-08-31 10:19:13'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<77 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>189 AND u.DownVotes<1040 AND v.CreationDate>'2013-01-28 08:08:42'::timestamp AND v.CreationDate<'2013-04-09 02:30:29'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-11-02 20:36:17'::timestamp AND b.Date<'2012-12-22 15:58:21'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>112 AND p.Score<161 AND p.CommentCount>8 AND p.CommentCount<23 AND u.DownVotes>80 AND u.DownVotes<1365 AND v.CreationDate>'2010-05-03 00:48:48'::timestamp AND v.CreationDate<'2014-01-14 18:47:55'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-08-17 13:02:25'::timestamp AND b.Date<'2014-04-14 07:04:38'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<167 AND p.CommentCount>9 AND p.CommentCount<33 AND u.DownVotes>13 AND u.DownVotes<942 AND v.CreationDate>'2010-10-21 02:18:20'::timestamp AND v.CreationDate<'2012-03-14 10:36:44'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-06-20 07:04:50'::timestamp AND b.Date<'2013-05-14 05:46:41'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<123 AND p.CommentCount>0 AND p.CommentCount<13 AND u.DownVotes>172 AND u.DownVotes<1088 AND v.CreationDate>'2009-04-03 03:15:14'::timestamp AND v.CreationDate<'2012-11-28 11:20:45'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-11-22 20:01:28'::timestamp AND b.Date<'2013-07-06 16:18:30'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<50 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>270 AND u.DownVotes<861 AND v.CreationDate>'2010-01-24 16:21:17'::timestamp AND v.CreationDate<'2011-10-27 23:06:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-01-13 03:06:57'::timestamp AND b.Date<'2013-08-14 18:41:09'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<170 AND p.CommentCount>15 AND p.CommentCount<37 AND u.DownVotes>617 AND u.DownVotes<1587 AND v.CreationDate>'2010-02-05 17:48:00'::timestamp AND v.CreationDate<'2014-01-14 11:02:04'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-11-10 12:05:18'::timestamp AND b.Date<'2013-01-14 13:17:12'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<68 AND p.CommentCount>10 AND p.CommentCount<44 AND u.DownVotes>188 AND u.DownVotes<1064 AND v.CreationDate>'2010-01-24 20:41:03'::timestamp AND v.CreationDate<'2011-05-16 23:46:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-08-16 01:50:46'::timestamp AND b.Date<'2013-01-22 13:18:40'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<32 AND u.DownVotes>32 AND u.DownVotes<243 AND v.CreationDate>'2009-12-24 11:32:05'::timestamp AND v.CreationDate<'2011-09-22 11:23:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-03-28 21:52:18'::timestamp AND b.Date<'2012-01-02 08:00:51'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<163 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>695 AND u.DownVotes<1499 AND v.CreationDate>'2009-09-18 06:29:02'::timestamp AND v.CreationDate<'2013-03-10 18:59:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-08-29 09:07:40'::timestamp AND b.Date<'2014-05-19 21:16:47'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<30 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>152 AND u.DownVotes<659 AND v.CreationDate>'2011-03-29 10:53:45'::timestamp AND v.CreationDate<'2012-11-23 04:51:46'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-03-16 04:31:10'::timestamp AND b.Date<'2014-07-17 08:53:33'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<41 AND p.CommentCount>9 AND p.CommentCount<30 AND u.DownVotes>345 AND u.DownVotes<806 AND v.CreationDate>'2010-02-17 00:13:24'::timestamp AND v.CreationDate<'2010-11-22 06:40:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-04-23 22:57:49'::timestamp AND b.Date<'2013-04-19 19:11:08'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<121 AND p.CommentCount>18 AND p.CommentCount<42 AND u.DownVotes>492 AND u.DownVotes<788 AND v.CreationDate>'2012-04-14 07:22:21'::timestamp AND v.CreationDate<'2013-09-14 23:15:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-07-22 20:45:00'::timestamp AND b.Date<'2014-05-01 20:07:39'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<100 AND p.CommentCount>20 AND p.CommentCount<44 AND u.DownVotes>48 AND u.DownVotes<1528 AND v.CreationDate>'2012-12-21 17:42:15'::timestamp AND v.CreationDate<'2013-11-03 18:36:52'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-10-07 17:40:37'::timestamp AND b.Date<'2014-04-18 08:53:04'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<159 AND p.CommentCount>4 AND p.CommentCount<6 AND u.DownVotes>35 AND u.DownVotes<573 AND v.CreationDate>'2013-05-21 21:17:28'::timestamp AND v.CreationDate<'2013-09-08 03:15:40'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2012-07-04 09:08:24'::timestamp AND b.Date<'2014-08-14 04:44:38'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<69 AND p.CommentCount>11 AND p.CommentCount<18 AND u.DownVotes>19 AND u.DownVotes<750 AND v.CreationDate>'2010-04-19 16:21:34'::timestamp AND v.CreationDate<'2012-07-12 06:46:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-11-11 20:22:47'::timestamp AND b.Date<'2011-02-28 14:41:52'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<183 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>295 AND u.DownVotes<1755 AND v.CreationDate>'2009-06-17 20:23:10'::timestamp AND v.CreationDate<'2014-07-20 04:06:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-04-01 12:30:56'::timestamp AND b.Date<'2011-12-07 18:54:44'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<73 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>8 AND u.DownVotes<1728 AND v.CreationDate>'2009-03-09 23:45:28'::timestamp AND v.CreationDate<'2012-01-31 03:46:41'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-02-16 13:11:59'::timestamp AND b.Date<'2013-07-02 13:25:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<10 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>692 AND u.DownVotes<1504 AND v.CreationDate>'2009-04-26 19:35:13'::timestamp AND v.CreationDate<'2013-07-15 13:55:44'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-12-21 13:12:54'::timestamp AND b.Date<'2012-10-28 07:32:41'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>130 AND p.Score<151 AND p.CommentCount>1 AND p.CommentCount<13 AND u.DownVotes>97 AND u.DownVotes<1413 AND v.CreationDate>'2009-05-01 22:11:28'::timestamp AND v.CreationDate<'2013-06-05 17:39:03'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-10-26 23:54:30'::timestamp AND b.Date<'2014-08-22 17:45:52'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<147 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>70 AND u.DownVotes<235 AND v.CreationDate>'2011-10-03 07:53:08'::timestamp AND v.CreationDate<'2014-07-19 13:10:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-04-28 11:59:57'::timestamp AND b.Date<'2013-11-03 07:11:04'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<119 AND p.CommentCount>7 AND p.CommentCount<19 AND u.DownVotes>350 AND u.DownVotes<1614 AND v.CreationDate>'2010-07-04 12:13:08'::timestamp AND v.CreationDate<'2013-08-19 23:27:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-08-28 05:27:17'::timestamp AND b.Date<'2011-05-09 11:43:10'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<158 AND p.CommentCount>18 AND p.CommentCount<21 AND u.DownVotes>632 AND u.DownVotes<904 AND v.CreationDate>'2009-04-17 03:32:34'::timestamp AND v.CreationDate<'2013-08-04 02:51:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-08-10 01:46:59'::timestamp AND b.Date<'2012-10-01 18:50:30'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<176 AND p.CommentCount>21 AND p.CommentCount<31 AND u.DownVotes>21 AND u.DownVotes<915 AND v.CreationDate>'2011-08-18 05:34:30'::timestamp AND v.CreationDate<'2014-05-16 00:03:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-07-15 21:19:44'::timestamp AND b.Date<'2013-09-06 18:52:14'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>460 AND u.DownVotes<1091 AND v.CreationDate>'2012-12-14 18:58:54'::timestamp AND v.CreationDate<'2014-02-01 09:39:57'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-08-26 21:36:20'::timestamp AND b.Date<'2012-04-03 18:43:24'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<66 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>541 AND u.DownVotes<897 AND v.CreationDate>'2013-11-03 05:54:57'::timestamp AND v.CreationDate<'2014-02-02 06:02:11'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-12-09 14:43:34'::timestamp AND b.Date<'2012-08-22 10:03:20'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<72 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>106 AND u.DownVotes<1318 AND v.CreationDate>'2012-08-15 01:51:27'::timestamp AND v.CreationDate<'2013-06-05 19:40:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-08-26 10:22:55'::timestamp AND b.Date<'2012-02-09 10:10:21'::timestamp;

/*+ NestLoop(p u b v)
 MergeJoin(p u b)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<91 AND p.CommentCount>9 AND p.CommentCount<25 AND u.DownVotes>238 AND u.DownVotes<1377 AND v.CreationDate>'2012-10-26 23:15:10'::timestamp AND v.CreationDate<'2012-11-05 21:10:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-08-28 07:54:07'::timestamp AND b.Date<'2012-07-24 09:39:34'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<67 AND p.CommentCount>1 AND p.CommentCount<35 AND u.DownVotes>469 AND u.DownVotes<1138 AND v.CreationDate>'2009-04-14 12:50:21'::timestamp AND v.CreationDate<'2012-01-18 21:17:06'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-01-19 04:48:39'::timestamp AND b.Date<'2012-07-09 01:52:57'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>269 AND u.DownVotes<1260 AND v.CreationDate>'2009-11-15 03:02:07'::timestamp AND v.CreationDate<'2014-08-06 12:49:23'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-07-09 07:14:55'::timestamp AND b.Date<'2014-07-28 17:37:33'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<121 AND p.CommentCount>9 AND p.CommentCount<25 AND u.DownVotes>693 AND u.DownVotes<1849 AND v.CreationDate>'2010-02-17 21:40:50'::timestamp AND v.CreationDate<'2013-06-07 16:45:33'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-07-22 07:56:08'::timestamp AND b.Date<'2014-08-27 20:42:53'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<25 AND u.DownVotes>496 AND u.DownVotes<1670 AND v.CreationDate>'2012-11-20 04:33:03'::timestamp AND v.CreationDate<'2013-10-11 15:19:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-06-06 15:29:21'::timestamp AND b.Date<'2014-04-25 10:44:35'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<166 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>538 AND u.DownVotes<1528 AND v.CreationDate>'2010-10-31 22:19:35'::timestamp AND v.CreationDate<'2012-06-10 09:21:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2013-03-17 04:16:26'::timestamp AND b.Date<'2014-04-28 11:21:02'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<103 AND p.CommentCount>3 AND p.CommentCount<29 AND u.DownVotes>139 AND u.DownVotes<1732 AND v.CreationDate>'2012-12-27 15:01:24'::timestamp AND v.CreationDate<'2014-04-06 09:40:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-10-14 22:52:52'::timestamp AND b.Date<'2014-08-26 02:25:01'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<185 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>622 AND u.DownVotes<1444 AND v.CreationDate>'2009-09-21 15:59:21'::timestamp AND v.CreationDate<'2013-02-19 12:20:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-01-12 10:39:46'::timestamp AND b.Date<'2013-02-11 00:08:51'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>81 AND p.Score<130 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>642 AND u.DownVotes<1600 AND v.CreationDate>'2010-11-03 00:29:17'::timestamp AND v.CreationDate<'2012-07-22 16:52:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-08-21 09:41:56'::timestamp AND b.Date<'2013-02-13 13:14:39'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<125 AND p.CommentCount>16 AND p.CommentCount<41 AND u.DownVotes>42 AND u.DownVotes<781 AND v.CreationDate>'2010-09-07 21:06:02'::timestamp AND v.CreationDate<'2012-02-04 14:14:31'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2012-06-29 12:55:18'::timestamp AND b.Date<'2013-06-12 03:41:26'::timestamp;

/*+ NestLoop(u v p b)
 HashJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<19 AND p.CommentCount>11 AND p.CommentCount<18 AND u.DownVotes>343 AND u.DownVotes<462 AND v.CreationDate>'2011-04-28 01:15:35'::timestamp AND v.CreationDate<'2012-08-23 03:15:52'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-04-29 02:25:46'::timestamp AND b.Date<'2013-10-26 14:31:39'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<145 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>11 AND u.DownVotes<1798 AND v.CreationDate>'2009-04-02 21:37:52'::timestamp AND v.CreationDate<'2012-07-22 07:09:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-08-29 21:42:26'::timestamp AND b.Date<'2010-11-21 15:36:15'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<95 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>323 AND u.DownVotes<1161 AND v.CreationDate>'2010-09-11 10:26:48'::timestamp AND v.CreationDate<'2014-08-03 17:09:47'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-12-16 22:49:25'::timestamp AND b.Date<'2013-05-04 17:22:58'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<179 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>388 AND u.DownVotes<1630 AND v.CreationDate>'2011-12-01 00:29:35'::timestamp AND v.CreationDate<'2013-11-11 19:46:49'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2010-10-17 05:32:45'::timestamp AND b.Date<'2014-08-20 17:13:54'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<106 AND p.CommentCount>31 AND p.CommentCount<44 AND u.DownVotes>10 AND u.DownVotes<1111 AND v.CreationDate>'2010-08-02 22:40:58'::timestamp AND v.CreationDate<'2014-05-02 11:25:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-05-16 08:12:20'::timestamp AND b.Date<'2014-07-14 02:55:36'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<114 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>375 AND u.DownVotes<1845 AND v.CreationDate>'2009-08-04 21:41:16'::timestamp AND v.CreationDate<'2013-04-04 13:37:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-07-30 03:14:40'::timestamp AND b.Date<'2014-04-02 15:20:11'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<173 AND p.CommentCount>2 AND p.CommentCount<14 AND u.DownVotes>745 AND u.DownVotes<1761 AND v.CreationDate>'2010-06-26 06:10:35'::timestamp AND v.CreationDate<'2013-11-05 06:05:05'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2011-06-21 08:15:24'::timestamp AND b.Date<'2012-05-30 08:20:33'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>65 AND p.Score<76 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>193 AND u.DownVotes<845 AND v.CreationDate>'2009-04-22 21:41:27'::timestamp AND v.CreationDate<'2012-01-27 00:38:08'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2012-08-05 01:18:45'::timestamp AND b.Date<'2014-04-20 07:25:56'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<34 AND p.CommentCount>15 AND p.CommentCount<38 AND u.DownVotes>744 AND u.DownVotes<1560 AND v.CreationDate>'2010-12-09 01:24:21'::timestamp AND v.CreationDate<'2014-08-12 15:12:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-03-17 22:50:49'::timestamp AND b.Date<'2014-08-29 21:10:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<188 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>178 AND u.DownVotes<1611 AND v.CreationDate>'2009-07-19 05:56:29'::timestamp AND v.CreationDate<'2011-06-20 12:57:56'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-06-09 13:50:49'::timestamp AND b.Date<'2013-01-23 02:31:19'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<105 AND p.CommentCount>15 AND p.CommentCount<29 AND u.DownVotes>121 AND u.DownVotes<1097 AND v.CreationDate>'2010-05-19 02:01:15'::timestamp AND v.CreationDate<'2013-12-01 05:05:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-01-29 14:18:43'::timestamp AND b.Date<'2012-10-09 18:25:55'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<186 AND p.CommentCount>18 AND p.CommentCount<30 AND u.DownVotes>190 AND u.DownVotes<548 AND v.CreationDate>'2009-08-24 03:57:25'::timestamp AND v.CreationDate<'2012-04-22 19:18:43'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-08-15 05:36:07'::timestamp AND b.Date<'2012-08-29 15:50:56'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<158 AND p.CommentCount>1 AND p.CommentCount<13 AND u.DownVotes>128 AND u.DownVotes<1697 AND v.CreationDate>'2009-11-06 07:27:03'::timestamp AND v.CreationDate<'2013-06-26 22:26:32'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-03-18 12:10:24'::timestamp AND b.Date<'2011-12-14 09:51:24'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<175 AND p.CommentCount>8 AND p.CommentCount<33 AND u.DownVotes>23 AND u.DownVotes<480 AND v.CreationDate>'2012-01-21 13:19:46'::timestamp AND v.CreationDate<'2012-10-10 04:16:14'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-12-12 08:52:05'::timestamp AND b.Date<'2013-02-11 10:40:08'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<64 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>52 AND u.DownVotes<1324 AND v.CreationDate>'2009-03-19 07:29:03'::timestamp AND v.CreationDate<'2013-10-02 18:45:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-03-16 21:12:33'::timestamp AND b.Date<'2013-03-23 21:30:48'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<136 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>44 AND u.DownVotes<1806 AND v.CreationDate>'2011-07-06 05:03:17'::timestamp AND v.CreationDate<'2014-02-04 12:36:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-12-09 19:25:07'::timestamp AND b.Date<'2013-10-20 11:14:28'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<165 AND p.CommentCount>7 AND p.CommentCount<12 AND u.DownVotes>105 AND u.DownVotes<1832 AND v.CreationDate>'2009-06-17 23:40:49'::timestamp AND v.CreationDate<'2014-02-16 10:27:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-06-30 05:07:13'::timestamp AND b.Date<'2012-12-03 12:37:50'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<108 AND p.CommentCount>11 AND p.CommentCount<33 AND u.DownVotes>642 AND u.DownVotes<1275 AND v.CreationDate>'2010-04-16 22:17:23'::timestamp AND v.CreationDate<'2011-06-18 10:40:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-07-18 19:34:29'::timestamp AND b.Date<'2012-01-04 10:37:43'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<37 AND p.CommentCount>4 AND p.CommentCount<22 AND u.DownVotes>80 AND u.DownVotes<1867 AND v.CreationDate>'2012-05-31 14:00:48'::timestamp AND v.CreationDate<'2012-07-12 08:06:20'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2013-01-31 21:53:25'::timestamp AND b.Date<'2013-10-23 21:00:18'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<96 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>528 AND u.DownVotes<1411 AND v.CreationDate>'2009-05-21 21:30:04'::timestamp AND v.CreationDate<'2011-01-26 20:53:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-07-18 04:42:36'::timestamp AND b.Date<'2012-10-05 18:55:57'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<53 AND p.CommentCount>11 AND p.CommentCount<42 AND u.DownVotes>698 AND u.DownVotes<1444 AND v.CreationDate>'2010-10-16 19:12:06'::timestamp AND v.CreationDate<'2011-10-17 02:27:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-01-31 22:45:35'::timestamp AND b.Date<'2014-01-20 19:13:20'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>114 AND p.Score<191 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>117 AND u.DownVotes<1699 AND v.CreationDate>'2010-03-31 21:45:53'::timestamp AND v.CreationDate<'2014-02-13 07:27:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-03-09 09:13:49'::timestamp AND b.Date<'2013-10-23 17:11:08'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<150 AND p.CommentCount>7 AND p.CommentCount<32 AND u.DownVotes>181 AND u.DownVotes<746 AND v.CreationDate>'2011-04-16 01:18:42'::timestamp AND v.CreationDate<'2011-12-07 20:41:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-09-16 13:49:38'::timestamp AND b.Date<'2011-08-23 22:36:42'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<169 AND p.CommentCount>8 AND p.CommentCount<11 AND u.DownVotes>680 AND u.DownVotes<1887 AND v.CreationDate>'2011-07-08 07:49:06'::timestamp AND v.CreationDate<'2013-05-14 23:18:31'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-07-31 08:05:16'::timestamp AND b.Date<'2013-02-15 00:57:58'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<29 AND p.CommentCount>5 AND p.CommentCount<41 AND u.DownVotes>143 AND u.DownVotes<1478 AND v.CreationDate>'2013-03-02 13:46:43'::timestamp AND v.CreationDate<'2014-08-25 15:13:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-07-28 05:58:53'::timestamp AND b.Date<'2012-06-12 08:56:53'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<175 AND p.CommentCount>13 AND p.CommentCount<23 AND u.DownVotes>78 AND u.DownVotes<1060 AND v.CreationDate>'2011-02-08 00:53:26'::timestamp AND v.CreationDate<'2013-01-31 22:56:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-02-04 00:34:25'::timestamp AND b.Date<'2014-07-14 09:22:15'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<7 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>316 AND u.DownVotes<797 AND v.CreationDate>'2010-04-19 09:02:27'::timestamp AND v.CreationDate<'2013-01-12 19:46:52'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-01-21 13:37:47'::timestamp AND b.Date<'2014-05-18 11:57:35'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<54 AND p.CommentCount>6 AND p.CommentCount<21 AND u.DownVotes>55 AND u.DownVotes<1434 AND v.CreationDate>'2009-09-20 10:46:54'::timestamp AND v.CreationDate<'2010-11-11 10:53:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-12-22 12:15:53'::timestamp AND b.Date<'2013-10-26 08:09:58'::timestamp;

/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<171 AND p.CommentCount>3 AND p.CommentCount<42 AND u.DownVotes>43 AND u.DownVotes<526 AND v.CreationDate>'2011-02-25 07:05:28'::timestamp AND v.CreationDate<'2013-11-06 04:38:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-08-13 19:25:48'::timestamp AND b.Date<'2012-10-27 11:23:49'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<135 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>232 AND u.DownVotes<1572 AND v.CreationDate>'2012-03-13 12:38:34'::timestamp AND v.CreationDate<'2012-06-08 14:18:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-09-03 07:59:11'::timestamp AND b.Date<'2013-09-26 06:13:08'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<76 AND p.CommentCount>4 AND p.CommentCount<39 AND u.DownVotes>313 AND u.DownVotes<1458 AND v.CreationDate>'2009-08-27 10:13:30'::timestamp AND v.CreationDate<'2014-03-15 16:19:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-07-21 07:59:21'::timestamp AND b.Date<'2013-02-26 21:32:45'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<114 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>747 AND u.DownVotes<1156 AND v.CreationDate>'2010-05-02 14:11:54'::timestamp AND v.CreationDate<'2013-03-04 10:09:51'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2013-09-11 18:56:24'::timestamp AND b.Date<'2013-12-11 00:57:35'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<154 AND p.CommentCount>3 AND p.CommentCount<11 AND u.DownVotes>302 AND u.DownVotes<751 AND v.CreationDate>'2009-12-17 04:27:08'::timestamp AND v.CreationDate<'2013-08-03 03:00:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-10-17 14:12:47'::timestamp AND b.Date<'2011-09-14 19:27:54'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<179 AND p.CommentCount>7 AND p.CommentCount<38 AND u.DownVotes>304 AND u.DownVotes<419 AND v.CreationDate>'2009-03-05 04:07:06'::timestamp AND v.CreationDate<'2011-06-01 09:33:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-04-21 00:27:26'::timestamp AND b.Date<'2013-07-02 22:51:28'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<9 AND p.CommentCount>9 AND p.CommentCount<36 AND u.DownVotes>547 AND u.DownVotes<1159 AND v.CreationDate>'2009-08-10 15:11:38'::timestamp AND v.CreationDate<'2013-07-25 05:54:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-05-10 02:07:06'::timestamp AND b.Date<'2014-05-04 08:02:54'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<24 AND p.CommentCount>12 AND p.CommentCount<36 AND u.DownVotes>624 AND u.DownVotes<1853 AND v.CreationDate>'2009-05-13 09:13:35'::timestamp AND v.CreationDate<'2014-07-08 13:52:39'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-09-09 20:45:02'::timestamp AND b.Date<'2014-03-07 13:22:04'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<51 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>463 AND u.DownVotes<1856 AND v.CreationDate>'2009-12-04 20:27:29'::timestamp AND v.CreationDate<'2012-07-23 17:18:08'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-02-29 12:43:29'::timestamp AND b.Date<'2012-09-13 09:42:58'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>98 AND p.Score<170 AND p.CommentCount>6 AND p.CommentCount<16 AND u.DownVotes>113 AND u.DownVotes<511 AND v.CreationDate>'2011-06-04 09:43:12'::timestamp AND v.CreationDate<'2014-03-08 17:07:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-02-01 00:16:21'::timestamp AND b.Date<'2013-01-17 02:35:58'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<101 AND p.CommentCount>17 AND p.CommentCount<22 AND u.DownVotes>3 AND u.DownVotes<1566 AND v.CreationDate>'2010-10-05 01:53:18'::timestamp AND v.CreationDate<'2011-05-05 19:33:48'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-01-02 14:51:08'::timestamp AND b.Date<'2014-03-12 00:57:23'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<18 AND p.CommentCount>3 AND p.CommentCount<42 AND u.DownVotes>5 AND u.DownVotes<1659 AND v.CreationDate>'2010-12-10 22:45:28'::timestamp AND v.CreationDate<'2013-06-15 13:38:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-12-06 07:37:18'::timestamp AND b.Date<'2011-03-18 13:22:46'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<94 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>154 AND u.DownVotes<438 AND v.CreationDate>'2010-06-11 15:48:08'::timestamp AND v.CreationDate<'2011-07-23 22:24:59'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2010-08-25 15:43:54'::timestamp AND b.Date<'2012-06-23 18:32:44'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<30 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>628 AND u.DownVotes<825 AND v.CreationDate>'2010-06-17 16:59:41'::timestamp AND v.CreationDate<'2013-04-06 05:19:39'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-02-18 07:55:34'::timestamp AND b.Date<'2014-01-05 13:32:46'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>68 AND p.Score<159 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>306 AND u.DownVotes<966 AND v.CreationDate>'2010-12-04 01:46:33'::timestamp AND v.CreationDate<'2012-11-18 19:21:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-02-27 10:15:59'::timestamp AND b.Date<'2013-09-15 16:28:22'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<187 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>417 AND u.DownVotes<1086 AND v.CreationDate>'2012-06-01 08:56:49'::timestamp AND v.CreationDate<'2014-09-03 10:55:06'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2013-02-23 06:58:20'::timestamp AND b.Date<'2013-10-21 16:41:11'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<187 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>298 AND u.DownVotes<1547 AND v.CreationDate>'2009-08-15 03:26:34'::timestamp AND v.CreationDate<'2012-06-14 19:47:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-07-20 03:58:40'::timestamp AND b.Date<'2012-01-12 09:17:21'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<187 AND p.CommentCount>10 AND p.CommentCount<35 AND u.DownVotes>117 AND u.DownVotes<1019 AND v.CreationDate>'2013-05-26 23:16:47'::timestamp AND v.CreationDate<'2013-09-04 05:30:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-01-04 17:28:36'::timestamp AND b.Date<'2012-12-08 18:22:49'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<53 AND p.CommentCount>11 AND p.CommentCount<14 AND u.DownVotes>157 AND u.DownVotes<883 AND v.CreationDate>'2009-08-11 15:20:08'::timestamp AND v.CreationDate<'2014-03-27 00:32:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-02-16 01:38:39'::timestamp AND b.Date<'2014-08-29 05:36:08'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<53 AND p.CommentCount>4 AND p.CommentCount<9 AND u.DownVotes>446 AND u.DownVotes<1104 AND v.CreationDate>'2009-10-01 05:50:34'::timestamp AND v.CreationDate<'2014-08-26 02:32:48'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-01-31 23:24:20'::timestamp AND b.Date<'2012-11-29 19:46:30'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<168 AND p.CommentCount>21 AND p.CommentCount<27 AND u.DownVotes>33 AND u.DownVotes<612 AND v.CreationDate>'2012-10-26 19:53:05'::timestamp AND v.CreationDate<'2013-12-11 02:08:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-04-08 18:29:26'::timestamp AND b.Date<'2012-08-10 07:52:01'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<184 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>229 AND u.DownVotes<643 AND v.CreationDate>'2009-12-23 05:54:02'::timestamp AND v.CreationDate<'2013-08-31 22:01:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-11-04 04:30:48'::timestamp AND b.Date<'2012-10-08 17:58:03'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<111 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>47 AND u.DownVotes<1681 AND v.CreationDate>'2009-06-10 04:35:04'::timestamp AND v.CreationDate<'2011-12-18 07:50:17'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2012-08-30 18:09:17'::timestamp AND b.Date<'2014-09-07 08:29:37'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<45 AND p.CommentCount>14 AND p.CommentCount<43 AND u.DownVotes>272 AND u.DownVotes<1481 AND v.CreationDate>'2011-04-28 23:22:04'::timestamp AND v.CreationDate<'2012-08-01 14:47:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-05-19 12:53:00'::timestamp AND b.Date<'2011-09-27 22:17:27'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<139 AND p.CommentCount>13 AND p.CommentCount<33 AND u.DownVotes>714 AND u.DownVotes<967 AND v.CreationDate>'2011-01-14 12:37:41'::timestamp AND v.CreationDate<'2012-05-19 17:29:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-05-06 19:13:12'::timestamp AND b.Date<'2014-08-23 00:55:08'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<82 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>302 AND u.DownVotes<541 AND v.CreationDate>'2010-01-24 18:56:08'::timestamp AND v.CreationDate<'2014-01-24 23:11:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-01-15 21:37:42'::timestamp AND b.Date<'2013-02-14 06:24:24'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<40 AND p.CommentCount>34 AND p.CommentCount<41 AND u.DownVotes>92 AND u.DownVotes<839 AND v.CreationDate>'2012-03-05 08:58:07'::timestamp AND v.CreationDate<'2012-08-04 11:30:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-12-06 03:56:39'::timestamp AND b.Date<'2013-08-26 09:05:50'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<169 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>773 AND u.DownVotes<1170 AND v.CreationDate>'2012-07-03 00:50:01'::timestamp AND v.CreationDate<'2014-05-20 08:59:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-11-27 07:10:42'::timestamp AND b.Date<'2014-08-15 01:52:26'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>137 AND p.Score<144 AND p.CommentCount>1 AND p.CommentCount<14 AND u.DownVotes>83 AND u.DownVotes<1147 AND v.CreationDate>'2011-03-04 02:11:17'::timestamp AND v.CreationDate<'2012-08-19 22:14:46'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-12-15 13:11:54'::timestamp AND b.Date<'2011-11-19 19:18:54'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<160 AND p.CommentCount>15 AND p.CommentCount<22 AND u.DownVotes>354 AND u.DownVotes<1568 AND v.CreationDate>'2009-10-13 07:43:40'::timestamp AND v.CreationDate<'2013-02-06 17:50:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-12-19 16:03:37'::timestamp AND b.Date<'2011-09-21 04:57:01'::timestamp;

/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<50 AND p.CommentCount>13 AND p.CommentCount<40 AND u.DownVotes>770 AND u.DownVotes<1731 AND v.CreationDate>'2010-12-14 06:36:28'::timestamp AND v.CreationDate<'2013-12-14 22:03:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-10-16 14:26:50'::timestamp AND b.Date<'2013-12-23 07:31:19'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<56 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>442 AND u.DownVotes<1226 AND v.CreationDate>'2009-03-15 14:49:31'::timestamp AND v.CreationDate<'2013-06-21 16:37:17'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-08-06 07:16:06'::timestamp AND b.Date<'2014-07-07 23:35:28'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<128 AND p.CommentCount>6 AND p.CommentCount<15 AND u.DownVotes>656 AND u.DownVotes<1081 AND v.CreationDate>'2010-12-12 01:56:39'::timestamp AND v.CreationDate<'2014-04-10 02:18:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-12-10 21:23:03'::timestamp AND b.Date<'2014-02-14 20:10:24'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<126 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>617 AND u.DownVotes<1724 AND v.CreationDate>'2013-04-27 20:39:00'::timestamp AND v.CreationDate<'2014-05-13 01:27:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-10-07 21:04:57'::timestamp AND b.Date<'2013-12-12 10:57:10'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<15 AND p.CommentCount>4 AND p.CommentCount<23 AND u.DownVotes>727 AND u.DownVotes<1469 AND v.CreationDate>'2009-02-18 18:04:39'::timestamp AND v.CreationDate<'2011-11-23 20:45:04'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-10-27 13:57:37'::timestamp AND b.Date<'2013-06-04 04:56:30'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<59 AND p.CommentCount>17 AND p.CommentCount<22 AND u.DownVotes>647 AND u.DownVotes<1346 AND v.CreationDate>'2009-12-03 04:02:17'::timestamp AND v.CreationDate<'2011-03-04 16:31:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-18 08:21:25'::timestamp AND b.Date<'2011-05-04 22:18:29'::timestamp;

/*+ NestLoop(p v u b)
 NestLoop(p v u)
 MergeJoin(p v)
 IndexScan(p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((((p v) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<132 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>745 AND u.DownVotes<1385 AND v.CreationDate>'2009-10-29 21:26:57'::timestamp AND v.CreationDate<'2011-12-06 06:55:09'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-07-04 14:33:17'::timestamp AND b.Date<'2013-05-02 05:05:28'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<99 AND p.CommentCount>9 AND p.CommentCount<29 AND u.DownVotes>593 AND u.DownVotes<1462 AND v.CreationDate>'2010-01-01 06:13:34'::timestamp AND v.CreationDate<'2011-12-29 04:02:25'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2011-07-14 10:22:15'::timestamp AND b.Date<'2014-03-31 00:22:16'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<112 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>343 AND u.DownVotes<1022 AND v.CreationDate>'2010-06-18 23:12:17'::timestamp AND v.CreationDate<'2011-09-24 12:44:39'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-10-26 13:32:57'::timestamp AND b.Date<'2013-11-26 16:46:39'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<116 AND p.CommentCount>13 AND p.CommentCount<34 AND u.DownVotes>703 AND u.DownVotes<1497 AND v.CreationDate>'2009-06-19 21:53:35'::timestamp AND v.CreationDate<'2012-09-29 14:28:12'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-12-15 01:56:53'::timestamp AND b.Date<'2014-07-14 03:08:56'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<130 AND p.CommentCount>18 AND p.CommentCount<31 AND u.DownVotes>113 AND u.DownVotes<866 AND v.CreationDate>'2010-01-02 22:40:45'::timestamp AND v.CreationDate<'2013-05-15 15:40:43'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-02-21 08:57:00'::timestamp AND b.Date<'2014-01-28 18:44:08'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<36 AND p.CommentCount>1 AND p.CommentCount<14 AND u.DownVotes>320 AND u.DownVotes<1692 AND v.CreationDate>'2010-02-16 21:25:28'::timestamp AND v.CreationDate<'2011-08-28 15:34:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-04-14 05:04:10'::timestamp AND b.Date<'2013-09-20 01:10:17'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<187 AND p.CommentCount>1 AND p.CommentCount<42 AND u.DownVotes>34 AND u.DownVotes<1310 AND v.CreationDate>'2010-12-04 18:55:20'::timestamp AND v.CreationDate<'2013-11-27 00:46:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-09-05 22:52:25'::timestamp AND b.Date<'2013-08-19 15:22:32'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<135 AND p.CommentCount>0 AND p.CommentCount<10 AND u.DownVotes>169 AND u.DownVotes<1830 AND v.CreationDate>'2009-09-04 13:00:32'::timestamp AND v.CreationDate<'2011-12-15 17:00:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2010-10-21 14:41:34'::timestamp AND b.Date<'2014-05-01 07:00:16'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<115 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>320 AND u.DownVotes<1804 AND v.CreationDate>'2011-05-01 06:30:29'::timestamp AND v.CreationDate<'2012-05-21 09:11:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-06-22 18:42:29'::timestamp AND b.Date<'2011-12-26 12:51:04'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>72 AND p.Score<151 AND p.CommentCount>5 AND p.CommentCount<35 AND u.DownVotes>274 AND u.DownVotes<1775 AND v.CreationDate>'2013-07-27 00:32:08'::timestamp AND v.CreationDate<'2014-08-31 12:12:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-09-10 12:25:24'::timestamp AND b.Date<'2014-04-16 21:23:21'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<109 AND p.CommentCount>4 AND p.CommentCount<38 AND u.DownVotes>18 AND u.DownVotes<985 AND v.CreationDate>'2009-05-05 01:12:06'::timestamp AND v.CreationDate<'2014-01-29 14:03:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-11-21 00:41:10'::timestamp AND b.Date<'2013-10-17 16:40:51'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<122 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>194 AND u.DownVotes<781 AND v.CreationDate>'2009-10-08 01:43:23'::timestamp AND v.CreationDate<'2013-10-06 00:55:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-11-21 17:25:43'::timestamp AND b.Date<'2013-08-23 19:15:43'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<109 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>374 AND u.DownVotes<416 AND v.CreationDate>'2011-05-16 23:53:53'::timestamp AND v.CreationDate<'2013-01-08 22:36:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-06-29 00:03:17'::timestamp AND b.Date<'2013-05-18 19:50:29'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<136 AND p.CommentCount>14 AND p.CommentCount<40 AND u.DownVotes>485 AND u.DownVotes<1492 AND v.CreationDate>'2009-11-06 23:20:36'::timestamp AND v.CreationDate<'2013-08-11 03:12:01'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2010-12-19 11:14:30'::timestamp AND b.Date<'2012-08-03 23:52:53'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<85 AND p.CommentCount>19 AND p.CommentCount<26 AND u.DownVotes>255 AND u.DownVotes<1258 AND v.CreationDate>'2010-04-03 03:49:56'::timestamp AND v.CreationDate<'2013-02-20 02:49:31'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-12-06 03:45:29'::timestamp AND b.Date<'2014-07-04 10:16:42'::timestamp;

/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<117 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>63 AND u.DownVotes<1796 AND v.CreationDate>'2013-09-13 00:43:49'::timestamp AND v.CreationDate<'2013-10-04 19:18:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-07-21 06:22:57'::timestamp AND b.Date<'2014-02-01 19:12:23'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<161 AND p.CommentCount>13 AND p.CommentCount<18 AND u.DownVotes>98 AND u.DownVotes<367 AND v.CreationDate>'2013-07-17 12:00:49'::timestamp AND v.CreationDate<'2014-03-15 18:52:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-06-25 23:33:45'::timestamp AND b.Date<'2014-07-12 17:42:21'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<110 AND p.CommentCount>1 AND p.CommentCount<39 AND u.DownVotes>554 AND u.DownVotes<1514 AND v.CreationDate>'2010-03-08 14:46:28'::timestamp AND v.CreationDate<'2012-11-02 06:39:40'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2012-06-08 04:18:49'::timestamp AND b.Date<'2012-08-19 12:05:43'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<100 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>579 AND u.DownVotes<1292 AND v.CreationDate>'2014-01-15 02:21:28'::timestamp AND v.CreationDate<'2014-08-31 03:50:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-11-23 10:01:00'::timestamp AND b.Date<'2013-06-12 21:27:21'::timestamp;

/*+ HashJoin(b v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<176 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>324 AND u.DownVotes<1828 AND v.CreationDate>'2009-04-30 06:54:57'::timestamp AND v.CreationDate<'2014-05-10 19:29:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-04-18 08:58:31'::timestamp AND b.Date<'2012-08-02 05:46:43'::timestamp;

/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>95 AND p.Score<118 AND p.CommentCount>13 AND p.CommentCount<16 AND u.DownVotes>117 AND u.DownVotes<272 AND v.CreationDate>'2010-09-25 07:47:38'::timestamp AND v.CreationDate<'2014-09-01 08:14:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-08 18:22:35'::timestamp AND b.Date<'2013-07-24 10:54:12'::timestamp;

/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<136 AND p.CommentCount>4 AND p.CommentCount<30 AND u.DownVotes>680 AND u.DownVotes<1340 AND v.CreationDate>'2011-04-15 07:56:06'::timestamp AND v.CreationDate<'2014-06-29 21:45:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-10-19 05:50:59'::timestamp AND b.Date<'2014-04-22 19:55:30'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<70 AND p.CommentCount>11 AND p.CommentCount<26 AND u.DownVotes>102 AND u.DownVotes<567 AND v.CreationDate>'2010-01-09 20:46:47'::timestamp AND v.CreationDate<'2014-04-24 18:51:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-08-28 12:19:21'::timestamp AND b.Date<'2011-09-16 01:31:18'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<25 AND p.CommentCount>4 AND p.CommentCount<41 AND u.DownVotes>326 AND u.DownVotes<1790 AND v.CreationDate>'2011-06-30 01:16:33'::timestamp AND v.CreationDate<'2011-11-18 06:29:54'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-08-04 03:04:45'::timestamp AND b.Date<'2013-12-23 19:54:51'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<18 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>135 AND u.DownVotes<927 AND v.CreationDate>'2011-09-07 11:47:42'::timestamp AND v.CreationDate<'2014-05-22 04:23:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2012-09-07 10:32:50'::timestamp AND b.Date<'2014-09-08 21:24:00'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<53 AND p.CommentCount>13 AND p.CommentCount<18 AND u.DownVotes>627 AND u.DownVotes<1592 AND v.CreationDate>'2013-03-29 02:38:11'::timestamp AND v.CreationDate<'2014-03-10 13:22:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-01-17 00:46:54'::timestamp AND b.Date<'2014-06-07 21:05:08'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<90 AND p.CommentCount>11 AND p.CommentCount<32 AND u.DownVotes>184 AND u.DownVotes<1274 AND v.CreationDate>'2010-03-14 17:31:21'::timestamp AND v.CreationDate<'2012-08-06 13:17:58'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-12-29 06:28:23'::timestamp AND b.Date<'2014-08-09 22:52:08'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<119 AND p.CommentCount>2 AND p.CommentCount<5 AND u.DownVotes>193 AND u.DownVotes<1384 AND v.CreationDate>'2009-07-28 05:38:03'::timestamp AND v.CreationDate<'2011-06-07 14:34:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-04-18 18:17:07'::timestamp AND b.Date<'2013-09-28 07:34:07'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<133 AND p.CommentCount>14 AND p.CommentCount<41 AND u.DownVotes>717 AND u.DownVotes<1345 AND v.CreationDate>'2010-09-01 01:11:38'::timestamp AND v.CreationDate<'2013-07-19 15:11:27'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-10-01 17:24:45'::timestamp AND b.Date<'2011-07-25 09:32:56'::timestamp;

/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<61 AND p.CommentCount>3 AND p.CommentCount<18 AND u.DownVotes>204 AND u.DownVotes<1812 AND v.CreationDate>'2013-01-21 06:47:52'::timestamp AND v.CreationDate<'2013-05-22 10:15:06'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2012-02-23 07:36:03'::timestamp AND b.Date<'2014-05-13 16:47:26'::timestamp;

/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<178 AND p.CommentCount>18 AND p.CommentCount<24 AND u.DownVotes>597 AND u.DownVotes<1552 AND v.CreationDate>'2010-10-15 05:13:07'::timestamp AND v.CreationDate<'2012-12-04 08:06:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-25 12:28:17'::timestamp AND b.Date<'2013-01-08 23:34:51'::timestamp;

