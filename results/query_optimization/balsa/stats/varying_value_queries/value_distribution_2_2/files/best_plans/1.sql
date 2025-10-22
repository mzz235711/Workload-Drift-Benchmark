/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<131 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>616 AND u.DownVotes<1403 AND v.CreationDate>'2009-10-10 19:32:13'::timestamp AND v.CreationDate<'2011-01-27 21:27:35'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-03-25 06:17:35'::timestamp AND b.Date<'2013-05-07 06:41:27'::timestamp;

