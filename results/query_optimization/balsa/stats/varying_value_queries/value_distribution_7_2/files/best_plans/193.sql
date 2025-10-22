/*+ NestLoop(u v p b)
 HashJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<19 AND p.CommentCount>11 AND p.CommentCount<18 AND u.DownVotes>343 AND u.DownVotes<462 AND v.CreationDate>'2011-04-28 01:15:35'::timestamp AND v.CreationDate<'2012-08-23 03:15:52'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-04-29 02:25:46'::timestamp AND b.Date<'2013-10-26 14:31:39'::timestamp;

