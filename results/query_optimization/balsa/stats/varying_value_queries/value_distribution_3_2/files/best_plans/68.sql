/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<41 AND p.CommentCount>7 AND p.CommentCount<39 AND u.DownVotes>296 AND u.DownVotes<1772 AND v.CreationDate>'2010-06-28 23:18:53'::timestamp AND v.CreationDate<'2012-04-14 12:41:17'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2012-08-26 02:47:36'::timestamp AND b.Date<'2014-05-27 21:37:38'::timestamp;

