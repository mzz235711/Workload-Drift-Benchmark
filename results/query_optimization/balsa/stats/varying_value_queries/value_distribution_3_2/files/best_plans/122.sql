/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<89 AND p.CommentCount>4 AND p.CommentCount<22 AND u.DownVotes>777 AND u.DownVotes<1626 AND v.CreationDate>'2009-02-15 22:37:12'::timestamp AND v.CreationDate<'2014-08-08 19:29:20'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-08-09 11:48:34'::timestamp AND b.Date<'2013-02-23 02:54:21'::timestamp;

