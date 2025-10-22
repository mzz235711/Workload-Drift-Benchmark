/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<136 AND p.CommentCount>2 AND p.CommentCount<6 AND u.DownVotes>83 AND u.DownVotes<783 AND v.CreationDate>'2011-07-10 15:12:52'::timestamp AND v.CreationDate<'2012-06-01 00:42:17'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2010-11-21 22:51:56'::timestamp AND b.Date<'2013-06-05 15:20:59'::timestamp;

