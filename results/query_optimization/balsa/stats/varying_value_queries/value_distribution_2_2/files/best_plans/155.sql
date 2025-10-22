/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<181 AND p.CommentCount>2 AND p.CommentCount<11 AND u.DownVotes>360 AND u.DownVotes<1131 AND v.CreationDate>'2009-07-20 09:01:31'::timestamp AND v.CreationDate<'2011-04-12 02:05:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-01-11 19:50:41'::timestamp AND b.Date<'2012-12-05 05:32:30'::timestamp;

