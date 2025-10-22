/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<142 AND p.CommentCount>12 AND p.CommentCount<23 AND u.DownVotes>185 AND u.DownVotes<390 AND v.CreationDate>'2012-12-06 06:50:30'::timestamp AND v.CreationDate<'2013-06-29 19:22:36'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-11-15 19:02:53'::timestamp AND b.Date<'2014-04-08 10:21:06'::timestamp;

