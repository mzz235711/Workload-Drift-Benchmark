/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<170 AND p.CommentCount>2 AND p.CommentCount<34 AND u.DownVotes>314 AND u.DownVotes<500 AND v.CreationDate>'2011-06-01 05:50:40'::timestamp AND v.CreationDate<'2014-04-18 19:26:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2010-12-08 17:56:42'::timestamp AND b.Date<'2012-09-16 13:14:15'::timestamp;

