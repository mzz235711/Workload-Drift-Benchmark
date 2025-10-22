/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<28 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>527 AND u.DownVotes<1906 AND v.CreationDate>'2014-01-03 09:54:58'::timestamp AND v.CreationDate<'2014-06-25 16:51:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-08-05 12:36:13'::timestamp AND b.Date<'2012-04-09 14:24:59'::timestamp;

