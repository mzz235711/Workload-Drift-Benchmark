/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<68 AND p.CommentCount>4 AND p.CommentCount<20 AND u.DownVotes>184 AND u.DownVotes<1439 AND v.CreationDate>'2009-09-28 06:44:08'::timestamp AND v.CreationDate<'2012-03-29 23:39:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-01-28 05:49:04'::timestamp AND b.Date<'2012-02-06 12:31:59'::timestamp;

