/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>95 AND p.Score<175 AND p.CommentCount>1 AND p.CommentCount<28 AND u.DownVotes>472 AND u.DownVotes<1884 AND v.CreationDate>'2013-01-22 23:36:26'::timestamp AND v.CreationDate<'2013-05-18 02:12:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-03-10 01:51:30'::timestamp AND b.Date<'2012-08-06 21:41:38'::timestamp;

