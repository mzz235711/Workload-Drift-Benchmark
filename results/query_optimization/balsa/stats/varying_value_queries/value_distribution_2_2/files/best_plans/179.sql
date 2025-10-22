/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<109 AND p.CommentCount>8 AND p.CommentCount<21 AND u.DownVotes>273 AND u.DownVotes<448 AND v.CreationDate>'2010-03-18 09:45:42'::timestamp AND v.CreationDate<'2013-10-21 01:16:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2010-11-09 14:38:35'::timestamp AND b.Date<'2013-08-09 16:48:59'::timestamp;

