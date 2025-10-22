/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<50 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>270 AND u.DownVotes<861 AND v.CreationDate>'2010-01-24 16:21:17'::timestamp AND v.CreationDate<'2011-10-27 23:06:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-01-13 03:06:57'::timestamp AND b.Date<'2013-08-14 18:41:09'::timestamp;

