/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<27 AND p.CommentCount>4 AND p.CommentCount<15 AND u.DownVotes>329 AND u.DownVotes<961 AND v.CreationDate>'2009-03-17 09:02:12'::timestamp AND v.CreationDate<'2011-12-08 03:17:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-03-27 10:14:38'::timestamp AND b.Date<'2013-07-16 05:54:16'::timestamp;

