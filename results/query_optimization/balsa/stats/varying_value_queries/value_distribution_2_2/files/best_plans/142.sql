/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<139 AND p.CommentCount>0 AND p.CommentCount<9 AND u.DownVotes>27 AND u.DownVotes<812 AND v.CreationDate>'2009-07-06 12:09:59'::timestamp AND v.CreationDate<'2011-08-23 20:47:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2014-01-03 01:41:43'::timestamp AND b.Date<'2014-03-17 23:22:02'::timestamp;

