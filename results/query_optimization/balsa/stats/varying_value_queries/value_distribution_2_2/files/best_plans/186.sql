/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<91 AND p.CommentCount>4 AND p.CommentCount<38 AND u.DownVotes>286 AND u.DownVotes<1874 AND v.CreationDate>'2010-12-03 22:47:33'::timestamp AND v.CreationDate<'2014-07-08 04:08:02'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2010-10-29 04:43:42'::timestamp AND b.Date<'2014-02-11 09:18:33'::timestamp;

