/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<176 AND p.CommentCount>9 AND p.CommentCount<32 AND u.DownVotes>412 AND u.DownVotes<1732 AND v.CreationDate>'2009-08-21 15:36:20'::timestamp AND v.CreationDate<'2012-01-11 08:29:48'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-04-09 12:21:43'::timestamp AND b.Date<'2014-09-13 06:15:01'::timestamp;

