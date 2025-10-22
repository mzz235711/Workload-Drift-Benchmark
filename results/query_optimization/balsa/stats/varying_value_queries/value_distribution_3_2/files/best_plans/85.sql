/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<51 AND p.CommentCount>9 AND p.CommentCount<14 AND u.DownVotes>98 AND u.DownVotes<1420 AND v.CreationDate>'2011-05-29 14:18:35'::timestamp AND v.CreationDate<'2011-12-23 05:25:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-11-16 06:05:03'::timestamp AND b.Date<'2013-06-11 19:51:06'::timestamp;

