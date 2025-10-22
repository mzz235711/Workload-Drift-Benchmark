/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<89 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>344 AND u.DownVotes<683 AND v.CreationDate>'2012-12-06 20:22:29'::timestamp AND v.CreationDate<'2014-08-13 04:23:02'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-03-09 21:27:03'::timestamp AND b.Date<'2013-11-18 20:09:18'::timestamp;

