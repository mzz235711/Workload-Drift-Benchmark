/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<46 AND p.CommentCount>2 AND p.CommentCount<20 AND u.DownVotes>325 AND u.DownVotes<853 AND v.CreationDate>'2012-11-17 21:25:03'::timestamp AND v.CreationDate<'2014-06-21 22:18:23'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-11-01 20:25:15'::timestamp AND b.Date<'2011-11-26 14:28:30'::timestamp;

