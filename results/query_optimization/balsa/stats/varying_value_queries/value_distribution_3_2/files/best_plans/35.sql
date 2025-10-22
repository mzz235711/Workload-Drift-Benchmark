/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<13 AND p.CommentCount>5 AND p.CommentCount<11 AND u.DownVotes>436 AND u.DownVotes<1293 AND v.CreationDate>'2011-12-09 08:29:54'::timestamp AND v.CreationDate<'2014-08-12 03:50:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-05-21 19:22:07'::timestamp AND b.Date<'2011-09-13 11:43:53'::timestamp;

