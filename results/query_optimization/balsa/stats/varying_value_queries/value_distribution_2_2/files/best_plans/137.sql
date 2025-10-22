/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<157 AND p.CommentCount>14 AND p.CommentCount<43 AND u.DownVotes>568 AND u.DownVotes<1498 AND v.CreationDate>'2010-10-15 11:42:11'::timestamp AND v.CreationDate<'2014-02-15 06:46:18'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-09-03 16:21:35'::timestamp AND b.Date<'2012-04-11 12:15:37'::timestamp;

