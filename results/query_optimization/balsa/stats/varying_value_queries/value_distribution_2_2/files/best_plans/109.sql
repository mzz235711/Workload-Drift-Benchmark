/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<71 AND p.CommentCount>16 AND p.CommentCount<23 AND u.DownVotes>185 AND u.DownVotes<1299 AND v.CreationDate>'2010-09-23 06:27:13'::timestamp AND v.CreationDate<'2012-03-08 03:59:32'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2010-10-19 22:46:43'::timestamp AND b.Date<'2013-01-21 05:13:15'::timestamp;

