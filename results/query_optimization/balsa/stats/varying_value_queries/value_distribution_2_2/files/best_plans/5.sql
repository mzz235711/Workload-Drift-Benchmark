/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<139 AND p.CommentCount>11 AND p.CommentCount<40 AND u.DownVotes>246 AND u.DownVotes<1461 AND v.CreationDate>'2009-07-19 12:16:05'::timestamp AND v.CreationDate<'2014-05-28 04:01:02'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2010-08-14 16:52:57'::timestamp AND b.Date<'2012-03-16 09:52:12'::timestamp;

