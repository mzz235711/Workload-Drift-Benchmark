/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<139 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>753 AND u.DownVotes<1611 AND v.CreationDate>'2010-01-11 04:02:30'::timestamp AND v.CreationDate<'2012-01-12 18:47:23'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2012-09-29 03:51:06'::timestamp AND b.Date<'2013-04-05 23:05:02'::timestamp;

