/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<37 AND p.CommentCount>12 AND p.CommentCount<35 AND u.DownVotes>362 AND u.DownVotes<860 AND v.CreationDate>'2011-10-06 02:43:01'::timestamp AND v.CreationDate<'2012-01-13 03:45:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-10-06 03:54:07'::timestamp AND b.Date<'2012-11-08 08:08:29'::timestamp;

