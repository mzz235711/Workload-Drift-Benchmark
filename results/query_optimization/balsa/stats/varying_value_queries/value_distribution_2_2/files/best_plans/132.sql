/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<83 AND p.CommentCount>2 AND p.CommentCount<36 AND u.DownVotes>344 AND u.DownVotes<880 AND v.CreationDate>'2009-05-23 08:03:41'::timestamp AND v.CreationDate<'2013-10-09 13:18:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-04-17 21:49:46'::timestamp AND b.Date<'2013-12-08 13:43:31'::timestamp;

