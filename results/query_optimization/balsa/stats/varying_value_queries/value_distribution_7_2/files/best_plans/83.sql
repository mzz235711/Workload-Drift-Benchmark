/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<136 AND p.CommentCount>14 AND p.CommentCount<40 AND u.DownVotes>485 AND u.DownVotes<1492 AND v.CreationDate>'2009-11-06 23:20:36'::timestamp AND v.CreationDate<'2013-08-11 03:12:01'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2010-12-19 11:14:30'::timestamp AND b.Date<'2012-08-03 23:52:53'::timestamp;

